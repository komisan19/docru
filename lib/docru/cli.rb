require "docru"
require "thor"
require 'fileutils'

module Docru
	class CLI < Thor
		desc "make {language}", "make Dockerfile"
		def make(str)
			case str
			when "ruby"
			  FileUtils.cp 'lib/docru/docker/ruby/Dockerfile', '.'
        puts true
			when "go"
				puts "sorry... There is no #{str} Dockerfile yet"
			when "Elixir"
				puts "sorry... There is no #{str} Dockerfile yet"
	    else 
				puts "I don't understand"
		  end
		end

		desc "make_do {Docru_string}}", "make docker-compose.yml"
		def make_do(str)
      
		end
	end
end
