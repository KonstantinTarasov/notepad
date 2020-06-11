class Memo < Post

  def read_from_console
    puts 'Новая заметка (все, что пишется до строки \"end\") :'

    @text = []
    line = nil

     until line == 'end'
      # Читаем очередную строку и записываем из ввода пользователя
      line = STDIN.gets.chomp

      # Напомню, что изначально в переменной @text у нас пустой массив (смотрите
      # конструктор класса-родителя Post).
      @text << line
    end

    @text.pop
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime('%Y.%m.%d, %H:%M:%S')}\n"

   
    @text.unshift(time_string)
  end
end