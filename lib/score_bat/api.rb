require 'net/http'
require 'open-uri'
require 'json'
require 'awesome_print'
require 'pry'

class ScoreBatAPI

    URL = "https://www.scorebat.com/video-api/v1/"

  def get_videos
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    json = JSON.parse(response.body)
  end


  def video_titles(json)
    videos = []
      json.collect do |video|
        videos << video["title"]
    end
  end
end
