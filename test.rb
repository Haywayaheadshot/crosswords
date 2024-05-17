# function name ago
# function takes param secs(int) never null
# function returns str(secs converted to words)
# should support days and weeks also

# def ago(secs)
#     # # calc for weeks
#     # wks = (7 * 24 * 3600)
#     # remainder = secs % (7 * 24 * 3600)
#     # # calc for days
#     hr = 3600

#     # output
#     if secs < 60
#         puts "#{secs} seconds ago"
#     elsif secs < hr
#        mins = secs / 60
#        remainder = secs % 60
#        if remainder == 0
#         puts "#{mins} minute(s) ago"
#        else
#          puts "#{mins} minute(s) #{remainder} second(s) ago"
#        end
#     else
#         # calc for hours and more
#         hr_count = secs / hr
#         remainder = secs % hr
#         if remainder == 0
#             puts "#{hr_count} hour(s) ago"
#            else
#             puts "#{hr_count} hour(s) #{remainder} second(s) ago"
#         end
#     end

# end


def ago(seconds)
  weeks = seconds / (7 * 24 * 60 * 60)
  seconds %= (7 * 24 * 60 * 60)
  days = seconds / (24 * 60 * 60)
  seconds %= (24 * 60 * 60)
  hours = seconds / (60 * 60)
  seconds %= (60 * 60)
  minutes = seconds / 60
  seconds %= 60

  time_parts = []
  time_parts << "#{weeks} week#{'s' if weeks != 1}" if weeks > 0
  time_parts << "#{days} day#{'s' if days != 1}" if days > 0
  time_parts << "#{hours} hour#{'s' if hours != 1}" if hours > 0
  time_parts << "#{minutes} minute#{'s' if minutes != 1}" if minutes > 0
  time_parts << "#{seconds} second#{'s' if seconds != 1}" if seconds > 0

  time_parts.join(' and ')
end

puts ago(3610) # Output: "1 hour and 10 seconds"



# puts ago(62) #1 minute ago
puts ago(62) #1 minute 2 seconds ago
# puts ago(3610) # 1hour 10 seconds ago