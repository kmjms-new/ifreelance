class CreateFreelances < ActiveRecord::Migration[5.1]
  def change
    create_table :freelances do |t|
      t.string :freelance_name
      t.string :freelance_phone
      t.string :freelance_email
      t.string :freelance_sex
      t.text :freelance_address
      t.integer :freelance_salary
      t.integer :freelance_delete

      t.timestamps
    end
  end
end
