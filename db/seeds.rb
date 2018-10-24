# Create 8 users and for each user 1 to 6 Links
8.times do
    user = User.create!(last_name: Faker::Name.last_name, first_name: Faker::Name.first_name)
    i = rand(6)+1
    i.times do
        Link.create!(user_id: user.id, url: Faker::Internet.email)
    end
end
# Creat 15 comments
15.times do
    comment = Comment.create!(user_id: Faker::Number.between(User.first.id, User.last.id), link_id: Faker::Number.between(Link.first.id, Link.last.id), content: Faker::Community.quotes)
    i = rand(4)+1
    i.times do
        Comment.create!(user_id: Faker::Number.between(User.first.id, User.last.id), link_id: Faker::Number.between(Link.first.id, Link.last.id), content: Faker::Community.quotes, comment_id: comment.id)
    end
end
