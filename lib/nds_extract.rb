$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  pp nds
   result = {
  }

total_gorss = 0 
row_index = 0 
while row_index < directors_database.length do 
  directors = directors_database[row_index][:name]
  movies = directors_database[row_index][:movies]
  inner_index = 0 
  while inner_index < movies.length do 
    total_gross += movies[inner_index][:worldwide_gross]
    result << directors
    result << total_gross 
    inner_index += 1 
    end 
    row_index += 1 
 end 

