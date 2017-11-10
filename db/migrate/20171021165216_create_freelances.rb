class CreateFreelances < ActiveRecord::Migration[5.1]
  def change
    create_table :freelances do |t|
      t.string :name
      t.string :email
      t.float :total_amount

      t.timestamps
    end
  end
end
