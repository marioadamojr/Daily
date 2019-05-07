# acts as  enviroment
# anything bin file requires put here because bin calls this ./bin/daily
require_relative "./daily/version"
require_relative './daily/cli'
require_relative './daily/deal'

require "nokogiri" #adds Nokogiri to the project
require "pry"
require "open-uri"
