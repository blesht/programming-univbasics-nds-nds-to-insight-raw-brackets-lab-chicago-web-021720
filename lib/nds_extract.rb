$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  dir_index = 0 
  sum_total_by_director = {}
  while dir_index < nds.length do 
    movies_index = 0 
    movies = nds[dir_index][:movies]
    total_for_director = 0 
    
    while movies_index < movies.length do 
      total_for_movie = movies[movies_index][:worldwide_gross]
      total_for_director += total_for_movie
      movies_index += 1 
      
    end 
    director_name = nds[dir_index][:name]
    sum_total_by_director[director_name] = total_for_director
    dir_index += 1 
  end 
  sum_total_by_director
  
  
  
  
  
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  #result = {
  # }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!


  
end


