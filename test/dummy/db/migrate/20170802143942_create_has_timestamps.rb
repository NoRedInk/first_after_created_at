class CreateHasTimestamps < ActiveRecord::Migration[5.2]
  def change
    create_table :has_timestamps do |t|

      t.timestamps null: false
    end
  end
end
