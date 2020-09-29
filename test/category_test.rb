require 'minitest'
require 'minitest/autorun'
require './lib/gender'
require './lib/category'

class CategoryTest < Minitest::Test
  def test_distribute_category
    gender_group = Gender.distribute(100)
    
    assert_equal "children", Category.distribute(gender_group).first.age_group
    assert_equal 20, Category.distribute(gender_group).first.count
    assert_equal "male", Category.distribute(gender_group).first.sex
  end
end
