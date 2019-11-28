$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


def directors_totals(nds)
  
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  
  # The Hash result will be full of things like "Jean-Pierre Jeunet" => "222312123123"
  
  result = { }
  dir_idx = 0
  while dir_idx < nds.length
    movie_idx = 0
    worldwide_gross_dir = 0
    while movie_idx < nds[dir_idx][:movies].count
      worldwide_gross_dir += nds[dir_idx][:movies][movie_idx][:worldwide_gross]
      movie_idx += 1
    end
    dir_name = nds[dir_idx][:name]
    result[dir_name] = worldwide_gross_dir
    dir_idx += 1
  end
  return result
end
  



  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the Worldwide_Grosses
  # ...
  # ...
  # ...

  # Be sure to return the result at the end!



