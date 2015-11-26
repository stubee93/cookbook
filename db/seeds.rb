# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
levels = Level.create([{name: 'Könnyű'},{name: 'Közepes'},{name: 'Bonyolult'},{name: 'Nehéz'}])
categories = Category.create([{name: 'Előételek'},{name: 'Főételek'},{name: 'Levesek'}])
subcategories = Subcategory.create([{name:'Húsos előételek', category_id: '1'},{name:'Gyümölcsös előételek', category_id: '1'},{name:'Zöldséges előételek', category_id: '1'},
                                    {name:'Szendvicsek', category_id: '1'},{name:'Egyéb', category_id: '1'}, {name:'Szárnyasételek', category_id: '2'},
                                    {name:'Marha- és borjúhúsos ételek', category_id: '2'},{name:'Sertéshúsos ételek', category_id: '2'},{name:'Halételek', category_id: '2'},
                                    {name:'Bárányhúsos ételek', category_id: '2'}, {name:'Vadételek', category_id: '2'},{name:'Tésztaételek', category_id: '2'},
                                    {name:'Köret', category_id: '2'},{name:'Egyéb', category_id: '2'}, {name:'Hússal készült', category_id: '3'},{name:'Zöldséglevesek', category_id: '3'},
                                    {name:'Gyümölcslevesek', category_id: '3'},{name:'Krémlevesek', category_id: '3'},{name:'Egyéb', category_id: '3'},])
AdminUser.create!(email: 'rafai@example.com', password: 'asdqweasd', password_confirmation: 'asdqweasd')