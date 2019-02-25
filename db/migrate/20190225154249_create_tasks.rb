class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :description
      t.date :start_date
      t.date :end_date
      t.datetime :start_time
      t.datetime :end_time
      t.string :category
      t.boolean :booked

      t.timestamps
    end
  end
end
