$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # dir_index = 0 
  # sum_total_by_director = {}
  # while dir_index < nds.length do 
  #   movies_index = 0 
  #   movies = nds[dir_index][:movies]
  #   total_for_director = 0 
    
  #   while movies_index < movies.length do 
  #     total_for_movie = movies[movies_index][:worldwide_gross]
  #     total_for_director += total_for_movie
  #     movies_index += 1 
      
  #   end 
  #   director_name = nds[dir_index][:name]
  #   sum_total_by_director[director_name] = total_for_director
  #   dir_index += 1 
  # end 
  # sum_total_by_director
  
  
  nds.each_with_object({}) do |director, sum_total_by_director|
    name = director[:name]
    sum_total = director[:movies].sum {|movie| movie[:worldwide_gross]}
    sum_total_by_director[name] = sum_total
  
  end 
  
  
  
  


  
end


