class Memo < Post
  def to_strings
    time_string = "Создано : #{@creating_date.strftime('%d:%m:%Y, %H:%M:%S') } \n\r\n\r"
    @text.unshift(time_string)
  end

  def read_from_console
    puts 'Новая заметка(Все будет записано в текст заметки по ключевое слово end с новой строки)'
    @text = []
    line = nil

    while line != 'end'
    line = STDIN.gets.chomp
    @text << line
    end

    @text.pop
  end

end