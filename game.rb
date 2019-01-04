require_relative 'story'

class Game
  attr_accessor :snippets
  def initialize()
    @name =
    @snippets = []
  end

  def nextSnippet(index)

    puts @snippets[index].story

    if index == 10
      randomNumber = rand(5) + 1
      puts "Hit enter to roll dice."
      empty = gets.chomp
      p randomNumber
    else
      puts "\n Make your choice!"
      answer = gets.chomp
    end

    if index == 1 && answer == "today" || answer == "Today"
      nextSnippet(@snippets[index].nextStory[0])
    elsif index == 1
      nextSnippet(@snippets[index].nextStory[1])
    else
      if answer == "a" || answer == "A"|| answer == "today" || answer =="Today" || randomNumber == 2 || randomNumber == 4 || randomNumber == 6
        nextSnippet(@snippets[index].nextStory[0])
      elsif answer == "b" || answer == "B" || randomNumber == 1 || randomNumber == 5 || randomNumber == 3
        nextSnippet(@snippets[index].nextStory[1])
      elsif answer == "c" || answer == "C"
        nextSnippet(@snippets[index].nextStory[2])
      else
        puts "Invalid response"
        nextSnippet(index)
      end

    end
  end

  def makeArray(snippet)
    @snippets << snippet
  end

  def startGame
    puts "What, shall we call you?"
    name = gets
    puts "\n Welcome, #{name}
    Let's get you caught up so you can jump right into the story.

    You are headed to a magic castle that is known to hold the strongest dragons in the world in search of the best pet dragon possible.

    Plot twist, you are a fairy princess and your reason for wanting a pet dragon is because all of your fairy princess friends have been showing off their dragons on FairyGram and you seem to be the only one without a pet dragon of your own. You lack confidence without a magical dragon and feel like an imposter fairy, even though you are a top tier fairy princess.

    Unfortunately, you have forgotten your wand at home and cannot use your fairy powers without it.  Even with this knowledge you have decided to carry on with your journey.

    After hours of walking (because you do not have a dragon to fly), you finally arrive and see the magnificent castle in all its glory.  You walk up to the front door and see a guard standing there."
    nextSnippet(1)
  end

end

gameTest = Game.new()

story0 = Snippet.new("DUMMY STRING", nil, nil, nil)

story1 = Snippet.new("The guard gives you a riddle that you must answer to enter the castle. Tomorrow's yesterday. Yesterday's tomorrow. What is it?", 9, 2, nil)

story2 = Snippet.new("You answered the riddle incorrectly, a trap door below you opens up and you fall down into a dungeon.  You look around and see a sleeping troll guarding a door. You notice a necklace with a key around its neck that you presume will open the guarded door.  You also see an unguarded door, a shovel, and an axe you could potentially fight the troll with. Which option do you choose? \n A) Fight \n B) Sneak away", 3, 6, nil)

story3 = Snippet.new("You have decided to fight the troll, do you pick up the shovel or the axe? \n A) Shovel \n B) Axe", 4, 4, nil)

story4 = Snippet.new("The troll sees you reach for your weapon and immediately smashes your head in with his giant fist. You die. Why would you choose to fight a troll with no powers? TRY AGAIN? Press \"A\" to restart the game.", 1, nil, nil)

story5 = Snippet.new("You have decided to sneak through the door. On the other side, you encounter a dungeon guard. The guard threatens to kill you but gives you two options to escape death...because he is bored and needs some entertainment in the boring dungeon that he is guarding. Which do you accept? \n A) He challenges you to go back and fight the troll sleeping in the previous room. \n B) He gives you a key to a door with a giant EXIT sign above it, gives you a wink, and wishes you good luck.", 3, 6, nil)

story6 = Snippet.new("You walk through the door and realize that it was not an actual exit (surprise). You encounter a dragon chained to the ground with sad puppy dog eyes, hoping for a rescue from a brave knight...except you are a fairy princess. \n A) You choose to unchain the dragon and hope that it does not kill you. \n B) You decide to leave the dragon chained up and run towards the door you entered.", 7, 8, nil)

story7 = Snippet.new("You successfully unchain the dragon. It is so appreciative that it busts through the wall, flying you to safety. Out of the dark dungeon, you realize how beautiful the dragon is and that you will not need to use FairyGram filters when showing your new dragon off. You win! Press \"A\" to restart the game.", 1, nil, nil)

story8 = Snippet.new("As you run towards the door, the now angry dragon decides to blow a huge flame that toasts you like a glittery marshmallow, throws you between two graham crackers and a piece of chocolate and eats you like a smore. Your game is over but, as a consolation, the dragon said that you tasted delicious. TRY AGAIN? Press \"A\" to restart the game.", 1, nil, nil)

story9 = Snippet.new("You answered the riddle correctly. The guard allows you to pass and enter the castle. As you enter, the first thing that you notice is two sets of stairs, very Beauty and the Beast style. You have to choose which staircase to take, the right or the left. \n A) You choose the left staircase. \n B) You choose the right staircase.", 10, 17, nil)

story10 = Snippet.new("You encounter a suspicious jester. The jester hands you a die. Depending on what you roll, he offers to give you advice on how to navigate the castle. You roll the die and roll a... #{@randomNumber}", 11, 12, nil)

