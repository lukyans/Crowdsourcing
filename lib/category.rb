class Category
  attr_reader :age_group, :sex, :count

  def initialize(age_group, sex, count)
    @age_group = age_group
    @sex = sex
    if age_group == "children"
      @count = (count * 0.40).to_i
    else
      @count = (count * 0.60).to_i
    end
  end

  def self.distribute(gender_group)
    categories = ["children", "adults"]
    category_group = []
    categories.each do |category|
      gender_group.each{ |gender| category_group << Category.new(category, gender.sex, gender.count) }
    end
    category_group
  end
end
