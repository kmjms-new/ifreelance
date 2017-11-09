class CreateQuotationRegistries < ActiveRecord::Migration[5.1]
  def change
    create_table :quotation_registries do |t|
      t.integer :idquotationregistry
      t.string :date
      t.string :nameclient
      t.string :business
      t.string :product
      t.integer :value
      t.integer :validity

      t.timestamps
    end
  end
end
