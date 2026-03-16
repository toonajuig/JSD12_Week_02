use('sample_mflix');

db.movies.find({
  countries: {$in: ["USA"]},
  year: {$gte: 1950, $lte: 1970}
})






