module FirstAfterCreatedAt
  def first_after_created_at(time)
    time = Time.parse(time.to_s)
    best = nil

    return nil if first.nil?
    
    min_id = first.id
    max_id = last.id
    loop do
      mid_id = (min_id + max_id) / 2
      mid_obj = find(mid_id)

      best = get_best(mid_obj, time, best)
      break if min_id == max_id

      if mid_obj.created_at < time
        min_id = mid_id + 1
      else
        max_id = mid_id - 1
      end
    end

    best
  end

  def get_best(obj, time, best)
    return best if obj.created_at < time
    return obj if best.nil?
    obj.id < best.id ? obj : best
  end
end

ActiveRecord::Base.extend(FirstAfterCreatedAt)