story11 = Snippet.new("You rolled an even number. Just as the jester is about to reveal to you the secrets of the castle, a bright light shines in your eyes. You awake from your drunken, passed out state. It was all a dream. Go clean yourself up! You are covered in glitter and only a fairy princess when drunk. TRY AGAIN? Press \"A\" to restart the game.", 1, nil, nil)

story12 = Snippet.new("You rolled an odd number. The jester gives you an elaborate plan for maneuvering the castle to find your dragon. Although thankful, the jester seems untrustworthy. What will you choose to do with the information that the jester gave you? \n A) You choose to follow the directions given by the jester. \n B) You choose to ignore the directions.", 13, 14, nil)

story13 = Snippet.new("After following the steps given, you find yourself in a room with a sleeping dragon. Upon walking in, your cell phone rings, waking the dragon. The dragon hates your ring tone and eats you out of anger. TRY AGAIN? Press \"A\" to restart the game.", 1, nil, nil)

story14 = Snippet.new("You ignored the directions and choose to go down a different hallway. You can either take your time and walk down the long hallway cautiously or you can run down the hallway to save time but tire yourself out for any potential dangers down the road. \n A) You walk down the hallway. \n B) While run down the hallway.", 15, 16, nil)

story15 = Snippet.new("At the end of the hallway, you find a baby dragon near a door that leads you out of the castle and to safety. How conveniently luckly of you! You pick up the baby dragon and carry it home where it becomes your pet that you raise. You win! Press \"A\" to restart the game.", 1, nil, nil)

story16 = Snippet.new("You trip and fall, causing you to wake up from the dream that you were having covered in glitter and vomit realizing that you are only a fairy princess when you are drunk. Take some advil and put on some sunglasses before going to class. Press \"A\" to play again.", 1, nil, nil)

story17 = Snippet.new("You chose the right staircase. At the top of the stairs, you encounter a  servant in dire need of assistance. It looks like they have been beaten and injured. You see three options... \n A) You can help the servant and tend to their injuries. \n B) You can sneak passed the servant in an attempt to avoid a social interaction because those are scary. \n C) Knock out the servant with the conviently placed shovel next to you.", 10, 18, 22)

story18 = Snippet.new("You sneak passed the servant and arrive at a fireman pole. You choose to slide down because, who turns down a fun fireman pole? They are super fun and it has been a stressful day so far. Anyways, back to the story... \n The pole lands you in the middle of a corridor. You can go north or south. You pull up the compass app on your phone that no one ever uses but it is handy for situations like this... You decide that \n A) North is a best option. \n B) South is the best option.", 19, 20, nil)

story19 = Snippet.new("You head south and find a beautiful corridor with many chandeliers and and room filled with gold.  A chandelier prompty falls on your head and you wake up from your vivid nightmare to realize that you are not a magical fairy princess, but a borderline alcoholic with serious problems that should probably chill out with the drinking on Monday nights becuase you are turning into a monster that is driving away your friends and family with your issues.  You decide to seek therapy and change your life for the better. You become a rich and successful businessperson that goes on to coincidentally die from a chandelier falling on your head in your mid 60s. Press \"A\" to play again.", 1, nil, nil)

story20 = Snippet.new("You head north along the corridor to find a small lost kitten.  The kitten seems kind and you, for an unknown reason, are able to speak cat. Do you... \n A) Play with the kitten for awhile and consider your options \n B) Ask the kitten for directions to the nearest dragon", 21, 10, nil)

story21 = Snippet.new("You realize the kitten is a better pet than a dragon and maybe a dragon was not the best idea considering you only have a small studio apartment and your landlord might be pissed at your pet dragon.  Also, the 20-foot dragon may violate the 20-pound pet  weight limit in your complex. Press \"A\" to play again, congrats on the kitten.", 1, nil, nil)

story22 = Snippet.new("After you bashed in the servants head with a shovel, you make your way down the hall and find a balcony overlooking the courtyard of the castle.  There you see it, the most beautiful dragon you have ever seen.  As you call out to it, a strong gust of wind blows you off the balcony where you fall to your death in the rose garden below. You \"fell\" just short of your goal... get it? fell... like off the balcony... haha. TRY AGAIN? Press \"A\" to restart the game.", 1, nil, nil)



gameTest.makeArray(story0)
gameTest.makeArray(story1)
gameTest.makeArray(story2)
gameTest.makeArray(story3)
gameTest.makeArray(story4)
gameTest.makeArray(story5)
gameTest.makeArray(story6)
gameTest.makeArray(story7)
gameTest.makeArray(story8)
gameTest.makeArray(story9)
gameTest.makeArray(story10)
gameTest.makeArray(story11)
gameTest.makeArray(story12)
gameTest.makeArray(story13)
gameTest.makeArray(story14)
gameTest.makeArray(story15)
gameTest.makeArray(story16)
gameTest.makeArray(story17)
gameTest.makeArray(story18)
gameTest.makeArray(story19)
gameTest.makeArray(story20)
gameTest.makeArray(story21)
gameTest.makeArray(story22)

gameTest.snippets

p gameTest.startGame
