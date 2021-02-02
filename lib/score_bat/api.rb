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