

module Shout
 def yell_angrily(words)
    puts words + "!!!" + " :("
  end

  def yell_happily(words)
  	puts words + "!!!" + " :)"
  end

end


# puts Shout.yell_angrily("arrgg")
# puts Shout.yell_happily("Whoo Hooo")

class Angry
  include Shout
end

class Happy
  include Shout
end

angry = Angry.new
angry.yell_angrily("This will not stand")
angry.yell_angrily("There are rules")

happy = Happy.new
happy.yell_happily("Woo Hoo")
happy.yell_happily("How about that?")

