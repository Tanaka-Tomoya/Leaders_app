5.times do |n|
  puts n
  User.create!(
    name: "メンバー#{n + 1}",
    email: "member#{n + 1}@test.com",
    password: "test",
    role: "member"
  )
end

User.create!(
  name: 'メンター',
  email: 'mentor@test.com',
  password: 'test',
  role: 'mentor'
)

Group.create!(
  name: 'テストグループ1',
  description: 'テストのグループです'
)

5.times do |n|
  Contribution.create!(
    body: "テストの投稿#{n + 1}",
    status: "new",
    priority: "important",
    user_id: n + 1,
    group_id: 1
  )
end

5.times do |n|
  UserGroup.create!(
    user_id: n + 1,
    group_id: 1
  )
end

## テストユーザー

user = User.create!(
  name: 'Test',
  email: 'test@test.com',
  password: 'test',
  role: 'member'
)

UserGroup.create!(
  user_id: user.id,
  group_id: 1
)

5.times do |n|
  group = Group.create!(
    name: "テストグループ#{n + 2}",
    description: "テストのグループです"
  )
  UserGroup.create!(
    user_id: user.id,
    group_id: group.id
  )
end

