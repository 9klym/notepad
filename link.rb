class Link < Post
  def initialize
    super
    @url = ''
  end

  def to_strings
    time_string = "Создано : #{@creating_date.strftime("%d:%m:%Y, %H:%M:%S") } \n\r\n\r"
    [@url,@text,time_string]
  end

  def read_from_console
    puts 'Введите адрес ссылки'
    @url = STDIN.gets.chomp
    puts 'Введите описание ссылки'
    @text = STDIN.gets.chomp

  end


end