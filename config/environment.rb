require 'net/http'
require 'open-uri'
require 'json'
require 'awesome_print'
require 'pry'
require 'lolize/auto'

require_relative '../lib/score_bat/api'
require_relative '../lib/score_bat/cli'
require_relative '../lib/score_bat/version'
require_relative '../lib/score_bat/video'

require 'bundler/setup'
Bundler.require(:default, :development)