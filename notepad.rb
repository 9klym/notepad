require_relative 'post'
require_relative 'link'
require_relative 'memo'
require_relative 'task'

puts 'Добро пожаловать в Блокнот!'
puts 'Что вы хотите добавить?'

choices = Post.post_types

choice = -1

until choice >= 0 && choice < choices.size

  choices.each_with_index do |type,index|
    puts "\t #{index} - #{type}"

  end

  choice = STDIN.gets.chomp.to_i
end

enty = Post.create(choice)

enty.read_from_console

enty.save

puts 'Запись сохранена'

