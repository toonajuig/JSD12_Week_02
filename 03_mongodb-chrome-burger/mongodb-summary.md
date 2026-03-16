ex1-3
findOne() = เอาแค่ 1 document
{ _id: ... } = กรองด้วย _id
ObjectId("...") = แปลงค่าที่ให้มาให้เป็นชนิด _id ที่ถูกต้อง

ถ้าเป็น _id มักต้องใช้ ObjectId(...)
แต่ถ้าเป็น email ซึ่งเป็น string ปกติ ก็ใส่ string ได้เลย

find(...).count() = countDocuments(...)

ex4
plot = field ที่เก็บเนื้อเรื่องย่อ
ตัว i หมายถึง case-insensitive
เช่น American, american, AMERICAN
/word/ = มีคำนี้อยู่
/^word/ = ขึ้นต้นด้วยคำนี้
/word$/ = ลงท้ายด้วยคำนี้

$regex: "street.$"
street = ต้องมีคำว่า street
. = หลัง street ต้องมี “อีก 1 ตัวอักษรอะไรก็ได้” 1 ตัว
$ = แล้วตรงนั้นต้องเป็นท้ายข้อความ
ดังนั้น "street.$" แปลว่า:
ข้อความต้องลงท้ายด้วย
street. หรือ street? หรือ street! หรือ street"

ex5
sort({ runtime: -1 }) = เรียง runtime จากมากไปน้อย
ทริกจำ:
1 = เรียงน้อยไปมาก
-1 = เรียงมากไปน้อย
limit(5) = เอาแค่ 5 document
$lt = less than <
$lte = less than or equal <=
$gt = greater than >
$gte = greater than or equal >=

ex6
find() = หา document
aggregate() = หาแล้วเอามาคำนวณต่อ
stage ที่ใช้บ่อย:
$match = กรองข้อมูล
$group = จัดกลุ่ม / รวมค่า
$sum = บวกค่าตัวเลข
$sort = เรียงข้อมูล
$project = เลือกหรือปรับรูปร่างข้อมูล

