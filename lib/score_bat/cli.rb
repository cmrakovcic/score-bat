require 'tty-prompt'
require 'net/http'
require 'open-uri'
require 'json'
require 'awesome_print'
require 'pry'

class ScoreBat::CLI
    def call
      puts "Welcome"
      puts ap ScoreBatAPI.fetch_videos
    end
  #      system "clear"
  #       puts "WELCOME TO SCORE BAT!"    
  #       prompt = TTY::Prompt.new
  #       while true do
  #       option = prompt.select("What would you like to do?") do |options|
  #         options.choice "See All Video Titles", 1
  #         options.choice "See All Information on Videos", 2
  #         options.choice "Exit", 3
  #       end
  #     if option === 1
  #       titles
  #     elsif option === 2
  #       information
  #     else option === 3
  #       exited
  #       break
  #     end
  #   end
  # end

  #   def titles
  #       videos = ScoreBatAPI.new.get_videos
  #       videos.each do |video|
  #     video_info = video.fetch_values("title") 
  #     puts ap "#{video_info[0]}"
  #       end
  #     end

  #   def information
  #     sleep (1)
  #     videos = ScoreBatAPI.new.get_videos
  #     videos.each do |video|
  #   video_info = video.fetch_values("title", "date", "competition") 
  #     puts ap "Title: #{video_info[0]} --  Competition: #{video_info[2]} -- Date: #{video_info[1]}"
  #       end
  #   end
     

  #   def exited
  #       puts "Thank you! I Hope You Enjoyed The Videos!"
  #       sleep (3)
  #       system "clear"
  #     end
    end