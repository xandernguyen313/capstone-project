class CreateMeetings < ActiveRecord::Migration[6.0]
  def change
    create_table :meetings do |t|
      t.string :name
      t.datetime :start_time
      t.references :user, null: false, foreign_key: true
      t.string :address
      t.string :description
      t.string :phone
      t.timestamps
    end
  end
end
