class ScoreBat::Video
    attr_accessor :title, :information
    @@all = []

    def initialize(title, information)
        @title = title
        @information = information
        @@all << self
    end

    def self.all
        @@all
    end
end