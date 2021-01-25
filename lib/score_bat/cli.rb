require 'tty-prompt'
require 'net/http'
require 'open-uri'
require 'json'
require 'awesome_print'
require 'pry'

class ScoreBat::CLI
    def call
       system "clear"
        puts "WELCOME TO SCORE BAT!"    
        prompt = TTY::Prompt.new
        while true do
        option = prompt.select("What would you like to do?") do |options|
          options.choice "See All Video Titles", 1
          options.choice "See All Information on Videos", 2
          options.choice "Exit", 3
        end
      if option === 1
        titles
      elsif option === 2
        information
      else option === 3
        exiting
        break
      end
    end
  end

      def titles
        videos = ScoreBatAPI.new.get_videos
        puts ap videos.uniq
      end

      def information
        videos = ScoreBatAPI.new.get_videos
        puts ap videos.uniq
      end

      def exiting
        puts "Thank you! I Hope You Enjoyed The Videos!"
        sleep (3)
        system "clear"
      end

end