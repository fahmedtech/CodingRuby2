=begin
Name: Faizan Ahmed
IT-212 401
Project 1: Bitwise Operations
=end

#1. Convert int 59 and 125 into binary and hex

# a = 59; 
# 59 -32 = 27 -16 = 11 -8 = 3 -2 = 1 -1 =0
# Binary = 00111011
# Hex = 3b  //since 0011 = 3 and 1011 = 11 meaning 'b'

# b = 125;
# 125 -64 = 61 -32 = 29 -16 = 13 -8 = 5 -4 = 1 -1 =0
# Binary = 01111101
# Hex = 7d  //since 0111 = 7 and 1101 = 13 meaning 'd'

#-------------------------------------------------------------------------------
#2. Compute values of a|b  a&b  a^b

# Bitwise Or       Bitwise And       Bitwise XOr    
#==================================================
#   59 -->00111011   59 -->00111011   59 -->00111011   
#  125 -->01111101  125 -->01111101  125 -->01111101        
#         --------         --------         -------- 
#         01111111         00111001         01000110

#-------------------------------------------------------------------------------
#3. Convert the results from Part 2 to hex and decimal

# Or
# 01111111 = (0111 = 4+2+1 = '7') (1111 = 8+4+2+1 = 15 or 'f')
# hex = 7f
# 01111111 = 64+32+16+8+4+2+1 = '127'
# decimal = 127

# AND
# 00111001 = (0011 = 2+1 = '3') (1001 = 8+1 = '9')
# hex = 39
# 00111001 = 32+16+8+1 = '57'
# decimal = 57

# Xor
# 01000110 = (0100 = 4 = '4') (0110 = 4+2 = '6')
# hex = 46
# 01000110 = 64+4+2 = '70'
# decimal = 70

#-------------------------------------------------------------------------------
#4. Ruby Program to verify calculations in Parts 2 and 3

a = 59     # You could also input 82 as 0b01010010 or 0x52
b = 125    # You could also input 107 as as 0b01101001 or 0x69

print "a \n"
print "%02x %d %08b \n" % [a, a, a]
print "\nb \n"
print "%02x %d %08b \n" % [b, b, b]

print "\nOR\n"
c = a | b
print "%02x %d %08b \n" % [c, c, c]

print "\nAND\n"
c = a & b
print "%02x %d %08b \n" % [c, c, c]

print "\nXor\n"
c = a ^ b
print "%02x %d %08b \n" % [c, c, c]

#-------------------------------------------------------------------------------
#5. Interpret data in quiz-scores.bin 

# In Command Prompt
# ruby hexdump.rb quiz-scores.bin > dump.txt

=begin

1. 
field 1 (first_name): 53 61 6c 79 20 20 20
8 bytes: ASCII code for 'Sally' padded with three spaces.
field 2 (student_id): 38 17
2 bytes: The student id '3817' consists of 4 packed decimal digits.
field 3 (quiz_answer): 20 = 00100000  
1 byte: 00100 represents the answers to a true/false quiz F,F,T,F,F with 
3 zero bits of padding.

2.
field 1 (first_name): 50 61 74 72 69 63 20
8 bytes: ASCII code for 'Patrick' padded with one space.
field 2 (student_id): 50 19 
2 bytes: The student id '5019' consists of 4 packed decimal digits.
field 3 (quiz_answer): 68 = 01101000 
1 byte: 01101 represents the answers to a true/false quiz F,T,T,F,T with 
3 zero bits of padding.


3.
field 1 (first_name): 43 68 6c 6f 65 20 20 20
8 bytes: ASCII code for 'Chloe' padded with three spaces.
field 2 (student_id): 49 23 
2 bytes: The student id '4923' consists of 4 packed decimal digits.
field 3 (quiz_answer): 68 = 01101000   
1 byte: 01101 represents the answers to a true/false quiz F,T,T,F,T with 
3 zero bits of padding.


4.
field 1 (first_name): 42 72 61 6e 64 6f 6e 20
8 bytes: ASCII code for 'Brandon' padded with one space.
field 2 (student_id): 88 15 
2 bytes: The student id '8815' consists of 4 packed decimal digits.
field 3 (quiz_answer): e8 = 11101000   
1 byte: 11101 represents the answers to a true/false quiz T,T,T,F,T with 
3 zero bits of padding.


5.
field 1 (first_name): 4b 69 6d 62 65 72 6c 79
8 bytes: ASCII code for 'Kimberly' padded with three spaces.
field 2 (student_id): 22 10 
2 bytes: The student id '2210' consists of 4 packed decimal digits.
field 3 (quiz_answer): 28 = 00101000   
1 byte: 00101 represents the answers to a true/false quiz F,F,T,F,T with 
3 zero bits of padding.

=end


