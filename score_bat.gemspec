Gem::Specification.new do |spec|
  spec.name        = 'score-bat'
  spec.version     = "0.1.2"
  spec.date        = '01-07-2021'
  spec.summary     = "Score Bat is site to view videos and highlights from a number of football leagues and tournaments including the Premier League, Champions League, La Liga, Serie A, Europa League and many more."
  spec.description = "Provides soccer videos and highlights."
  spec.authors     = ["Christopher Mrakovcic"]
  spec.email       = 'cmrakovcic@aol.com'
  spec.files       = ["lib/score_bat", "lib/score_bat/api", "lib/score_bat/cli", "lib/score_bat/video", "config/environment"]
  spec.homepage    = 'https://github.com/cmrakovcic/score-bat'
  spec.license     = 'MIT'
  spec.executables << 'ruby bin/run'

  spec.add_development_dependency "bundler", "~> 2.2"
  spec.add_development_dependency "json", "~> 2.5"
  spec.add_development_dependency "pry", "~> 0.13.1"
  spec.add_development_dependency "tty-prompt", "~> 0.23.0"
  spec.add_development_dependency "lolize", "~> 0.0.3"
end