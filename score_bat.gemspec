require_relative '../lib/score_bat/version.rb'

Gem::Specification.new do |spec|
  spec.name        = 'score-bat'
  spec.version     = ScoreBat::VERSION
  spec.date        = '01-07-2021'
  spec.summary     = "Score Bat is site to view videos and highlights from a number of football leagues and tournaments including the Premier League, Champions League, La Liga, Serie A, Europa League and many more."
  spec.description = "Provides soccer videos and highlights."
  spec.authors     = ["Christopher Mrakovcic"]
  spec.email       = 'cmrakovcic@aol.com'
  spec.files       = ["lib/score_bat.rb", "lib/score_bat/cli.rb", "lib/score_bat/api.rb", "config/environment.rb"]
  spec.homepage    = 'https://github.com/cmrakovcic/score-bat'
  spec.license     = 'MIT'
  spec.executables << 'score_bat'

  spec.add_development_dependency "bundler", "~> 2.2"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.10"
  spec.add_development_dependency "json", "~> 2.5"
  spec.add_development_dependency "pry", "~> 0.13.1"
  spec.add_development_dependency "tty-prompt", "~> 0.23.0"
  spec.add_development_dependency "awesome_print", "~> 1.8"
end