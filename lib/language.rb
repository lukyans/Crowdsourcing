class Language
  attr_reader :language, :sex, :age_group, :count

  def initialize(language, sex, age_group, count)
    @language = language
    @sex = sex
    @age_group = age_group
    @count = (count * 0.25).ceil/1
  end

  def self.distribute(category_group)
    languages = ["english", "french", "indian", "japanesse"]
    language_group = []
    category_group.map do |category|
      languages.each{ |lang| language_group << Language.new(lang, category.sex, category.age_group, category.count) }
    end
    language_group
  end
end
