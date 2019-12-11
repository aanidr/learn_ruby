#write your code here

def echo(msg)
  msg
end

def shout(msg)
  msg.upcase
end

def repeat(msg, times=2)
  (1...times).inject(msg) { |m, _| m + ' ' + msg }
end

def start_of_word(msg, num)
  msg[0...num]
end

def first_word(msg)
  msg.split(' ').first
end

def titleize(msg)
  little_words = %w[the over and]
  msg.capitalize.split.map do |word|
    little_words.include?(word) ? word : word.capitalize
  end.join(' ')
end
