require 'csv'


  movies = []

  CSV.foreach('movies.csv', headers: true) do |row|
    movie = {
      id: row["id"],
      title: row["title"],
      year: row["year"],
      synopsis: row["synopsis"],
      rating: row["rating"],
      genre: row["genre"],
      studio: row["studio"]
    }
    movies << movie


end


puts movies[0]





      movies.each do |x|
       puts x[:id]
        end








