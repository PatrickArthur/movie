require 'sinatra'
require 'csv'
require 'pry'

def read_movies_from(csv)
  movies = []



  CSV.foreach(csv, headers: true) do |row|
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

  movies
end




get '/movies' do
  @movies = read_movies_from('movies.csv')
  @data = @movies.sort_by { |hsh| hsh[:title] }
  erb :index
end

get '/movies/:id' do
@movies = read_movies_from('movies.csv')
    @movies.each do |movie|
    if movie[:id] == params[:id]
      @movie = movie
    end
  end
  erb :show
    end







