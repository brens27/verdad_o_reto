class GamesView
	# Recuerda que la única responsabilidad de la vista es desplegar data al usuario
  def welcome
    puts "Bienvenid@ a Verdad o Reto"
    puts "Recuerda que también puedes modificar los retos y las verdades con add reto o add verdad"
    puts "Cuando quieras salir solo pon exit"
    puts "Vamos a empezar"
    puts "Verdad o Reto"

  end

  def get_answer
    gets.chomp
  end

  def verdad (question)
    puts "#{question}"
  end

  def reto (question)
    puts "#{question}"
  end

  def answer (question)
    puts "#{question}"
  end

  def next
    puts "Verdad o reto"
  end

  def else
    puts "No puedes tener 3 verdades seguidas. Escoge otra cosa."
  end

  def create_dare(question)
    puts "Has añadido este reto: #{question.question} a la lista."
      end

  def create_true(question)
    puts "Has añadido esta verdad: #{question.question} a la lista."
  end

	def error(message)
    puts "Hubo un error: #{message}"
	end

end
