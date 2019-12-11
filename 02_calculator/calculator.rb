#write your code here

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  array.inject(0) { |s, x| add(s, x) }
end

def multiply(array)
  array.inject(1) { |m, x| m * x }
end

def power(a, b)
  a**b
end

def factorial(num)
  (1..num).inject(1) { |f, x| f * x }
end
