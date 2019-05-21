require "docru"
require "thor"

module Docru
	class CLI < Thor
		dessc "make {Docru_string}", "make Dockerfile"
		def make(str)
			open('../docker/Dockerfile', 'w') do |f|
				f.puts ""
			end
		end

		desc "make_do {Docru_strin}}", "make docker-compose.yml"
		def make_do(str)

		end
	end
end
