use('sample_mflix')

//How many theaters does AL state has?
db.theaters.countDocuments({ "location.address.state": "AL" })

//How many theaters does La Quinta city has?
db.theaters.countDocuments({"location.address.city": "La Quinta"})

//What is an example of each documents of above like?
db.theaters.findOne({"location.address.city": "La Quinta"})
