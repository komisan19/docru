require "docru"
require "thor"
require 'fileutils'

module Docru
	class CLI < Thor
		desc "make ruby", "make Dockerfile by ruby"
		def make(str)
			FileUtils.cp 'lib/docru/docker/ruby/Dockerfile', '.'
			puts "true"
		end

		desc "make_do {Docru_strin}}", "make docker-compose.yml"
		def make_do(str)

		end
	end
end
