# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all

polo = User.create!(email: "polo@gmail.com",
                    password: "12345678",
                    parraine_par: "admin",
                    filleuls: ["francois@gmail.com", "camille@gmail.com"],
                    count: 2)
francois = User.create!(email: "francois@gmail.com",
                    password: "12345678",
                    parraine_par: "polo@gmail.com",
                    filleuls: ["pierre@gmail.com", "paul@gmail.com"],
                    count: 2)
camille = User.create!(email: "camille@gmail.com",
                    password: "12345678",
                    parraine_par: "polo@gmail.com",
                    filleuls: ["angeline@gmail.com"],
                    count: 1)
pierre = User.create!(email: "pierre@gmail.com",
                    password: "12345678",
                    parraine_par: "francois@gmail.com",
                    filleuls: [],
                    count: 0)
paul = User.create!(email: "paul@gmail.com",
                    password: "12345678",
                    parraine_par: "francois@gmail.com",
                    filleuls: [],
                    count: 0)
angeline = User.create!(email: "angeline@gmail.com",
                    password: "12345678",
                    parraine_par: "camille@gmail.com",
                    filleuls: ["charlotte@gmail.com"],
                    count: 1)
charlotte = User.create!(email: "charlotte@gmail.com",
                    password: "12345678",
                    parraine_par: "angeline@gmail.com",
                    filleuls: [],
                    count: 0)
