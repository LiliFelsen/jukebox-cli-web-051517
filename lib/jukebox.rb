songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
        - help : displays this help message
        - list : displays a list of songs you can play
        - play : lets you choose a song to play
        - exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  users_choice = gets.chomp
  if songs.include?(users_choice)
    puts "Playing #{users_choice}"
  elsif (1..9).to_a.include?(users_choice.to_i)
    puts "Playing #{songs[users_choice.to_i - 1]}"
  else
    puts "Invalid input, please try again."
  end
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  users_input = gets.chomp
    if users_input == "exit"
      exit_jukebox
    end

  while users_input != "exit"
    if users_input == "list"
      list(songs)
    elsif users_input == "play"
      play(songs)
    elsif users_input == "help"
      help
    else
      puts "Invalid input, please try again."
    end
    users_input = gets.chomp
  end
end
