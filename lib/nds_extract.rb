$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  pp nds
   result = {
     
   }
  

  row_index = 0


  while row_index < nds.length do
    the_directors = nds[row_index][:name]
    the_directors_total = 0
    column_index = 0

    while column_index < nds[row_index][:movies].length do
      the_directors_total += nds[row_index][:movies][column_index][:worldwide_gross]
      column_index += 1
    end

    row_index += 1
  end

  result 
