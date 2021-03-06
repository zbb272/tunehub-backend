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




user1 = User.create(username: "user1", password_digest: "user1");
user2 = User.create(username: "user2", password_digest: "user2");
user3 = User.create(username: "user3", password_digest: "user3");

project1 = Project.create(name: "proj1", user: user1);
project2 = Project.create(name: "proj2", user: user2);
project3 = Project.create(name: "proj3", user: user3);
project4 = Project.create(name: "proj4", user: user1);
project5 = Project.create(name: "proj5", user: user2);
project6 = Project.create(name: "proj6", user: user3);

c1 = Contribution.create(user: user1, project: project1, approved: true, pending: false);
c2 = Contribution.create(user: user2, project: project1, approved: true, pending: false);
c3 = Contribution.create(user: user2, project: project1, approved: false,pending: true);

a = Note.create(x: 0, y: 0, bc: "red", frequency: 185.0, selected: true);
b = Note.create(x: 1, y: 1, bc: "red", frequency: 185.0, selected: true);
c = Note.create(x: 2, y: 2, bc: "red", frequency: 185.0, selected: true);
c1.notes << a;
c1.notes << b;
c1.notes << c;
c2.notes << a;
c2.notes << b;
c2.notes << c;

project1.contributions << c1;
project1.contributions << c2;
project1.contributions << c3;
project1.latest_contribution = c2.id
project1.save
