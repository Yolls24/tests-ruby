# 03_basics.rb

def who_is_bigger(a, b, c)
    return "nil detected" if a.nil? || b.nil? || c.nil?
    return "a is bigger" if a > b && a > c
    return "b is bigger" if b > a && b > c
    "c is bigger"
  end
  
  def reverse_upcase_noLTA(string)
    string.reverse.upcase.delete('LTA')
  end
  
  def array_42(array)
    array.include?(42)
  end
  
  def magic_array(array)
    array.flatten.map { |num| num * 2 }.reject { |num| num % 3 == 0 }.uniq.sort
  end
  