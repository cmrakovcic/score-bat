require 'pry'
require 'json'
require 'open-uri'

require_relative '../lib/score_bat/api'
require_relative '../lib/score_bat/cli'
require_relative '../lib/score_bat/version'

require 'bundler/setup'
Bundler.require(:default, :development)