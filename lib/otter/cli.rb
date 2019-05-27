require "otter"
require "thor"
require 'fileutils'

module Otter
	class CLI < Thor
		desc "make {language}", "make Dockerfile"
		def make(str)
			case str
			when "ruby"
			  FileUtils.cp 'lib/otter/docker/ruby/Dockerfile', '.'
        puts true
			when "go"
				puts "sorry... There is no #{str} Dockerfile yet"
	    else 
				puts "I don't understand"
			end
		end

		desc "make_do {otter_string}}", "make docker-compose.yml"
		def make_do
			FileUtils.cp 'lib/otter/docker/compose/docker-compose.yml', '.'
			puts true
		end
	end
end
