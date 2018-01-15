class Test
#  json = '{"ab":"sdfsdf", "bc":"sdfsdf"}'
# Test.new.parse_integers_from_specific_JSON (json)
# 	def parse_integers_from_specific_JSON (json)
# 		hash = {}
# 		json.each_char do |c|
# 			next if c =="\"" || c =="{" || c == ":"
# 			hash[c] = "" unless c == ":"
# 			binding.pry
# 		end
#   # ary_depth = 0     # Level of nesting within arrays
#   # obj_depth = 0     # Level of nesting within objects
#   # in_string = false # Flag for whether the parser is inside a string
#   # escaped = false   # Flag for whether the next character will be escaped
#   # int_buffer = ""   # String buffer for integer digits
#   # integers = []     # Result array of integers

#   # string.each_char do |c|
#   # 	binding.pry
#   #   if (in_string) && !(escaped) && (c == '\\')
#   #     # When an escape character is found in a string, set the 'escaped' flag
#   #     escaped = true
#   #     next
#   #   end

#   #   if (c == '"')
#   #     if !in_string
#   #       # When a quote is found outside a string, enter the new string
#   #       in_string = true

#   #     elsif escaped
#   #       # When an escaped quote is found within a string, ignore it

#   #     else
#   #       # When an unescaped quote is found within a string, exit the string
#   #       in_string = false
#   #     end
#   #   end

#   #   # If relevant, the 'escaped' flag has escaped its quote by now; unset it
#   #   escaped = false

#   #   if !(in_string) && (c =~ /\d/) && (obj_depth == 0) && (ary_depth == 2)
#   #     # If a digit is encountered at the correctly nested position,
#   #     # append it to the integer buffer string
#   #     int_buffer << c

#   #   elsif !(int_buffer.empty?)
#   #     # If the integer buffer string has digits in it and the current character
#   #     # is not a digit, flush the contents of the buffer into the result array
#   #     integers << int_buffer.to_i
#   #     int_buffer.clear
#   #   end

#   #   unless in_string
#   #     # Check for unquoted special characters and adjust depth
#   #     case c
#   #     when '{' then obj_depth += 1
#   #     when '}' then obj_depth -= 1
#   #     when '[' then ary_depth += 1
#   #     when ']' then ary_depth -= 1
#   #     end
#   #   end
#   # end

#   # return integers
# end
end