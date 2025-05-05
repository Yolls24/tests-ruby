# 02_calculator.rb

def add(a, b)
    a + b
  end
  
  def subtract(a, b)
    a - b
  end
  
  def sum(array)
    array.inject(0) { |sum, num| sum + num }
  end
  
  def multiply(a, b)
    a * b
  end
  
  def power(base, exponent)
    base ** exponent
  end
  
  def factorial(n)
    return 1 if n == 0
    (1..n).inject(:*)
  end
  
  
 