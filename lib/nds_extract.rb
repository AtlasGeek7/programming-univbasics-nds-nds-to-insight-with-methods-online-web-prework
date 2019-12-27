require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  i = 0
  len = nds.length
  while i < len do
    sum = gross_for_director(nds[i])
    result[nds[i][:name]] = sum
    i += 1
  end
  return result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
    sum = 0
    j = 0
    len = director_data[:movies].length 
    while j < len do
      sum += director_data[:movies][j][:worldwide_gross]
      j += 1
    end
  return sum
end
