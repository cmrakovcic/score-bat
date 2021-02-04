class Video
    attr_accessor :title, :date, :competition, :url
    @@all = []

    def initialize
        @@all << self
    end

    def self.all
        @@all
    end
end