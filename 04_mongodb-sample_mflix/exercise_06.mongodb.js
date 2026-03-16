
//Find all movies in the "movies" collection released between 1950 and 1970 (inclusive) that are documented as being shown in countries located in the USA.
db.movies.find({
  countries: {$in: ["USA"]},
  year: {$gte: 1950, $lte: 1970}
})

//What is the number of movies in the "movies" collection with genres "Drama" and "History" released after the year 1970?
db.movies.find({ 
  genres: { $all: ["Drama", "History"] },
  released: { $gt: ISODate("1970-01-01T00:00:00Z") }
}).count()


//In how many films is Roy L. McCardell credited as an actor?
db.movies.find({ cast: "Roy L. McCardell" }).count()

//How many movies did Hal Roach directed?
db.movies.find({ directors: "Hal Roach" }).count()

//What is the movie with the earliest release year directed by Hal Roach?
db.movies.find({ directors: { $in: ["Hal Roach"] } });

//How many awards did Hal Roach’s movies win?
db.movies.find(
{ 
directors: { $in: ["Hal Roach"] } 
}, 
{
title: 1, 
"awards.wins": 1, 
_id: 0 
}
);

//List all movies released in 1995 and classified as “Action”. 
db.movies.find(
  {
    year: 1995,              // condition #1
    genres: "Action"         // condition #2  → implicit AND
  },
  { _id: 0, title: 1, year: 1, genres: 1 }   // projection
);


//Find movies whose primary spoken language is French or Spanish.  
db.movies.find(
  {
    $or: [
      { languages: "French" },
      { languages: "Spanish" }
    ]
  },
  { _id: 0, title: 1, languages: 1 }
);


//Retrieve up to 10 movies that are released after 2010 and belong to the Drama genre or have IMDB rating >= 8).  
db.movies.find(
  {
    year: { $gt: 2010 },                         
    $or: [
      { genres: "Drama" },                       
      { "imdb.rating": { $gte: 8 } }             
    ]
  },
  { _id: 0, title: 1, year: 1, genres: 1, "imdb.rating": 1 }
).limit(10);

// List all movies released in 1995 and classified as “Action”. 
db.movies.find(
  {
    year: 1995,              // condition #1
    genres: "Action"         // condition #2  → implicit AND
  },
  { _id: 0, title: 1, year: 1, genres: 1 }   // projection
);

// Find movies whose primary spoken language is French or Spanish.  
db.movies.find(
  {
    $or: [
      { languages: "French" },
      { languages: "Spanish" }
    ]
  },
  { _id: 0, title: 1, languages: 1 }
);

// Retrieve up to 10 movies that are released after 2010 and belong to the Drama genre or have IMDB rating >= 8).  
db.movies.find(
  {
    year: { $gt: 2010 },                         
    $or: [
      { genres: "Drama" },                       
      { "imdb.rating": { $gte: 8 } }             
    ]
  },
  { _id: 0, title: 1, year: 1, genres: 1, "imdb.rating": 1 }
).limit(10);
