# Warning: this class is not thread safe
#
# Complexity:
#   Primes are lazily searched upon request of a prime that hasn't been found
#   If a prime is already cached, the complexity is O(1)
#   If a prime not yet found then:
#     For all numbers from Pn-1..Pn prime test is performed
#
#   Complexity of prime test for number N:
#     Only known primes p <= sqrt(N) are cheked.
#     Number of primes below N  pi(N) = sqrt(N) / log(N)
#     So the complexity is O(sqrt(N) / log(N))
class Primes
  MAX_INT = 1000000

  @@known_primes = [2,3,5,7]        # Seed primes array
  @@last_checked_int = 9            # Set the value to continue the search from

  class << self
    # Returns nth prime, n - 1-based index
    def get n
      raise ArgumentError.new "n must be positive" unless n >= 1
      
      find_next_prime while n > @@known_primes.length
      @@known_primes[n - 1]
    end

    def find_next_prime
      new_prime = (@@last_checked_int..MAX_INT)
        .step(2)
        .find{|x| is_prime(x) }
      @@last_checked_int = new_prime + 2
      @@known_primes << new_prime
    end

    def is_prime x
      @@known_primes
        .take_while{|p| p * p <= x}
        .all?{|p| x % p != 0}
    end
  end
end
