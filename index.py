import os

def lihat_header(file_path, jumlah_byte=16):
    """Melihat header file dalam format hex dan ASCII"""
    try:
        with open(file_path, 'rb') as f:
            header = f.read(jumlah_byte)
            
        print(f"\n{'='*50}")
        print(f"Header File: {file_path}")
        print(f"{'='*50}")
        print(f"HEX: {header.hex(' ').upper()}")
        print(f"ASCII: {header}")
        print(f"{'='*50}\n")
        
        return header
    except FileNotFoundError:
        print(f"❌ File '{file_path}' tidak ditemukan!")
        return None
    except Exception as e:
        print(f"❌ Error: {e}")
        return None


def ubah_header(file_path, header_baru, backup=True):
    """
    Mengubah header file secara langsung (in-place)
    
    Parameters:
    - file_path: path ke file yang akan diubah
    - header_baru: bytes baru untuk header (gunakan bytes.fromhex() atau b'...')
    - backup: buat backup file sebelum diubah (default: True)
    """
    
    if not os.path.exists(file_path):
        print(f"❌ File '{file_path}' tidak ditemukan!")
        return False
    
    try:
        
        if backup:
            backup_path = file_path + '.backup'
            with open(file_path, 'rb') as f_original:
                with open(backup_path, 'wb') as f_backup:
                    f_backup.write(f_original.read())
            print(f"✅ Backup dibuat: {backup_path}")
        
        
        with open(file_path, 'rb') as f:
            data = f.read()
        
        print(f"\n📊 Info File:")
        print(f"   Ukuran total: {len(data)} bytes")
        print(f"   Header lama: {data[:len(header_baru)].hex(' ').upper()}")
        print(f"   Header baru: {header_baru.hex(' ').upper()}")
        
        
        with open(file_path, 'r+b') as f:
            f.seek(0) 
            f.write(header_baru)  
        
        print(f"\n✅ Header berhasil diubah pada file: {file_path}")
        return True
        
    except PermissionError:
        print(f"❌ Tidak punya izin untuk mengubah file!")
        return False
    except Exception as e:
        print(f"❌ Error: {e}")
        return False


def kembalikan_header(file_path, header_asli):
    """Mengembalikan header ke kondisi semula"""
    return ubah_header(file_path, header_asli, backup=False)


# ============= CONTOH PENGGUNAAN =============

if __name__ == "__main__":
    print("="*60)
    print("FILE HEADER MODIFIER - Challenge Sistem Operasi")
    print("="*60)
    
    # Contoh 1: Lihat header file
    print("\n[1] Melihat Header File")
    file_target = "test.jpg"  # Ganti dengan file yang ingin diubah
    
    # Uncomment untuk melihat header
    # lihat_header(file_target)
    
    
    # Contoh 2: Ubah header file JPEG menjadi PNG (rusak)
    print("\n[2] Mengubah Header File")
    
    # Header asli JPEG: FF D8 FF E0
    # Header PNG: 89 50 4E 47 0D 0A 1A 0A
    
    header_jpeg = bytes.fromhex("FF D8 FF E0")
    header_png = bytes.fromhex("89 50 4E 47 0D 0A 1A 0A")
    header_rusak = bytes.fromhex("00 00 00 00")
    
    # Uncomment untuk mengubah header
    # ubah_header(file_target, header_rusak)
    
    
    # Contoh 3: Kembalikan header asli
    print("\n[3] Mengembalikan Header Asli")
    kembalikan_header(file_target, header_jpeg)
    
    
    print("\n" + "="*60)
    print("📝 CATATAN:")
    print("   - Uncomment baris yang ingin dijalankan")
    print("   - Backup otomatis dibuat (.backup)")
    print("   - Hati-hati saat mengubah header!")
    print("="*60)

