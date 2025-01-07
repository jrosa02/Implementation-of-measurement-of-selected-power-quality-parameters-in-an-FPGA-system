import serial
import os
import signal

# Set up the serial connection
SERIAL_PORT = "COM6"  # Replace with your port (e.g., "COM3", "/dev/ttyUSB0")
BAUD_RATE = 115200      # Replace with your device's baud rate
OUTPUT_FILE = "serial_output.txt"  # Output file to save the data

def main():
    ser = None
    try:
        # Open serial connection
        ser = serial.Serial(SERIAL_PORT, BAUD_RATE, timeout=1)
        print(f"Connected to {SERIAL_PORT} at {BAUD_RATE} baud.")

        # Open the file for writing with UTF-8 encoding
        with open(OUTPUT_FILE, "w", encoding="utf-8") as file:
            print(f"Writing data to {OUTPUT_FILE}. Press Ctrl+C to stop.")

            # Continuously read from the serial port and write to file
            while True:
                if ser.in_waiting > 0:
                    # Decode the line with error handling
                    line = ser.readline().decode('utf-8', errors='replace').strip()
                    print(line)  # Print to console
                    file.write(line + "\n")  # Write to file
                    file.flush()  # Ensure data is written immediately
    except AttributeError as e:
        print(f"Module 'serial' is not correctly imported. Error: {e}")
    except serial.SerialException as e:
        print(f"Error: {e}")
    except KeyboardInterrupt:
        print("\nStopped by user.")
    finally:
        # Clean up
        if ser and ser.is_open:
            ser.close()
        print("Serial connection closed.")

if __name__ == "__main__":
    main()
