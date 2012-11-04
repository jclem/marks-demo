class CreateMarksTable < ActiveRecord::Migration
  def up
    create_table :marks do |t|
      t.string :title
      t.string :url, null: false
      t.string :description
      t.timestamps
    end
  end

  def down
    drop_table :marks
  end
end
