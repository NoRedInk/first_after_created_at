module FirstAfterCreatedAt
  def first_after_created_at(time)
    time = Time.parse(time.to_s)
    best = nil
    first = select(:id, :created_at).first
    return unless first
    min_id = first.id
    max_id = select(:id, :created_at).last.id

    loop do
      mid_id = (min_id + max_id) / 2
      mid_obj =
        select(:id, :created_at).where("#{quoted_table_name}.#{connection.quote_column_name('id')} >= ?", mid_id).order(:id).first

      best = get_best(mid_obj, time, best)
      break if min_id == max_id

      if mid_obj.created_at < time
        # handle even / odd
        min_id = mid_id < max_id ? mid_id + 1 : mid_id
      else
        max_id = mid_id > min_id ? mid_id - 1 : mid_id
      end
    end

    find(best.id) if best
  end

  def get_best(obj, time, best)
    return best if obj.created_at < time
    return obj if best.nil?
    obj.id < best.id ? obj : best
  end
end

ActiveRecord::Base.extend(FirstAfterCreatedAt)
