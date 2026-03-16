use('sample_mflix')

//ดึง "ทุก document" จาก collection ชื่อ comments
db.comments.find()

//ดึง 1 document จาก comments โดยที่ _id = "5a9427648b0beebeb69579f5"
db.comments.findOne({_id: Objectid("5a9427648b0beebeb69579f5")})

//  ดึง่ 1 document จาก comments ที่มี email = "john_bishop@fakegmail.com"
db.comments.findOne({email: "john_bishop@fakegmail.com"})
