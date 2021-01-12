require 'net/http'
require 'open-uri'
require 'json'
require 'awesome_print'
require 'pry'

class ScoreBatAPI1

    URL = "https://www.scorebat.com/video-api/v1/"

  def get_videos
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    json = JSON.parse(response.body)
    video_titles(json)
  end

  def video_titles(json)
    videos = []
      json.collect do |video|
        videos << video["title"]
    end
  end
  
end

class ScoreBatAPI2
  
  URL = "https://www.scorebat.com/video-api/v1/"
  
  def get_videos
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    json = JSON.parse(response.body)[0]
  end

end

videos = ScoreBatAPI1.new.get_videos
puts ap videos.uniq

videos = ScoreBatAPI2.new.get_videos
puts ap videos.uniq