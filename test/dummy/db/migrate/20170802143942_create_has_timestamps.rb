class CreateHasTimestamps < ActiveRecord::Migration
  def change
    create_table :has_timestamps do |t|

      t.timestamps null: false
    end
  end
end
