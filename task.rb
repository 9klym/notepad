require 'date'

class Task < Post
  def initialize
    super
    @due_date = Time.now
  end

  def to_strings
    time_string = "Создано : #{@creating_date.strftime("%d:%m:%Y, %H:%M:%S") } \n\r\n\r"
    deadline_string = "Нужно выполнить до: #{@due_date}"
    [deadline_string, @text, time_string]
  end

  def read_from_console
    puts 'Какую задачу нужно выполнить?'
    @text = STDIN.gets.chomp
    puts "К какоому числу? Укажите дату в формате ДД.ММ.ГГГГ,наример #{@due_date.strftime("%d.%m.%Y")}"
    input = STDIN.gets.chomp
    puts input
    @due_date = Date.parse(input)
  end

  def save
    super
  end

  def file_path
    super
  end
end