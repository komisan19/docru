require 'minitest/autorun'

class Docru < MiniTest::Unit::Docru
	# magic test
	def docru
		assert_equal "docru", "docru"
	end

end
