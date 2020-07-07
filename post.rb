class Post
  def initialize
    @creating_date = Time.now
    @text = nil
  end

  def to_strings
    #todo
  end

  def read_from_console
    #todo
  end

  def save
    file = File.new(file_path, 'w:UTF-8')

    to_strings.each { |item|
      file.puts(item)
    }

    file.close
  end

  def file_path
    current_path = File.dirname(__FILE__)
    file_name = @creating_date.strftime("#{self.class.name}_%d.%m.%Y_%H-%M-%S")
  end
end