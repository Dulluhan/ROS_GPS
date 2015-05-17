import sbp
import serial 
import time
 
def baseline_callback(data):
  # This function is called every time we receive a BASELINE_NED message
 
  # First decode the binary SBP data in "data" into a python object, the sbp
  # module has functions that do this for all the message types defined in the
  # official spec.
  b = sbp.BaselineNED(data)
 
  # soln now contains the decoded baseline information and
  # has fields with the same names as in the SBP docs
 
  # Print out the N, E, D coordinates of the baseline
  print "%.4f,%.4f,%.4f" % \
    (b.n * 1e-3, b.e * 1e-3, b.d * 1e-3)
 
 
# Open a connection to Piksi on '/dev/ttyUSB0' using the default baud rate.
link = serial.Serial(port="/dev/ttyUSB0")
 
# Add our callback function to handle BASELINE_NED messages.
link.callback(sbp.SBP_BASELINE_NED, baseline_callback)
 
try:
  # Sleep until the user presses Ctrl-C
  while True:
    time.sleep(60)
except:
  # User pressed Ctrl-C, close the connection to Piksi
  link.close()
