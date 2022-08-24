Pet.destroy_all
User.destroy_all

user_1 = User.create(name: "Louis", number: "06 50 38 22 54", photo_url: "https://picsum.photos/200/300", email: "test.exemple@test.com", password: "123456")
user_1.save!
user_2 = User.create(name: "Jade", number: "06 72 19 26 84", photo_url: "https://picsum.photos/200/300", email: "test.exempl@test.com", password: "123456")
user_2.save!
user_3 = User.create(name: "Nathan", number: "06 43 76 82 18", photo_url: "https://picsum.photos/200/300", email: "test.exmple@test.com", password: "123456")
user_3.save!
user_4 = User.create(name: "Sander", number: "06 15 37 93 90", photo_url: "https://picsum.photos/200/300", email: "test.exemle@test.com", password: "123456")
user_4.save!
user_5 = User.create(name: "Annika", number: "06 22 17 83 48", photo_url: "https://picsum.photos/200/300", email: "test.xemple@test.com", password: "123456")
user_5.save!
user_6 = User.create(name: "Olivia", number: "06 35 10 46 89", photo_url: "https://picsum.photos/200/300", email: "test.exempl@tst.com", password: "123456")
user_6.save!
user_boss = User.create(name: "Roslan", number: "06 50 38 22 54", photo_url: "https://fr.freepik.com/photos/nature", email: "roslan@ph.com", password: "weewee")
user_boss.save!

pet_1 = Pet.create(name: "Rex", sexe: "male", race: "Labrador", age: 5, photo_url: "https://static.wamiz.com/images/animaux/chiens/large/labrador-retriever.jpg", user: user_1, price: 50, location: "Paris")
pet_1.save!
pet_2 = Pet.create(name: "Rocky", sexe: "male", race: "Golden retriever", age: 4, photo_url: "https://i.f1g.fr/media/cms/orig/2021/08/18/94886ffaf381c3cfd9393372c7a820cefb8b3e2b8f56357044d17624312d02b2.jpg", user: user_2, price: 60, location: "Paris")
pet_2.save!
pet_3 = Pet.create(name: "Snow", sexe: "male", race: "German shepherd", age: 2, photo_url: "https://www.zooplus.fr/magazine/wp-content/uploads/2018/09/deutscher-sch%C3%A4ferhund-768x511.jpg", user: user_2, price: 56, location: "Paris")
pet_3.save!
pet_4 = Pet.create(name: "Nala", sexe: "female", race: "British bulldog", age: 3, photo_url: "https://geo.img.pmdstatic.net/fit/https.3A.2F.2Fi.2Epmdstatic.2Enet.2Fgeo.2F2022.2F06.2F16.2Fbf9ad234-c314-46e9-b56f-1eab286747cb.2Ejpeg/1150x647/background-color/ffffff/quality/70/le-bouledogue-anglais-souffre-de-la-gueule-faisant-son-succes.jpg", user: user_3, price: 40, location: "London")
pet_4.save!
pet_5 = Pet.create(name: "Luna", sexe: "female", race: "French bulldog", age: 3, photo_url: "https://www.oobaooba.fr/img/post/41.jpg", user: user_2, price: 54, location: "Paris")
pet_5.save!
pet_6 = Pet.create(name: "Max", sexe: "male", race: "Siberian husky", age: 6, photo_url: "https://jardinage.lemonde.fr/images/dossiers/2017-07/husky-1-105935.jpg", user: user_4, price: 75, location: "Oslo")
pet_6.save!
pet_7 = Pet.create(name: "Jack", sexe: "male", race: "Beagle", age: 5, photo_url: "https://www.zoomalia.com/blogz/2597/tout-savoir-sur-le-beagle.jpeg", user: user_5, price: 48, location: "Amsterdam")
pet_7.save!
pet_8 = Pet.create(name: "Newton", sexe: "male", race: "Australian shepherd", age: 4, photo_url: "https://www.illicoveto.com/wp-content/uploads/berger-australien.jpg", user: user_6, price: 65, location: "Sydney")
pet_8.save!
pet_9 = Pet.create(name: "Oscar", sexe: "male", race: "Bernedoodle", age: 1, photo_url: "https://www.myvettepage.com/wp-content/uploads/2022/08/Spot-A-Real-And-Healthy-Bernedoodle-Puppy-768x506.jpg", user: user_6, price: 52, location: "Sydney")
pet_9.save!
pet_10 = Pet.create(name: "Laika", sexe: "female", race: "Teckel", age: 1, photo_url: "https://upload.wikimedia.org/wikipedia/commons/1/17/Teckel_-_39.jpg", user: user_5, price: 48, location: "Amsterdam")
pet_10.save!
