require 'minitest'
require 'minitest/autorun'
require './lib/gender'
require './lib/category'
require './lib/language'

class LanguageTest < Minitest::Test
  def test_distribute_category
    gender_group = Gender.distribute(100)
    category_group = Category.distribute(gender_group)

    assert_equal "children", Language.distribute(category_group).first.age_group
    assert_equal 5, Language.distribute(category_group).first.count
    assert_equal "male", Language.distribute(category_group).first.sex
    assert_equal "english", Language.distribute(category_group).first.language
  end
end
