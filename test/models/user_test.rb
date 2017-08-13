require 'test_helper'

class UserTest < ActiveSupport::TestCase

  # test "User.new" do
  #   user = User.new
  #   user.save
  #   puts "user.id: #{user.id}"
  #
  #   user2 = User.new
  #   puts "user2.id: #{user2.id}"
  #   user2.save
  #   puts "user2.id: #{user2.id}"
  # end

  test "Users has email" do
    user = User.new(email: 'test@example.com')
    user.save!

    user2 = User.find(user.id)
    assert 'test@example.com', user2.email

    User.all.each do |u|
      puts "id: #{u.id} email: #{u.email}"
    end
  end
end
