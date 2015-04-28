class BeerSong 
  def verse(verse_number)
    case verse_number
    when 3..99
    "#{verse_number} bottles of beer on the wall, #{verse_number} bottles of beer.\n" \
    "Take one down and pass it around, #{verse_number-1} bottles of beer on the wall.\n"
    end
  end

  def verses(high_verse, low_verse)
  end

  def sing
  end

end
