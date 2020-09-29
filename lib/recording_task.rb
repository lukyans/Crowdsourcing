require_relative 'gender'
require_relative 'category'
require_relative 'language'
require_relative 'task_group'
require 'pry'

class RecordingTask
  def distribute(users)
    distribute_gender(users)
  end

  def distribute_gender(users)
    distribute_category(Gender.distribute(users))
  end

  def distribute_category(gender_group)
    distribute_language(Category.distribute(gender_group))
  end

  def distribute_language(category_group)
    distribute_task_group(Language.distribute(category_group))
  end

  def distribute_task_group(language_group)
    TaskGroup.distribute(language_group)
  end
end

recording_task = RecordingTask.new
recording_task.distribute(100)
