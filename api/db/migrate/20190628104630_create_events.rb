class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.date :starts_at
      t.date :ends_at
      t.text :kind
      t.boolean :weekly_recurring

      t.timestamps
    end
  end
end
