class Task < Post
  def initialize
    super
    @due_date = Time.now
  end

  def to_strings
    #todo
  end

  def read_from_console
    #todo
  end

  def save
    super
  end

  def file_path
    super
  end
end