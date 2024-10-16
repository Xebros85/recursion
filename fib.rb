# Fibonacci Sequence without recursion

def fibs(num)
  results = [0, 1, 1]

  return 1 if num <= 1
  first = 1
  second = 1
  
  until num < 3
    fib = first + second
    first = second
    second = fib
    results << fib
    num -= 1
  end
  results  
end

# Recursive Fibonacci Sequence
def fibs_rec(num, results = [0, 1])  
  # Base Case
  return results if num <= 2
  
  # Recursive Case
  next_number = results[-1] + results[-2]
  results << next_number

  fibs_rec(num - 1, results)
end

number = 8

puts
start_time = Time.now
puts "Non-recursive Fibonacci sequence:"
p fibs(number - 1)
puts " \t [#{( ( Time.now - start_time) * 1000.0 ).round(3)}ms]"

puts
start_time = Time.now
puts "Recursive Fibonacci sequence:"
p fibs_rec(number)
puts " \t [#{( ( Time.now - start_time) * 1000.0 ).round(3)}ms]"