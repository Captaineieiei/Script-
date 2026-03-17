#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
╔══════════════════════════════════════════╗
║   Discord Token Checker - Termux v4.0   ║
║   รันได้บน Termux & Pydroid 3           ║
║   🔥 เวอร์ชั่นโหดพิเศษ 🔥               ║
╚══════════════════════════════════════════╝
"""

import sys
import os
import re
import base64
import json
import time
import threading
import queue
from datetime import datetime
from concurrent.futures import ThreadPoolExecutor, as_completed

# ── ตรวจสอบ requests ──────────────────────────────────────────────────────────
try:
    import requests
except ImportError:
    print("\n[!] ไม่พบ requests กรุณารันคำสั่งนี้ก่อน:")
    print("    pip install requests\n")
    sys.exit(1)

# ─────────────────────────────────────────────────────────────────────────────
#  ANSI Colors & Styles (คงเดิม)
# ─────────────────────────────────────────────────────────────────────────────
class C:
    RESET   = '\033[0m'
    BOLD    = '\033[1m'
    DIM     = '\033[2m'
    UL      = '\033[4m'
    BLINK   = '\033[5m'
    REVERSE = '\033[7m'

    BLACK   = '\033[30m'
    RED     = '\033[91m'
    GREEN   = '\033[92m'
    YELLOW  = '\033[93m'
    BLUE    = '\033[94m'
    MAGENTA = '\033[95m'
    CYAN    = '\033[96m'
    WHITE   = '\033[97m'

    BG_BLACK  = '\033[40m'
    BG_RED    = '\033[41m'
    BG_GREEN  = '\033[42m'
    BG_YELLOW = '\033[43m'
    BG_BLUE   = '\033[44m'
    BG_MAGENTA= '\033[45m'
    BG_CYAN   = '\033[46m'
    BG_WHITE  = '\033[47m'

    @staticmethod
    def gradient(text: str) -> str:
        colors = ['\033[95m', '\033[94m', '\033[96m', '\033[94m', '\033[95m']
        out, i = '', 0
        for ch in text:
            if ch != ' ':
                out += colors[i % len(colors)] + ch
                i += 1
            else:
                out += ch
        return out + C.RESET
    
    @staticmethod
    def rainbow(text: str) -> str:
        """สายรุ้ง สุดโหด"""
        colors = ['\033[91m', '\033[93m', '\033[92m', '\033[96m', '\033[94m', '\033[95m']
        out = ''
        for i, ch in enumerate(text):
            out += colors[i % len(colors)] + ch
        return out + C.RESET
    
    @staticmethod
    def hacker(text: str) -> str:
        """สไตล์แฮกเกอร์ สุดโหด"""
        return f"{C.GREEN}{C.BLINK}{text}{C.RESET}"

def b(txt): return f"{C.BOLD}{txt}{C.RESET}"
def dim(txt): return f"{C.DIM}{txt}{C.RESET}"
def blink(txt): return f"{C.BLINK}{txt}{C.RESET}"

# ─────────────────────────────────────────────────────────────────────────────
#  Utility (คงเดิม + เพิ่มเติม)
# ─────────────────────────────────────────────────────────────────────────────
def clr():
    os.system('clear' if os.name != 'nt' else 'cls')

def pause(msg="กด Enter เพื่อดำเนินการต่อ..."):
    input(f"\n{C.YELLOW}  ↩  {msg}{C.RESET}")

def divider(char='─', width=60, color=C.CYAN):
    print(f"{color}{char * width}{C.RESET}")

def loading(msg="กำลังตรวจสอบ", secs=1.2):
    """Progress bar แบบ gradient สวยๆ"""
    BAR_WIDTH  = 28
    spin_chars = ['◐','◓','◑','◒']
    bar_colors = ['\033[94m', '\033[96m', '\033[95m', '\033[94m']
    start_time = time.time()

    while True:
        elapsed = time.time() - start_time
        pct     = min(elapsed / secs, 1.0)
        filled  = int(BAR_WIDTH * pct)
        spin    = spin_chars[int(elapsed * 10) % 4]

        bar = ''
        for j in range(BAR_WIDTH):
            bar += (bar_colors[j % len(bar_colors)] + '█') if j < filled else (C.DIM + '░')

        print(f"\r  {C.CYAN}{spin}{C.RESET}  {C.BOLD}{msg}{C.RESET}  "
              f"[{bar}{C.RESET}] {C.YELLOW}{int(pct*100):3d}%{C.RESET}",
              end='', flush=True)

        if pct >= 1.0:
            break
        time.sleep(0.05)

    print('\r' + ' ' * 70 + '\r', end='')

def hacker_loading(msg="HACKING", secs=2):
    """Loading สไตล์ matrix สุดโหด"""
    import random
    glitch_chars = list('01アイウエオカキクケコ∆∇∈∉⊕⊗#$%&@!')
    bar_chars    = ['▏','▎','▍','▌','▋','▊','▉','█']
    start_time   = time.time()

    while True:
        elapsed = time.time() - start_time
        pct     = min(elapsed / secs, 1.0)
        filled  = int(30 * pct)
        glitch  = ''.join(random.choice(glitch_chars) for _ in range(8))

        bar = C.GREEN + '█' * filled
        if filled < 30:
            bar += bar_chars[int((pct * 30 - filled) * 8) % 8]
        bar += C.DIM + '░' * (30 - filled - (1 if filled < 30 else 0))

        print(f"\r  {C.GREEN}>{C.RESET} {C.BOLD}{C.GREEN}{msg}{C.RESET} "
              f"[{bar}{C.RESET}] "
              f"{C.GREEN}{int(pct*100):3d}%{C.RESET}  "
              f"{C.DIM}{glitch}{C.RESET}",
              end='', flush=True)

        if pct >= 1.0:
            break
        time.sleep(0.04)

    print(f"\r  {C.GREEN}✔{C.RESET} {C.BOLD}{C.GREEN}{msg} — DONE!{C.RESET}" + ' ' * 40)
    time.sleep(0.25)
    print('\r' + ' ' * 70 + '\r', end='')

# ─────────────────────────────────────────────────────────────────────────────
#  Banner (โหดขึ้น)
# ─────────────────────────────────────────────────────────────────────────────
BANNER_V4 = [
    "  ██████╗██╗  ██╗███████╗ ██████╗██╗  ██╗",
    " ██╔════╝██║  ██║██╔════╝██╔════╝██║ ██╔╝",
    " ██║     ███████║█████╗  ██║     █████╔╝ ",
    " ██║     ██╔══██║██╔══╝  ██║     ██╔═██╗ ",
    " ╚██████╗██║  ██║███████╗╚██████╗██║  ██╗",
    "  ╚═════╝╚═╝  ╚═╝╚══════╝ ╚═════╝╚═╝  ╚═╝",
]

TOKEN_TITLE = [
    " ████████╗ ██████╗ ██╗  ██╗███████╗███╗  ██╗",
    "    ██╔══╝██╔═══██╗██║ ██╔╝██╔════╝████╗ ██║",
    "    ██║   ██║   ██║█████╔╝ █████╗  ██╔██╗██║",
    "    ██║   ██║   ██║██╔═██╗ ██╔══╝  ██║╚████║",
    "    ██║   ╚██████╔╝██║  ██╗███████╗██║ ╚███║",
    "    ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚══╝",
]

def print_banner_v4():
    clr()
    GRAD = ['\033[91m','\033[93m','\033[92m','\033[96m','\033[94m','\033[95m']
    BLUE = ['\033[94m','\033[96m','\033[95m','\033[94m','\033[96m','\033[95m']

    print()
    for i, line in enumerate(BANNER_V4):
        color = GRAD[i % len(GRAD)]
        print(f"{color}{line}{C.RESET}")
    print()
    for i, line in enumerate(TOKEN_TITLE):
        color = BLUE[i % len(BLUE)]
        print(f"{color}{line}{C.RESET}")
    print()
    W = 46
    print(f"  {C.DIM}{'▄'*W}{C.RESET}")
    print(f"  {C.BG_RED}{C.WHITE}{C.BOLD}  🔥  V4.0  HARDCORE EDITION  🔥  {C.RESET}")
    print(f"  {C.DIM}{'▀'*W}{C.RESET}")
    print(f"\n  {C.YELLOW}⚡{C.RESET} {C.CYAN}Multi-Thread{C.RESET} {C.DIM}•{C.RESET} {C.MAGENTA}Deep Scan{C.RESET} {C.DIM}•{C.RESET} {C.GREEN}Mass Scanner{C.RESET} {C.YELLOW}⚡{C.RESET}")
    print(f"  {C.DIM}{'─'*46}{C.RESET}\n")

# ─────────────────────────────────────────────────────────────────────────────
#  Token Logic (เพิ่มฟังก์ชั่นโหดๆ)
# ─────────────────────────────────────────────────────────────────────────────
def clean(token: str) -> str:
    return token.replace('Bot ', '').strip()

def validate_format(token: str) -> bool:
    pattern = r'^[\w-]{24,28}\.[\w-]{6,7}\.[\w-]{27,40}$'
    return bool(re.match(pattern, clean(token)))

def decode_token(token: str) -> dict | None:
    try:
        parts = clean(token).split('.')
        if len(parts) != 3:
            return None

        # Part 1 → User ID
        uid_b64 = parts[0] + '=' * (-len(parts[0]) % 4)
        user_id = base64.b64decode(uid_b64).decode('utf-8', errors='ignore')

        # Part 2 → Timestamp
        ts_b64 = parts[1] + '=' * (-len(parts[1]) % 4)
        ts_bytes = base64.b64decode(ts_b64)
        timestamp = int.from_bytes(ts_bytes, 'big') + 1420070400000
        created_at = datetime.fromtimestamp(timestamp / 1000)

        return {
            'user_id'   : user_id,
            'created_at': created_at,
            'timestamp_raw': timestamp,
            'hmac'      : parts[2],
            'parts'     : len(parts),
        }
    except Exception:
        return None

def check_online(token: str) -> dict:
    tok = clean(token)
    headers = {'Authorization': tok, 'Content-Type': 'application/json'}
    url = 'https://discord.com/api/v10/users/@me'

    try:
        r = requests.get(url, headers=headers, timeout=10)

        if r.status_code == 200:
            return {'valid': True, 'type': 'User Token', 'data': r.json()}

        if r.status_code == 401:
            headers['Authorization'] = f'Bot {tok}'
            r2 = requests.get(url, headers=headers, timeout=10)
            if r2.status_code == 200:
                return {'valid': True, 'type': 'Bot Token', 'data': r2.json()}
            return {'valid': False, 'reason': f'Unauthorized ({r2.status_code})'}

        return {'valid': False, 'reason': f'HTTP {r.status_code}'}

    except requests.Timeout:
        return {'valid': False, 'reason': 'หมดเวลาเชื่อมต่อ (ตรวจสอบเน็ต)'}
    except requests.ConnectionError:
        return {'valid': False, 'reason': 'ไม่สามารถเชื่อมต่ออินเทอร์เน็ตได้'}
    except Exception as e:
        return {'valid': False, 'reason': str(e)}

# ─────────────────────────────────────────────────────────────────────────────
#  ฟังก์ชั่นโหดๆ เพิ่มเติม 🔥
# ─────────────────────────────────────────────────────────────────────────────

def check_token_permissions(token: str) -> dict:
    """ตรวจสอบสิทธิ์ของโทเคน (Guilds, Connections, etc.)"""
    tok = clean(token)
    headers = {'Authorization': tok}
    results = {
        'guilds': [],
        'connections': [],
        'guilds_count': 0,
        'connections_count': 0,
        'has_nitro': False,
        'is_verified': False
    }
    
    try:
        # เช็คเซิร์ฟเวอร์ที่เข้าร่วม
        r = requests.get('https://discord.com/api/v10/users/@me/guilds', headers=headers, timeout=10)
        if r.status_code == 200:
            guilds = r.json()
            results['guilds'] = guilds
            results['guilds_count'] = len(guilds)
        
        # เช็ค Connections (Spotify, Steam, etc.)
        r = requests.get('https://discord.com/api/v10/users/@me/connections', headers=headers, timeout=10)
        if r.status_code == 200:
            connections = r.json()
            results['connections'] = connections
            results['connections_count'] = len(connections)
        
        # เช็คข้อมูลเพิ่มเติมจาก user/@me
        r = requests.get('https://discord.com/api/v10/users/@me', headers=headers, timeout=10)
        if r.status_code == 200:
            data = r.json()
            results['has_nitro'] = data.get('premium_type', 0) > 0
            results['is_verified'] = data.get('verified', False)
            
    except Exception as e:
        results['error'] = str(e)
    
    return results

def extract_token_info_deep(token: str) -> dict:
    """ถอดรหัสเชิงลึก - ดึงข้อมูลจากโทเคนแบบละเอียด"""
    decoded = decode_token(token)
    if not decoded:
        return {}
    
    # วิเคราะห์รูปแบบโทเคน
    parts = clean(token).split('.')
    
    # ลองถอดรหัส part 3 (HMAC) แบบต่างๆ
    hmac_info = {}
    try:
        hmac_b64 = parts[2] + '=' * (-len(parts[2]) % 4)
        hmac_bytes = base64.b64decode(hmac_b64)
        hmac_info = {
            'hex': hmac_bytes.hex(),
            'length': len(hmac_bytes),
            'possible_algo': 'HMAC-SHA256' if len(hmac_bytes) == 32 else 'Unknown'
        }
    except:
        pass
    
    # วิเคราะห์ timestamp เพิ่มเติม
    ts_info = {}
    try:
        ts_b64 = parts[1] + '=' * (-len(parts[1]) % 4)
        ts_bytes = base64.b64decode(ts_b64)
        timestamp = int.from_bytes(ts_bytes, 'big') + 1420070400000
        ts_info = {
            'timestamp_raw': timestamp,
            'date': datetime.fromtimestamp(timestamp / 1000).strftime('%Y-%m-%d %H:%M:%S'),
            'age_days': (datetime.now() - datetime.fromtimestamp(timestamp / 1000)).days
        }
    except:
        pass
    
    return {
        'user_id': decoded['user_id'],
        'created_at': decoded['created_at'],
        'token_age_days': ts_info.get('age_days', 'Unknown'),
        'hmac_hex': hmac_info.get('hex', 'Unknown'),
        'hmac_algo': hmac_info.get('possible_algo', 'Unknown'),
        'parts_length': [len(parts[0]), len(parts[1]), len(parts[2])],
        'token_format': f"{len(parts[0])}.{len(parts[1])}.{len(parts[2])}"
    }

def generate_token_variations(token: str) -> list:
    """สร้างโทเคนรูปแบบต่างๆ (สำหรับทดสอบ)"""
    clean_tok = clean(token)
    parts = clean_tok.split('.')
    variations = []
    
    if len(parts) == 3:
        # แบบไม่มี Bot prefix
        variations.append(clean_tok)
        # แบบมี Bot prefix
        variations.append(f"Bot {clean_tok}")
        # แบบ lowercase/uppercase ทดสอบ
        variations.append(clean_tok.lower())
        variations.append(clean_tok.upper())
        # แบบสลับส่วน (สำหรับทดสอบ)
        variations.append(f"{parts[0]}.{parts[2]}.{parts[1]}")
    
    return list(set(variations))  # ตัดซ้ำ

def mask_token(token: str) -> str:
    t = clean(token)
    if len(t) > 30:
        return t[:15] + '·' * 20 + t[-10:]
    return t[:10] + '·' * 15 + t[-6:] if len(t) > 20 else '·' * len(t)

# ─────────────────────────────────────────────────────────────────────────────
#  โหมดโหดๆ ใหม่
# ─────────────────────────────────────────────────────────────────────────────

def mode_hacker_deep():
    """โหมดแฮกเกอร์ - ตรวจสอบเชิงลึก"""
    print_banner_v4()
    print(f"  {C.BG_RED}{C.WHITE}{b('🔥 HARDCORE DEEP SCAN MODE 🔥')}{C.RESET}")
    print(f"  {C.RED}{blink('⚠')}{C.RESET} {C.YELLOW}ตรวจสอบโทเคนแบบละเอียดยิบ{C.RESET}")
    divider('═')

    token = input(f"\n  {C.RED}{b('🔑 ใส่โทเคนเป้าหมาย')}{C.RESET}: ").strip()
    if not token:
        return

    hacker_loading("กำลังแฮกข้อมูล", 2.5)

    # ตรวจสอบรูปแบบ
    if not validate_format(token):
        print(f"\n  {C.RED}❌ รูปแบบโทเคนไม่ถูกต้อง{C.RESET}")
        pause()
        return

    # ถอดรหัสเชิงลึก
    deep_info = extract_token_info_deep(token)
    
    print(f"\n  {C.GREEN}{b('📊 ผลการสแกนเชิงลึก')}{C.RESET}")
    divider('─')
    
    print(f"\n  {C.CYAN}{b('[ โครงสร้างโทเคน ]')}{C.RESET}")
    print(f"  รูปแบบ: {C.YELLOW}{deep_info.get('token_format', 'Unknown')}{C.RESET}")
    print(f"  User ID: {C.GREEN}{deep_info.get('user_id', 'Unknown')}{C.RESET}")
    print(f"  สร้างเมื่อ: {C.BLUE}{deep_info.get('created_at', 'Unknown')}{C.RESET}")
    print(f"  อายุโทเคน: {C.MAGENTA}{deep_info.get('token_age_days', 'Unknown')} วัน{C.RESET}")
    print(f"  HMAC (hex): {C.DIM}{deep_info.get('hmac_hex', 'Unknown')[:50]}...{C.RESET}")
    print(f"  อัลกอริทึม HMAC: {C.CYAN}{deep_info.get('hmac_algo', 'Unknown')}{C.RESET}")

    # ตรวจสอบออนไลน์
    print(f"\n  {C.YELLOW}{b('[ ตรวจสอบออนไลน์ ]')}{C.RESET}")
    online = check_online(token)
    
    if online['valid']:
        print(f"  {C.GREEN}✅ โทเคนใช้งานได้{C.RESET}")
        data = online['data']
        print(f"  ชื่อ: {C.CYAN}{data.get('username', 'Unknown')}{C.RESET}")
        print(f"  ประเภท: {C.BLUE}{online['type']}{C.RESET}")
        
        # ตรวจสอบสิทธิ์เพิ่มเติม
        perms = check_token_permissions(token)
        if perms['guilds_count'] > 0:
            print(f"  {C.GREEN}📋 เซิร์ฟเวอร์ที่เข้าร่วม: {perms['guilds_count']}{C.RESET}")
            # แสดง 3 อันแรก
            for i, guild in enumerate(perms['guilds'][:3]):
                print(f"    {i+1}. {guild.get('name', 'Unknown')} (ID: {guild.get('id', 'N/A')})")
        if perms['connections_count'] > 0:
            print(f"  {C.BLUE}🔗 Connections: {perms['connections_count']}{C.RESET}")
    else:
        print(f"  {C.RED}❌ โทเคนใช้งานไม่ได้: {online.get('reason', 'Unknown')}{C.RESET}")

    divider('═')
    pause()

def mode_bruteforce_scan():
    """โหมด Bruteforce - ทดสอบหลายรูปแบบ"""
    print_banner_v4()
    print(f"  {C.BG_YELLOW}{C.BLACK}{b('⚡ BRUTEFORCE SCAN MODE ⚡')}{C.RESET}")
    print(f"  {C.RED}{blink('🔥')}{C.RESET} {C.YELLOW}ทดสอบโทเคนทุกรูปแบบ{C.RESET}")
    divider('═')

    token = input(f"\n  {C.YELLOW}{b('🔑 ใส่โทเคนหลัก')}{C.RESET}: ").strip()
    if not token:
        return

    variations = generate_token_variations(token)
    
    print(f"\n  {C.CYAN}พบ {len(variations)} รูปแบบที่สามารถทดสอบ{C.RESET}")
    divider('─')

    valid_found = False
    for i, var in enumerate(variations, 1):
        print(f"  [{i}/{len(variations)}] ทดสอบ: {mask_token(var)}", end='')
        
        if validate_format(var):
            result = check_online(var)
            if result['valid']:
                print(f" {C.GREEN}✅ VALID! ({result['type']}){C.RESET}")
                valid_found = True
                print(f"    {C.YELLOW}✔ โทเคนที่ใช้ได้: {var[:20]}...{C.RESET}")
            else:
                print(f" {C.RED}❌{C.RESET}")
        else:
            print(f" {C.DIM}⏭ รูปแบบไม่ถูกต้อง{C.RESET}")
        
        time.sleep(0.5)  # ป้องกัน rate limit
    
    if not valid_found:
        print(f"\n  {C.RED}❌ ไม่พบโทเคนที่ใช้งานได้ในทุกรูปแบบ{C.RESET}")
    
    divider('═')
    pause()

def mode_mass_scanner():
    """โหมด Mass Scanner - สแกนทีละหลายๆ โทเคนแบบเร็ว"""
    print_banner_v4()
    print(f"  {C.BG_GREEN}{C.BLACK}{b('🚀 MASS TOKEN SCANNER (MULTI-THREAD) 🚀')}{C.RESET}")
    print(f"  {C.GREEN}{blink('⚡')}{C.RESET} {C.CYAN}สแกนพร้อมกัน 10 โทเคนต่อรอบ{C.RESET}")
    divider('═')

    print(f"\n  {C.YELLOW}วางโทเคนทีละบรรทัด (พิมพ์ DONE เมื่อเสร็จ):{C.RESET}")
    tokens = []
    while True:
        t = input(f"  {C.CYAN}> {C.RESET}").strip()
        if t.upper() == 'DONE':
            break
        if t:
            tokens.append(t)

    if not tokens:
        print(f"\n  {C.RED}❌ ไม่มีโทเคนให้สแกน{C.RESET}")
        pause()
        return

    print(f"\n  {C.YELLOW}จำนวนโทเคน: {len(tokens)}{C.RESET}")
    print(f"  {C.CYAN}กำลังสแกนแบบ Multi-Thread (10 threads)...{C.RESET}")

    results = {
        'valid': [],
        'invalid': [],
        'bot': [],
        'user': []
    }

    def scan_token(tok):
        if not validate_format(tok):
            return {'token': tok, 'valid': False, 'reason': 'Invalid format'}
        
        result = check_online(tok)
        return {
            'token': tok,
            'valid': result.get('valid', False),
            'type': result.get('type', 'Unknown'),
            'data': result.get('data', {}),
            'reason': result.get('reason', '')
        }

    # ใช้ ThreadPoolExecutor สำหรับการสแกนเร็วขึ้น
    with ThreadPoolExecutor(max_workers=10) as executor:
        futures = {executor.submit(scan_token, tok): tok for tok in tokens}
        
        for i, future in enumerate(as_completed(futures), 1):
            result = future.result()
            status = f"{C.GREEN}✅ VALID{C.RESET}" if result['valid'] else f"{C.RED}❌ INVALID{C.RESET}"
            
            if result['valid']:
                results['valid'].append(result)
                if result['type'] == 'Bot Token':
                    results['bot'].append(result)
                else:
                    results['user'].append(result)
                print(f"  [{i}/{len(tokens)}] {status} - {result['type']}")
            else:
                results['invalid'].append(result)
                print(f"  [{i}/{len(tokens)}] {status} - {result.get('reason', 'Unknown')}")

    # สรุปผล
    print(f"\n  {C.CYAN}{b('📊 สรุปผลการสแกน')}{C.RESET}")
    divider('─')
    print(f"  {C.GREEN}✅ Valid ทั้งหมด: {len(results['valid'])}{C.RESET}")
    print(f"    {C.BLUE}├─ User Tokens: {len(results['user'])}{C.RESET}")
    print(f"    {C.MAGENTA}└─ Bot Tokens: {len(results['bot'])}{C.RESET}")
    print(f"  {C.RED}❌ Invalid: {len(results['invalid'])}{C.RESET}")
    
    # บันทึกผลลัพธ์
    if results['valid']:
        save = input(f"\n  {C.YELLOW}บันทึกผลลัพธ์ลงไฟล์? (y/n): {C.RESET}").lower()
        if save == 'y':
            filename = f"token_scan_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
            with open(filename, 'w') as f:
                json.dump({
                    'valid_tokens': [{
                        'token': r['token'][:20] + '...',  # ซ่อนโทเคน
                        'type': r['type'],
                        'username': r['data'].get('username', 'Unknown') if r.get('data') else 'Unknown'
                    } for r in results['valid']],
                    'stats': {
                        'total': len(tokens),
                        'valid': len(results['valid']),
                        'invalid': len(results['invalid']),
                        'bot': len(results['bot']),
                        'user': len(results['user'])
                    }
                }, f, indent=2)
            print(f"  {C.GREEN}✅ บันทึกไฟล์: {filename}{C.RESET}")

    divider('═')
    pause()

def mode_token_analyzer():
    """โหมดวิเคราะห์โทเคนแบบละเอียด"""
    print_banner_v4()
    print(f"  {C.BG_BLUE}{C.WHITE}{b('🔬 TOKEN ANALYZER PRO 🔬')}{C.RESET}")
    print(f"  {C.CYAN}วิเคราะห์ความแข็งแรงและความเสี่ยงของโทเคน{C.RESET}")
    divider('═')

    token = input(f"\n  {C.BLUE}{b('🔑 ใส่โทเคนที่ต้องการวิเคราะห์')}{C.RESET}: ").strip()
    if not token:
        return

    hacker_loading("กำลังวิเคราะห์", 2)

    # วิเคราะห์ความแข็งแรง
    strength_score = 0
    risks = []
    
    # ตรวจสอบความยาว
    clean_tok = clean(token)
    if len(clean_tok) > 70:
        strength_score += 30
    elif len(clean_tok) > 50:
        strength_score += 20
    else:
        risks.append("โทเคนสั้นผิดปกติ")

    # ตรวจสอบความซับซ้อน
    if re.search(r'[A-Z]', clean_tok):
        strength_score += 10
    if re.search(r'[a-z]', clean_tok):
        strength_score += 10
    if re.search(r'[0-9]', clean_tok):
        strength_score += 10
    if re.search(r'[-_]', clean_tok):
        strength_score += 10

    # ตรวจสอบรูปแบบ
    parts = clean_tok.split('.')
    if len(parts) == 3:
        strength_score += 20
        if len(parts[0]) == 24:
            strength_score += 10  # User ID part ยาวมาตรฐาน
    else:
        risks.append("รูปแบบโทเคนไม่มาตรฐาน")

    # ตรวจสอบออนไลน์
    online = check_online(token)
    if online['valid']:
        strength_score += 30
        data = online['data']
        
        # ตรวจสอบความปลอดภัยของบัญชี
        if data.get('mfa_enabled'):
            strength_score += 20
        else:
            risks.append("ไม่ได้เปิดใช้งาน 2FA")
        
        if data.get('verified'):
            strength_score += 10
        else:
            risks.append("อีเมลยังไม่ยืนยัน")
    else:
        risks.append("โทเคนไม่สามารถใช้งานได้")

    # แสดงผล
    print(f"\n  {C.CYAN}{b('📊 ผลการวิเคราะห์')}{C.RESET}")
    divider('─')
    
    # ระดับความแข็งแรง
    print(f"\n  ระดับความแข็งแรง: ", end='')
    if strength_score >= 80:
        print(f"{C.GREEN}แข็งแรงมาก 💪{C.RESET}")
    elif strength_score >= 60:
        print(f"{C.BLUE}ปานกลาง 👍{C.RESET}")
    elif strength_score >= 40:
        print(f"{C.YELLOW}อ่อน ⚠{C.RESET}")
    else:
        print(f"{C.RED}อันตราย ❌{C.RESET}")
    
    print(f"  คะแนนความปลอดภัย: {C.YELLOW}{strength_score}/100{C.RESET}")
    
    # ความเสี่ยงที่พบ
    if risks:
        print(f"\n  {C.RED}{b('⚠ ความเสี่ยงที่พบ:')}{C.RESET}")
        for risk in risks:
            print(f"  {C.RED}• {risk}{C.RESET}")
    else:
        print(f"\n  {C.GREEN}✅ ไม่พบความเสี่ยง{C.RESET}")
    
    # คำแนะนำ
    print(f"\n  {C.CYAN}{b('💡 คำแนะนำ:')}{C.RESET}")
    if strength_score < 60:
        print(f"  • รีเซ็ตโทเคนทันที")
        print(f"  • เปิดใช้งาน 2FA")
        print(f"  • เปลี่ยนรหัสผ่าน")
    else:
        print(f"  • เปลี่ยนโทเคนทุก 3-6 เดือน")
        print(f"  • อย่าแชร์โทเคนกับใคร")

    divider('═')
    pause()

# ─────────────────────────────────────────────────────────────────────────────
#  Main Menu (ปรับปรุง)
# ─────────────────────────────────────────────────────────────────────────────
def menu_item(num, icon, label, color=C.WHITE, desc=''):
    if desc:
        print(f"  {C.BOLD}{color}{num}{C.RESET} {icon}  {C.BOLD}{label}{C.RESET}")
        print(f"     {C.DIM}{desc}{C.RESET}")
    else:
        print(f"  {C.BOLD}{color}{num}{C.RESET} {icon}  {label}")

def main_menu_v4():
    while True:
        print_banner_v4()
        print(f"  {C.BOLD}{C.RED}{blink('🔥')}{C.RESET} {C.BOLD}เลือกโหมดการตรวจสอบ{C.RESET} {C.RED}{blink('🔥')}{C.RESET}\n")
        divider('─', width=66)
        
        menu_item('1', '🌐', 'เช็คโทเคนแบบเต็ม (ออนไลน์)', C.BG_BLUE + C.WHITE, 'ตรวจสอบกับ Discord API')
        menu_item('2', '📴', 'เช็คโทเคนออฟไลน์', C.BG_CYAN + C.BLACK, 'ถอดรหัสจากโทเคนอย่างเดียว')
        menu_item('3', '📋', 'ตรวจสอบรูปแบบโทเคน', C.CYAN, 'เช็คความถูกต้องของรูปแบบ')
        menu_item('4', '📦', 'เช็คหลายโทเคน (Bulk)', C.MAGENTA, 'สแกนทีละหลายๆ อัน')
        
        print()
        menu_item('5', '🔥', 'HARDCORE DEEP SCAN', C.BG_RED + C.WHITE, 'สแกนเชิงลึกสุดโหด')
        menu_item('6', '⚡', 'BRUTEFORCE SCAN', C.BG_YELLOW + C.BLACK, 'ทดสอบทุกรูปแบบ')
        menu_item('7', '🚀', 'MASS SCANNER (Multi-Thread)', C.BG_GREEN + C.BLACK, 'สแกนเร็ว 10 โทเคนพร้อมกัน')
        menu_item('8', '🔬', 'TOKEN ANALYZER PRO', C.BG_BLUE + C.WHITE, 'วิเคราะห์ความแข็งแรง')
        
        print()
        menu_item('9', '📖', 'คู่มือการใช้งาน', C.YELLOW)
        menu_item('0', '🚪', 'ออกจากโปรแกรม', C.RED)
        divider('─', width=66)

        choice = input(f"\n  {C.RED}{blink('→')}{C.RESET} {C.BOLD}เลือกโหมด{C.RESET} → ").strip()

        if   choice == '1': mode_full()  # ใช้ฟังก์ชันเดิม
        elif choice == '2': mode_offline()  # ใช้ฟังก์ชันเดิม
        elif choice == '3': mode_format()  # ใช้ฟังก์ชันเดิม
        elif choice == '4': mode_bulk()  # ใช้ฟังก์ชันเดิม
        elif choice == '5': mode_hacker_deep()  # โหมดใหม่
        elif choice == '6': mode_bruteforce_scan()  # โหมดใหม่
        elif choice == '7': mode_mass_scanner()  # โหมดใหม่
        elif choice == '8': mode_token_analyzer()  # โหมดใหม่
        elif choice == '9': show_help_v4()  # คู่มือแบบใหม่
        elif choice == '0':
            clr()
            print(C.rainbow("\n  👋 ขอบคุณที่ใช้โปรแกรม H4CK3R EDITION! See you in the matrix...\n"))
            break
        else:
            print(f"\n  {C.RED}❌ กรุณาเลือก 0-9 เท่านั้น{C.RESET}")
            time.sleep(1)

def show_help_v4():
    """คู่มือแบบโหดๆ"""
    print_banner_v4()
    help_text = f"""
  {C.RED}{b('🔥 คู่มือการใช้งาน HARDCORE EDITION 🔥')}{C.RESET}
  {C.DIM}{'═'*66}{C.RESET}

  {b('📌 โหมดพื้นฐาน:')}
    1. เช็คโทเคนแบบเต็ม - ตรวจสอบกับ Discord API
    2. เช็คโทเคนออฟไลน์ - ถอดรหัสจากโทเคนอย่างเดียว
    3. ตรวจสอบรูปแบบ - เช็คความถูกต้องของรูปแบบ
    4. เช็คหลายโทเคน - สแกนทีละหลายๆ อัน

  {C.RED}{b('💀 โหมดโหดพิเศษ:')}{C.RESET}
    5. HARDCORE DEEP SCAN - สแกนเชิงลึก ดูโครงสร้าง HMAC, อายุโทเคน
    6. BRUTEFORCE SCAN - ทดสอบโทเคนทุกรูปแบบ (Bot prefix, case, etc.)
    7. MASS SCANNER - สแกนพร้อมกัน 10 โทเคนต่อรอบ ด้วย Multi-Thread
    8. TOKEN ANALYZER PRO - วิเคราะห์ความแข็งแรงและความเสี่ยง

  {C.YELLOW}{b('⚡ เทคนิคการใช้งานขั้นสูง:')}{C.RESET}
    • ใช้โหมด Mass Scanner สำหรับสแกนโทเคนจำนวนมาก
    • ใช้ Hardcore Deep Scan เพื่อดูรายละเอียดเชิงเทคนิค
    • ใช้ Token Analyzer เพื่อประเมินความปลอดภัย

  {C.RED}{b('⚠ คำเตือนความปลอดภัย:')}{C.RESET}
    • ใช้เฉพาะโทเคนของตัวเองเท่านั้น
    • รีเซ็ตโทเคนทันทีหลังทดสอบ
    • การสแกนโทเคนคนอื่นผิดจริยธรรมและผิดกฎหมาย

  {C.GREEN}{b('💻 ติดตั้งบน Termux:')}{C.RESET}
    pkg update && pkg install python
    pip install requests
    python Checker_Token_v4.py

  {C.MAGENTA}{b('🎮 สนุกกับการแฮ็กแบบสร้างสรรค์!')}{C.RESET}
  {C.DIM}{'═'*66}{C.RESET}
