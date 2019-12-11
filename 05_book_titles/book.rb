class Book
# write your code here
  attr_reader :title

  def title=(new_title)
    @title = titleize(new_title)
  end
end

def titleize(msg)
  little_words = %w[the over in of and a an]
  msg.capitalize.split.map do |word|
    little_words.include?(word) ? word : word.capitalize
  end.join(' ')
end
