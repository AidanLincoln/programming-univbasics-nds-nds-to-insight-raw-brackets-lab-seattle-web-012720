$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  hash = {}
  diretor_index = 0
  movie_index = 0
  
  while diretor_index < nds.length do
    total = 0
    while movie_index < nds[diretor_index][:movies].length do
      total += nds[diretor_index][:movies][movie_index][:worldwide_gross]
      hash[nds[diretor_index][:name]] = total
      movie_index += 1
    end
  movie_index = 0
  diretor_index += 1
  end
  return hash
  nil
end
