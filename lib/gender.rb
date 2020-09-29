class Gender
  attr_accessor :sex, :count

  def initialize(sex, users)
    @sex = sex
    @count = users / 2
  end

  def self.distribute(users)
    genders = ["male", "female"]
    gender_group = genders.map{ |sex| Gender.new(sex, users) }
  end
end
