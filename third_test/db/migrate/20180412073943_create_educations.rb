class CreateEducations < ActiveRecord::Migration[5.1]
  def change
    create_table :educations do |t|
      t.string :university_name
      t.string :stream
      t.decimal :percentage
      t.string :description
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
