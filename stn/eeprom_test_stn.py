import serial
import time

def send_and_check_echo(ser, msg):
    ser.write(msg)
    #time.sleep(0.05)
    echo = ser.read(len(msg))
    #print(f"Sent:  {[hex(b) for b in msg]}")
    #print(f"Echo:  {[hex(b) for b in echo]}")
    return echo == msg

def uart_write(ser, addr, data):
    msg = bytearray([
        0x5A, 0x00, 0x05, 0x00, 0x00, 0x30,
        (addr >> 8) & 0xFF,
        addr & 0xFF,
        data & 0xFF,
        0xA5
    ])
    if send_and_check_echo(ser, msg):
        return 0
    else:
        return 1

def uart_read(ser, addr):
    # Step 1: Send address message
    addr_msg = bytearray([
        0x5A, 0x00, 0x05, 0x00, 0x00, 0x00,
        (addr >> 8) & 0xFF,
        addr & 0xFF,
        0x00,
        0xA5
    ])
    if not send_and_check_echo(ser, addr_msg):
        print("Address echo mismatch, aborting read.")
        return 0xFF

    # Step 2: Send reading message
    read_msg = bytearray([
        0x5B, 0x00, 0x0B, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0xA4
    ])
    ser.write(read_msg)
    #time.sleep(0.05)
    resp = ser.read(10)
    #print(f"Read sent:  {[hex(b) for b in read_msg]}")
    #print(f"Read resp:  {[hex(b) for b in resp]}")
    if len(resp) == 10 and resp[0] == 0x5B and resp[9] == 0xA4:
        status = resp[5]
        data = resp[8]
        if status == 0x80:
            return data
    return 0xFF

if __name__ == "__main__":
    ser = serial.Serial(
        port='COM4',
        baudrate=115200,
        bytesize=serial.EIGHTBITS,
        parity=serial.PARITY_NONE,
        stopbits=serial.STOPBITS_ONE,
        timeout=1
    )

    # Example usage
    addr = 0x0000
    data = 0x78

    # 从地址0开始到4095地址写入数据0x78，然后逐次读出并存入变量read_val
    # 读出数据后，打印读出的值
    start_time = time.time()
    
    for addr in range(0, 8192):
        uart_write(ser, addr, data)
        read_val = uart_read(ser, addr)
        if read_val != data:
            print(f"Data mismatch at address {addr}: expected 0x{data:02X}, got 0x{read_val:02X}")
    
    end_time = time.time()
    execution_time = end_time - start_time
    print(f"Total execution time: {execution_time:.2f} seconds")

    # 关闭串口
    ser.close()