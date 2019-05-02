# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Note.delete_all
Contribution.delete_all
Project.delete_all
User.delete_all




user1 = User.create(username: "user1");
user2 = User.create(username: "user2");
user3 = User.create(username: "user3");

project1 = Project.create(name: "proj1", user: user1);
project2 = Project.create(name: "proj2", user: user2);
project3 = Project.create(name: "proj3", user: user3);
project4 = Project.create(name: "proj4", user: user1);
project5 = Project.create(name: "proj5", user: user2);
project6 = Project.create(name: "proj6", user: user3);

c1 = Contribution.create(user: user1, project: project1, approved: true);
c2 = Contribution.create(user: user2, project: project1, approved: true);
c3 = Contribution.create(user: user2, project: project1, approved: false);

a = Note.create(x: 0, y: 0);
b = Note.create(x: 1, y: 1);
c = Note.create(x: 2, y: 2);
c1.notes << a;
c1.notes << b;
c1.notes << c;
project1.contributions << c1;
project1.contributions << c2;
project1.contributions << c3;
