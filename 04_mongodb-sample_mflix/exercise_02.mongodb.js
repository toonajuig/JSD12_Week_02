use('sample_mflix')

//ดึง  type "movie" and rated ของ "TV-G"
db.comments.findOne({type: "movie", rate: "TV-G"})

//How many movies are there in “movie” type and “TV-G” rated?
db.movies.find({ type: "movie", rated: "TV-G" }).count()
