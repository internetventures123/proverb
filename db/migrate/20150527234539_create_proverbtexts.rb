class CreateProverbtexts < ActiveRecord::Migration
  def change
    create_table :proverbtexts do |t|
      t.string :quote
      t.integer :show

      t.timestamps null: false
    end
  end
end
