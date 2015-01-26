Dir["lib/*.rb"].each{|f| load f }

N = 10

primes = (1..N).map{|n| Primes.get(n)}
multiplication_table = primes
  .map{|p1|                   # For every prime
    primes.map{|p2| p1 * p2}  # create an array of it's multiplications by all other primes
  }

table = Table.new primes, multiplication_table
Formatter.new.display table
