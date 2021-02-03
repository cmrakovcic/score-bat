class CLI

  def call
    puts "Welcome to ScoreBat!"
    API.fetch_videos
    self.menu
  end

  def menu
    puts "Would you like to see the list of videos?"
    puts "Type 'yes' and press 'enter' to continue, or any other key to exit"

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
    puts "Enter the number of the video you would like to know more about, and press 'enter'"
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