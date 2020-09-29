class TaskGroup
  attr_accessor :sex, :age_group, :language, :count

  def initialize(sex, age_group, language, count)
    @sex = sex
    @age_group = age_group
    @language = language
    @count = count
  end

  def self.distribute(language_group)
    task_group = []
    language_group.each do |lang|
      task_group << TaskGroup.new(lang.sex, lang.age_group, lang.language, lang.count)
    end
    p "#{task_group.count} task groups:"
    task_group.each do |group|
      p "Task group of #{group.count} users who are #{group.sex}, #{group.age_group}, #{group.language}"
    end
  end
end
