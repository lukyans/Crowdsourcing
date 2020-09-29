require 'minitest'
require 'minitest/autorun'
require './lib/gender'

class GenderTest < Minitest::Test
  def test_distribute_gender
     assert_equal "male", Gender.distribute(100).first.sex
     assert_equal 50, Gender.distribute(100).first.count

     assert_equal "female", Gender.distribute(100).last.sex
     assert_equal 50, Gender.distribute(100).last.count
  end
end
