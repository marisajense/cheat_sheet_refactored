@main_menu = %w[Command\ Line Search\  Exit]

@command_menu = %w[cp mv cd\  Main\ Menu\  Exit]

def main_menu
  puts "\n|Command Line Manual Pages|"
  @main_menu.each_with_index {|menu, i| puts "#{i + 1}. " + menu }
  main_choice = gets.strip.to_i
  case main_choice
  when 1
    command_line
  when 2
    search
  when 3
    puts "\nThanks for stopping by!"
    exit
  else
    puts "\nPlease pick a valid option!"
    main_menu
  end
end

def command_line
  puts "\n|Command Line Menu|"
  @command_menu.each_with_index {|command, i| puts "#{i + 1}. " + command }
  command_choice = gets.strip.to_i
  case command_choice
  when 1
    puts `man #{@command_menu[0]}`
  when 2
    puts `man #{@command_menu[1]}`
  when 3
    puts `man #{@command_menu[2]}`
  when 4
    main_menu
  when 5
    puts "\nThanks for stopping by!"
    exit
  else
    puts "\nPlease pick a valid option!"
  end
  command_line
end

def search
  print "\nWhat do you want to search? "
  search_item = gets.strip
  puts `man #{search_item}`
end

while true
  main_menu
end
