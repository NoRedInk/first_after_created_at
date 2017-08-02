require 'test_helper'

class FirstAfterCreatedAtTest < ActiveSupport::TestCase
  test 'returns nil if no object exists' do
    assert_nil HasTimestamp.first_after_created_at(Time.now)
  end

  test 'returns nil if no object meets criteria' do
    HasTimestamp.create
    assert_nil HasTimestamp.first_after_created_at(1.hour.from_now)
  end

  test 'can return the first object' do
    obj = HasTimestamp.create
    HasTimestamp.create
    assert_equal obj, HasTimestamp.first_after_created_at(1.hour.ago)
  end

  test "will ignore first object if it's out of scope" do
    HasTimestamp.create
    obj = HasTimestamp.create(created_at: 2.hours.from_now)

    assert_equal obj, HasTimestamp.first_after_created_at(1.hour.from_now)
  end

  test 'given two objects with same created at, returns one with min id' do
    obj = HasTimestamp.create
    HasTimestamp.create(created_at: obj.created_at)

    assert_equal obj, HasTimestamp.first_after_created_at(1.hour.ago)
  end

  test 'can return the middle object' do
    objs = Array.new(3) do |n|
      HasTimestamp.create(created_at: n.hours.from_now)
    end
    middle = objs[1]
    assert_equal middle, HasTimestamp.first_after_created_at(middle.created_at)
  end
end
