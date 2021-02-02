# require 'tty-prompt'
# require 'net/http'
# require 'open-uri'
# require 'json'
# require 'awesome_print'
# require 'pry'

# class ScoreBat::CLI
#     def call
#       puts "Welcome"
#       puts ap ScoreBatAPI.fetch_videos
#     end
#        system "clear"
#         puts "WELCOME TO SCORE BAT!"    
#         prompt = TTY::Prompt.new
#         while true do
#         option = prompt.select("What would you like to do?") do |options|
#           options.choice "See All Video Titles", 1
#           options.choice "See All Information on Videos", 2
#           options.choice "Exit", 3
#         end
#       if option === 1
#         titles
#       elsif option === 2
#         information
#       else option === 3
#         exited
#         break
#       end
#     end
#   end

#     def titles
#         videos = ScoreBatAPI.new.get_videos
#         videos.each do |video|
#       video_info = video.fetch_values("title") 
#       puts ap "#{video_info[0]}"
#         end
#       end

#     def information
#       sleep (1)
#       videos = ScoreBatAPI.new.get_videos
#       videos.each do |video|
#     video_info = video.fetch_values("title", "date", "competition") 
#       puts ap "Title: #{video_info[0]} --  Competition: #{video_info[2]} -- Date: #{video_info[1]}"
#         end
#     end
     

#     def exited
#         puts "Thank you! I Hope You Enjoyed The Videos!"
#         sleep (3)
#         system "clear"
#       end
#     end

class CLI

  def call
    puts "Welcome to ScoreBat!"
    API.fetch_videos
    self.menu
  end

  def menu
    puts "Would you like to see the list of videos?"
    puts "Type 'yes' to continue, or any other key to exit"

    user_input = gets.strip.downcase

    if user_input == "yes" || user_input == "y"
      display_list_of_videos
      ask_user_for_video_choice

      sleep(2)
      puts "\n"

      menu 
    else
      puts "Goodbye!"
    end
  end

  def display_list_of_videos
    Video.all.each.with_index(1) do |video, index|
      puts "#{index}. #{video.title}"
    end
  end

  def ask_user_for_video_choice
    puts "Enter the number of the video you would like to know more about"
    index = gets.strip.to_i - 1
    until index.between?(0, Video.all.length - 1)
      puts "Sorry, invalid choice. Choose a valid number"
      index = gets.strip.to_i - 1
    end

    video_instance = Video.all[index]
    display_video_details(video_instance)
  end

  def display_video_details(video)
    sleep(2)
    puts "\n"
    puts "Title: " + video.title
    puts "Date: " + video.date
    puts "Competition: " + video.competition.to_s
    puts "Url: " + video.url
  end
end