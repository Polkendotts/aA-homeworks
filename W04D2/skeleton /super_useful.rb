# # PHASE 2
# def convert_to_int(str)
#   Integer(str)
# end

class CoffeeError < StandardError
  def message
    "I love coffeeeeeeee but you messed up dummy try again"
  end 
end 

class NotFruitError < StandardError
  def message
    "thats not a fruit!!! >:((((((( I'll never forgive you for this, no more chances!"
  end 
end 

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit == "coffee"
    raise CoffeeError
  else 
    raise NotFruitError
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"

  begin 
  maybe_fruit = gets.chomp
  reaction(maybe_fruit) 

  rescue CoffeeError => e
    puts e.message
    retry 
  rescue NotFruitError => e
    puts e.message
  end 
  
end  

# PHASE 4
class BestFriend

  def initialize(name, yrs_known, fav_pastime)

    raise ArgumentError.new "You have to input a name!!" if name.empty?
    raise ArgumentError.new "Have to be friends at least 5 yrs" if yrs.known < 5
    raise ArumentError.new "Add in a fav pastime" if fav_pastime.empty?

    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
  end


  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


