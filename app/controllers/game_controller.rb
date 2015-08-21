class GamesController
  def initialize(argv)
    @argv = argv
    @view = GamesView.new
    @true = True.new
    @answer = Answer.new
    @dare = Dare.new
    @counter = 0
    master
  end
  
  def master
    @view.welcome
    command = @view.get_answer
    while command != "exit" do 
    start(command)
    command = @view.get_answer
    end    
  end

  def start(command)
      if command == "verdad" 
        @counter += 1
          if @counter < 3 
            verdad
          else
            @view.else
          end
      elsif command == "reto"
        reto
        @counter = 0
      elsif command == "add reto"
        add = @view.get_answer
        add_dare(add)
      elsif command == "add verdad"
        add_t = @view.get_answer
        add_true(add_t)
      else
      message = "Ese comando no existe."
      @view.error(message)
      end
  end

  def verdad
    question_array = True.all
    question = question_array.shuffle.first.question
    @view.verdad(question)
    @view.get_answer
    random_questions
  end

  def random_questions
    questions_array = Answer.all
    question = questions_array.shuffle.first.answer
    @view.answer(question)
  end

  def reto
    questions_array = Dare.all
    question = questions_array.shuffle.first.question
    @view.reto(question)
    random_questions
  end 

  def modify
    @view.modify
    # @view.get_answer
  end

  def add_dare(add)
    # puts "esto es add"
    question_new = Dare.new({question: add})
    if question_new.save
      @view.create_dare(question_new)
    else
      message = game.errors.messages.first
      @view.error(message)
    end
  end

  def add_true(add)
    question_new = True.new({question: add})
    if question_new.save
      @view.create_true(question_new)
    else
      message = game.errors.messages.first
      @view.error(message)
    end
  end

  def end_1
    @view.end_1
  end
 
end
