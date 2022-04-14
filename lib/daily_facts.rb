# frozen_string_literal: true

require 'pry'
require 'nokogiri'
require 'open-uri'

require_relative "./daily_facts/version"
require_relative "./daily_facts/scraper"
require_relative "./daily_facts/cli"

module DailyFacts
  class Error < StandardError; end
  # Your code goes here...
end
