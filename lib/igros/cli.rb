class Igros::CLI

  def call
    greeting
    sequence
    goodbye
  end

  def greeting
    puts "Welcome to my math gem!"
  end

  def sequence
    puts "Please chose a number between 1 and 100. When you are ready hit Enter."
    gets.strip
    my_number3
    my_number5
    my_number7
    your_number
    looper
  end

  def my_number3
    puts "Please divide your number into three and submit the remainder."
    begin
      @x3 = Integer(gets.chomp)
    rescue
      puts "Nice try! That's not even a number..."
      retry
    end
    unless @x3 < 3
      puts "Are you sure? it sounds like your math is off."
      my_number3
    else
      puts "The remainder for 3 was #{@x3}."
    end
  end

  def my_number5
    puts "\nNow, please divide your number into five and submit the remainder."
    begin
      @x5 = Integer(gets.chomp)
    rescue
      puts "Nice try! That's not even a number..."
      retry
    end
    unless @x5 < 5
      puts "Are you sure? it sounds like your math is off."
      my_number5
    else
      puts "The remainder for 5 was #{@x5}."
    end
  end

  def my_number7
    puts "\nAlmost done! Now please divide your number into seven and submit the remainder."
    begin
      @x7 = Integer(gets.chomp)
    rescue
      puts "Nice try! That's not even a number..."
      retry
    end
    unless @x7 < 7
      puts "Are you sure? it sounds like your math is off."
      my_number7
    else
      puts "The remainder for 7 was #{@x7}."
    end
  end

  def your_number
    @number = (@x3 * 70) + (@x5 * 21) + (@x7 * 15)
    until @number <= 105
      @number -= 105
    end
    if @number > 100
      puts "\nYou think you can outsmart me! Your number was #{@number}"
    else
      puts "\nAwesome! Your number was #{@number}. Wasn't that cool?"
    end
  end

  def looper
    puts "Wanna try again? (y/n)"
    input = gets.strip.downcase
    case input
    when "y"
      puts "Awesome!"
      sequence
    when "n"
      puts "That's ok, we had fun."
    else
      puts "I didn't catch that, please type 'y' for Yes or 'n' for No."
      looper
    end

    def goodbye
      puts "See you another time!"
    end
  end
end
