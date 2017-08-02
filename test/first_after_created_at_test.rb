require 'test_helper'

class FirstAfterCreatedAtTest < ActiveSupport::TestCase
  test "first_after_created_at can be called" do
    HasTimestamp.first_after_created_at(Time.at(0))
  end

  test "first_after_created_at returns nil if no object found" do
    assert_nil HasTimestamp.first_after_created_at(Time.now)
  end

  test "first_after_created_at returns first object created after given time" do
    obj = HasTimestamp.create
    assert_equal obj, HasTimestamp.first_after_created_at(Time.at(0))
  end

  test "first_after_created_at returns first object created after given time given two objects" do
    obj = HasTimestamp.create
    obj.update_attribute(:created_at, 5.minutes.ago)
    obj2 = HasTimestamp.create

    assert_equal obj2, HasTimestamp.first_after_created_at(4.minutes.ago)
  end

  test "first_after_created_at returns object with min id created after given time given two objects" do
    obj = HasTimestamp.create
    obj2 = HasTimestamp.create
    obj2.update_attribute(:created_at, obj.created_at)

    assert_equal obj, HasTimestamp.first_after_created_at(Time.at(0))
  end

  # multiple objects with the same created_at
  # normal (array bounds)
  # equal to created_at
end