"""
    print(help_text)
    pause()

# ─────────────────────────────────────────────────────────────────────────────
#  ฟังก์ชันเดิมที่ต้องมี (copy จากโค้ดเดิม)
# ─────────────────────────────────────────────────────────────────────────────
def mode_full():
    """โหมดเช็คแบบเต็ม (คงเดิม)"""
    print_banner_v4()
    print(f"  {b(C.GREEN + '🌐 โหมดเช็คแบบเต็ม (ออนไลน์)')}{C.RESET}")
    divider('═')

    token = input(f"\n  {C.CYAN}{b('🔑 ใส่โทเคน')}{C.RESET}: ").strip()
    if not token:
        return

    if not validate_format(token):
        print(f"\n  {C.RED}❌ รูปแบบโทเคนไม่ถูกต้อง{C.RESET}")
        pause()
        return

    loading("กำลังตรวจสอบกับ Discord API", 1.5)

    decoded = decode_token(token)
    online = check_online(token)

    print_result(decoded, online)
    pause()

def mode_offline():
    """โหมดออฟไลน์ (คงเดิม)"""
    print_banner_v4()
    print(f"  {b(C.YELLOW + '📴 โหมดออฟไลน์')}{C.RESET}")
    divider('═')

    token = input(f"\n  {C.CYAN}{b('🔑 ใส่โทเคน')}{C.RESET}: ").strip()
    if not token:
        return

    loading("กำลังถอดรหัส", 0.8)

    decoded = decode_token(token)
    print_result(decoded, None)
    pause()

def mode_format():
    """ตรวจสอบรูปแบบโทเคน (คงเดิม)"""
    print_banner_v4()
    print(f"  {b(C.CYAN + '📋 ตรวจสอบรูปแบบโทเคน')}{C.RESET}")
    divider('═')

    token = input(f"\n  {C.CYAN}{b('🔑 ใส่โทเคน')}{C.RESET}: ").strip()
    if not token:
        return

    is_ok = validate_format(token)
    print()
    divider('─')

    if is_ok:
        parts = clean(token).split('.')
        print(f"  {C.GREEN}✅ รูปแบบโทเคนถูกต้อง{C.RESET}\n")
        print(f"  {C.CYAN}โครงสร้าง:{C.RESET}")
        print(f"  • ส่วนที่ 1 (User ID): {len(parts[0])} ตัว")
        print(f"  • ส่วนที่ 2 (Timestamp): {len(parts[1])} ตัว")
        print(f"  • ส่วนที่ 3 (HMAC): {len(parts[2])} ตัว")
    else:
        print(f"  {C.RED}❌ รูปแบบโทเคนไม่ถูกต้อง{C.RESET}")

    divider('─')
    pause()

def mode_bulk():
    """เช็คหลายโทเคน (คงเดิม)"""
    print_banner_v4()
    print(f"  {b(C.MAGENTA + '📦 โหมดเช็คหลายโทเคน')}{C.RESET}")
    divider('═')

    print(f"\n  {C.YELLOW}ใส่โทเคนทีละบรรทัด (พิมพ์ DONE เมื่อเสร็จ):{C.RESET}")
    tokens = []
    while True:
        t = input(f"  {C.CYAN}> {C.RESET}").strip()
        if t.upper() == 'DONE':
            break
        if t:
            tokens.append(t)

    if not tokens:
        print(f"\n  {C.RED}❌ ไม่มีโทเคน{C.RESET}")
        pause()
        return

    print(f"\n  {C.CYAN}⏳ กำลังตรวจสอบ {len(tokens)} โทเคน...{C.RESET}\n")
    valid_count = 0

    for i, tok in enumerate(tokens, 1):
        divider('·')
        print(f"  [{i}/{len(tokens)}] {mask_token(tok)}")

        if not validate_format(tok):
            print(f"  {C.RED}❌ รูปแบบไม่ถูกต้อง{C.RESET}")
            continue

        result = check_online(tok)

        if result['valid']:
            d = result['data']
            name = d.get('username', '?')
            print(f"  {C.GREEN}✅ VALID • {name} • {result['type']}{C.RESET}")
            valid_count += 1
        else:
            print(f"  {C.RED}❌ INVALID • {result.get('reason', '?')}{C.RESET}")

    print()
    divider('═')
    print(f"  สรุป: {C.GREEN}✅ Valid: {valid_count}{C.RESET} | {C.RED}❌ Invalid: {len(tokens)-valid_count}{C.RESET}")
    divider('═')
    pause()

def print_result(decoded: dict | None, online: dict | None = None):
    """แสดงผลลัพธ์ (ปรับปรุงเล็กน้อย)"""
    print()
    divider('═', color=C.MAGENTA)
    print(f"  {C.BOLD}{C.MAGENTA}📊 ผลการตรวจสอบ{C.RESET}")
    divider('═', color=C.MAGENTA)

    if decoded:
        print(f"\n  {C.CYAN}{b('[ ข้อมูลจากโทเคน ]')}{C.RESET}")
        divider('─', color=C.DIM)
        print(f"  🆔 User ID: {C.GREEN}{decoded['user_id']}{C.RESET}")
        if decoded.get('created_at'):
            print(f"  📅 สร้างเมื่อ: {C.BLUE}{decoded['created_at'].strftime('%Y-%m-%d %H:%M:%S')}{C.RESET}")

    if online:
        print(f"\n  {C.YELLOW}{b('[ ผลการตรวจสอบออนไลน์ ]')}{C.RESET}")
        divider('─', color=C.DIM)

        if online['valid']:
            d = online['data']
            print(f"  {C.GREEN}✅ สถานะ: โทเคนใช้งานได้{C.RESET}")
            print(f"  🏷 ประเภท: {C.CYAN}{online['type']}{C.RESET}")

            name = d.get('username', 'N/A')
            disc = d.get('discriminator', '0')
            if disc not in ('0', None):
                name = f"{name}#{disc}"
            print(f"  👤 ชื่อ: {C.BLUE}{name}{C.RESET}")
            print(f"  🆔 ID: {d.get('id', 'N/A')}")

            if d.get('bot'):
                print(f"  🤖 บอท: {C.CYAN}ใช่{C.RESET}")
            else:
                if d.get('email'):
                    print(f"  📧 อีเมล: {C.BLUE}{d['email'][:3]}...{C.RESET}")
                print(f"  🔐 2FA: {C.YELLOW}{'เปิด' if d.get('mfa_enabled') else 'ปิด'}{C.RESET}")
                if d.get('premium_type'):
                    nitro = {1: 'Nitro Classic', 2: 'Nitro', 3: 'Nitro Basic'}.get(d['premium_type'], 'Unknown')
                    print(f"  💎 Nitro: {C.MAGENTA}{nitro}{C.RESET}")
        else:
            print(f"  {C.RED}❌ โทเคนใช้งานไม่ได้{C.RESET}")
            print(f"  📝 เหตุผล: {online.get('reason', '?')}")

    print()
    divider('═', color=C.MAGENTA)

# ─────────────────────────────────────────────────────────────────────────────
if __name__ == '__main__':
    try:
        main_menu_v4()
    except KeyboardInterrupt:
        print(C.rainbow("\n\n  👋 Bye bye! See you in the next hack!\n"))
    except Exception as e:
        print(f"\n  {C.RED}❌ เกิดข้อผิดพลาด: {e}{C.RESET}\n")
