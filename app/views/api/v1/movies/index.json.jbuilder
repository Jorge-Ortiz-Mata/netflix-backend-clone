json.array! @movies.each do |movie|
  json.id movie.id
  json.name movie.name
  json.description movie.description
  json.year movie.year
  json.duration movie.duration
  json.avatar url_for(movie.avatar) if movie.avatar.present?
end
