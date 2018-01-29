# Write two functions to compute the fibonacci sequence.
# fib(n) = fib(n-1) + fib(n-2) 
# fib(0) = 0 fib(1) = 1
# 1. write the function recursively.
# 2. write the function iteratively. 
#Input: nth position of sequence, Output: number in that position  


#RECURSIVE
#n is returned if n < 2, otherwise, function is called within itself until base case is met. 

def fibonacci(n)
  if  n < 2
    return n
  else
    return fibonacci(n-1) + fibonacci(n-2)
  end
end

#Run time gets slower as n gets higher, for a faster program we can do recursion with memoization.
#We store results to the hash which the program can just pull from instead of recalculating.

def fibonacci(n, memo = {})
  if n < 2 
    return n
  end
  memo[n] ||= fibonacci(n-1, memo) + fibonacci(n-2, memo)
end






#ITERATIVE
#fibonacci numbers are appended into an array (seq) so n can be called as an index.
def fibonacci(n)
  seq = [0,1]
  i = 2
  while i <= n
    seq << (seq[i-1] + seq[i-2])
    i+=1
  end
  return seq[n]
end

