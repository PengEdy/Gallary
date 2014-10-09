# Generate Author
Author.create({name: 'Qian Chen'})
Author.create({name: 'B.B.'})
puts "Author 'Qian Chen' and 'B.B.' generated."

# Generate Category
Category.create({name: 'Scenery'})
Category.create({name: 'Fashion'})
Category.create({name: 'Wedding'})
Category.create({name: 'Portrait'})
Category.create({name: 'Animal'})
puts "5 categories generated."

# Generate Picture

# B.B. Pictures
23.times do |n|
  pic = Picture.new
  pic.name = "BB#{n+1}"
  pic.category_id = rand(1..5)
  pic.description = ""
  pic.author_id = 2
  pic.photo = File.open("#{Rails.root}/public/develop_static/BB/#{n+1}.jpg")
  pic.save!
  puts "#{n+1} photo saved as B.B."
end
puts "Pictures of B.B. generated."

# Qian Chen Picture
26.times do |n|
  pic = Picture.new
  pic.name = "CQ#{n+1}"
  pic.category_id = rand(1..5)
  pic.description = ""
  pic.author_id = 1
  pic.photo = File.open("#{Rails.root}/public/develop_static/CQ/#{n+1}.jpg")
  pic.save!
  puts "#{n+1} photo saved as CQ."
end
puts "Pictures of B.B generated."
