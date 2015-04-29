class BeerSong 

  attr_accessor :multiple_verses

  def initialize 
    @multiple_verses = mutliple_verses = []
  end

  
  def verse(verse_number)
    case verse_number
    when 3..99
    "#{verse_number} #{bottles}, #{verse_number} bottles of beer.\n" \
    "#{take}#{verse_number-1} #{bottles}.\n"
    when 2
    "#{verse_number} #{bottles}, #{verse_number} bottles of beer.\n" \
    "#{take}#{verse_number-1} bottle of beer on the wall.\n"
    when 1
    "#{verse_number} bottle of beer on the wall, #{verse_number} bottle of beer.\n" \
    "Take it down and pass it around, no more #{bottles}.\n"
    when 0 
    "No more #{bottles}, no more bottles of beer.\n" \
    "Go to the store and buy some more, 99 #{bottles}.\n"
    end
  end

  def verses(high_verse, low_verse)
    until high_verse < low_verse
      @multiple_verses << verse(high_verse) + "\n"
      high_verse -= 1
    end
    multiple_verses.join
  end

  def sing
    verses(99,0)
  end

  private 

  def bottles
    "bottles of beer on the wall"
  end

  def take
    "Take one down and pass it around, "
  end

end
