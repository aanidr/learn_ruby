#write your code here

def translate(msg)
  msg.split.map { |word| piggify(word) }.join(' ')
end

def piggify(word)
  vowels = %w[a e i o u]
  until vowels.include?(word[0]) do
    word = word[1..-1] + word[0]
  end
  word + 'ay'
end
