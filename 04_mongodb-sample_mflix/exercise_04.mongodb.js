use('sample_mflix')

//How many movies does mentioned American in its plot?
db.movies.find({ plot: /American/i }).count()

//How many movies does end plot (sentence) with the street.
db.movies.find({ plot: /the street$/i }).count()

//What is data of above examples like?
db.movies.find({ plot: { $regex: "street.$", $options: "i" } })