# !/usr/bib/env python
# Author: Vincent Yuan 
# Purpose: An io reader, sbp parser made for the piksi gps modules 
#          that create NED arrays for RTK positioning 

import sys
import time

from sbp.navigation 			import SBP_MSG_BASELINE_NED
from sbp.client.drivers.pyserial_driver import PySerialDriver 
#To communicate with USB
from sbp.client.drivers.pyftdi_driver 	import PyFTDIDriver 
#So we can read from the microcontroller via USB
from sbp.client.handler			import Handler
from sbp.logging			import SBP_MSG_PRINT

SERIAL_PORT = "/dev/ttyUSB0" # Change to whats needed, 
#			       check by running $ lsusb
SERIAL_BAUD = 1000000 # default is 1MHz, can check by running 
#		        $ setserial /dev/ttyUSB0 -l 

def driver_start(use_ftdi = False):
	if use_ftdi:
		return PyFTDIDriver(SERIAL_BAUD)
	return PySerialDriver(SERIAL_PORT, SERIAL_BAUD)

def printer(sbp_msg):
	"""
	Used to print log 
	--------
	Prints the same messages in the log of the gui
	"""
	textout = "\x1b[1;%dm" % 31 + sbp_msg.payload + "\x1b[0m" 
	sys.stout.write(textout)

def baseline_callback(sbp_msg):
	"""
	#Used to print NED
	"""  
	textout = "%.4f,%.4f,%.4f" % (b.n * 1e-3, b.e * 1e-3, b.d * 1e-3)
	sys.stout.write(textout)
 
def main():
	ftdi = False 
	timeout = None
	#Create Driver with context 
	with driver_start(ftdi) as driver: 
	 with Handler(driver.read, driver.write, False) as link:
	  # Add our callback function to handle BASELINE_NED messages.
	  link.add_callback(printer, SBP_MSG_PRINT)
	  link.add_callback(baseline_callback, SBP_MSG_BASELINE_NED)

 	  try: 
		while True: 
			time.sleep(0.1) 
	  except KeyboardInterrupt: 
		sys.exit(1)
if __name__ == "__main__": 
	main()
