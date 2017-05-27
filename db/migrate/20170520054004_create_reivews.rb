class CreateReivews < ActiveRecord::Migration[5.1]
  def change
    create_table :reivews do |t|
      t.integer :rating
      t.text :commnet

      t.timestamps
    end
  end
end
