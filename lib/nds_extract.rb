$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  director_num = 0
  gross_hash = {}
  
  while director_num < nds.length do
    movie_num = 0
    gross = 0
    gross_hash[nds[director_num][:name]] = 0
    
    while movie_num < nds[director_num][:movies].length do
      gross += nds[director_num][:movies][movie_num][:worldwide_gross]
      movie_num += 1
    end
    
    gross_hash[nds[director_num][:name]] = gross
    director_num += 1
  end
  
  gross_hash
end
