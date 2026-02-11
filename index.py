import os
import string

def lihat_header(file_path, jumlah_byte=16):
    try:
        with open(file_path, 'rb') as f:
            header = f.read(jumlah_byte)
            
        print(f"\n{'='*50}")
        print(f"Header File: {file_path}")
        print(f"{'='*50}")
        print(f"ORIGINAL HEX: {header.hex(' ').upper()}")

        stringHex = header.hex(' ').upper()

        print(f"SUBSTRING HEX: {stringHex[:8]}")
        print(f"HEX TO DECIMAL: {int(stringHex[:8].replace(' ', ''), 16)}")
        print(f"{'='*50}\n")
        
        return header
    except FileNotFoundError:
        print(f"File '{file_path}' tidak ditemukan!")
        return None
    except Exception as e:
        print(f"Error: {e}")
        return None


def ubah_header(file_path, header_baru, backup=True):
    """
    """
    
    if not os.path.exists(file_path):
        print(f"File '{file_path}' tidak ditemukan!")
        return False
    
    try:
        if backup:
            backup_path = file_path + '.backup'
            with open(file_path, 'rb') as f_original:
                with open(backup_path, 'wb') as f_backup:
                    f_backup.write(f_original.read())
            print(f"Backup dibuat: {backup_path}")
        
        
        with open(file_path, 'rb') as f:
            data = f.read()
        
        print(f"\nInfo File:")
        print(f"   Ukuran total: {len(data)} bytes")
        print(f"   Header lama: {data[:len(header_baru)].hex(' ').upper()}")
        print(f"   Header baru: {header_baru.hex(' ').upper()}")
        
        
        with open(file_path, 'r+b') as f:
            f.seek(0) 
            f.write(header_baru)  
        
        print(f"\nHeader berhasil diubah pada file: {file_path}")
        return True
        
    except PermissionError:
        print(f"Tidak punya izin untuk mengubah file!")
        return False
    except Exception as e:
        print(f"Error: {e}")
        return False


def kembalikan_header(file_path, header_asli):
    """Mengembalikan header ke kondisi semula"""
    return ubah_header(file_path, header_asli, backup=False)


if __name__ == "__main__":

    header_rusak_jpeg = bytes.fromhex("00 D8 FF E0")
    header_rusak_png = bytes.fromhex("00 50 4E 47 0D 0A 1A 0A")
    header_rusak_pdf = bytes.fromhex("00 50 44 46 2D")
    header_rusak_exe = bytes.fromhex("00 5A 90 00 03 00 00 00 04 00 00 00 FF FF 00 00")

    header_jpeg = bytes.fromhex("FF D8 FF E0")
    header_png = bytes.fromhex("89 50 4E 47 0D 0A 1A 0A")
    header_pdf = bytes.fromhex("25 50 44 46 2D")
    header_exe = bytes.fromhex("4D 5A 90 00 03 00 00 00 04 00 00 00 FF FF 00 00")

    print("="*60)
    print("Sistem Operasi")
    print("="*60)
    
    print("\n[1] Header File : ")

    fileJpeg1 = "test2.jpg"  
    fileJpeg2 = "test3.jpg"  

    filePng1 = "banner4.png"  
    filePng2 = "banner2.png"  

    filePdf1 = "skripsi.pdf"  
    filePdf2 = "test_pdf.pdf"  

    fileExe1 = "file1.exe"  
    fileExe2 = "vscode.exe"

    # lihat_header(fileJpeg1)  
    # lihat_header(fileJpeg2)  

    # lihat_header(filePng1)  
    # lihat_header(filePng2)  

    lihat_header(filePng1)  
    ubah_header(filePng1,header_rusak_png)
    #kembalikan_header(filePdf1,header_pdf)
    #lihat_header(filePdf2)  

    # lihat_header(fileExe1)  
    # lihat_header(fileExe2)  
    
    print("\n[2] Ubah Header File")
    #ubah_header(file_target8, header_rusak_pdf)
    
    
    print("\n[3] Mengembalikan Header Asli")
    #kembalikan_header(file_target8, header_pdf)
    


