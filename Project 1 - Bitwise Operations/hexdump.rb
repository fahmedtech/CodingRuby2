# HexDump Utility

# Display characters in a file in both hex and character.

# Load file into the string chars.
chars = File.open(ARGV[0], "rb").read

# Start at line 0
line = 0

# Get number of characters in file.
file_len = chars.length

while line <= file_len
	
  # Print line number in hex.
  print "%05x " % line
	
  # Print byte in hex.
  for index in line..(line+15)
    if chars[index]
      print "%02x " % chars[index].ord
    end
  end
  print "\n"
	
  # Print character.
  print "     "
  for index in line..(line+15)
    if chars[index]
      if chars[index].ord >= 0x80
        print "  ."
      elsif chars[index].ord >= 0x20
        print "  %s" % chars[index]
      else
        case chars[index]
          when "\a"
            print " \\a"
          when "\b"
            print " \\b"
          when "\f"
            print " \\f"
          when "\n"
            print " \\n"
          when "\r"
            print " \\r"
          when "\t"
            print " \\t"
          when "\v"
            print " \\v"
          else
            print " ^%s" % (chars[index].ord + 0x40).chr
	end
      end
    end
  end
  print "\n"
  
  # Go to next line.
  line += 16

end