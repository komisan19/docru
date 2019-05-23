require 'minitest/autorun'

class Docru < MiniTest::Test
	def setup
		@name = cli.
	end

	# magic test
	def test_make
		assert { make("ruby") == true} 
	end

end
