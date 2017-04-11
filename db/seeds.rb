# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1..100).each do |number|
    person = ["予定", "実行中","完了","保留","問題"]
    status = ["父","母","兄","妹"]
    Task.create(content: "仕事:" + number.to_s, status: status[number%5], person: person[number%4] )
end

# (1..100).each do |number|
#     Task.create(content: "仕事:" + number.to_s, status: "予定", person: "兄" )
# end