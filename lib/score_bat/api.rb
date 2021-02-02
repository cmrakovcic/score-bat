# require 'net/http'
# require 'open-uri'
# require 'json'
# require 'awesome_print'
# require 'pry'

class API

  def self.fetch_videos
    url = "https://www.scorebat.com/video-api/v1/"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    hash = JSON.parse(response)
    hash.each do |video_hash|
      video = Video.new
      video.title = video_hash["title"]
      video.date = video_hash["date"]
      video.competition = video_hash["competition"]
      video.url = video_hash["url"]

    end
  end
end

#     URL = "https://www.scorebat.com/video-api/v1/"

#   def get_videos
#     uri = URI.parse(URL)
#     response = Net::HTTP.get_response(uri)
#     json = JSON.parse(response.body)
#   end


#   def video_titles(json)
#     videos = []
#       json.collect do |video|
#         videos << video["title"]
#     end
#   end
# end
