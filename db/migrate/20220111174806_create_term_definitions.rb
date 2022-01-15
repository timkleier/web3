class CreateTermDefinitions < ActiveRecord::Migration[5.2]
  def change
    create_table :term_definitions do |t|
      t.text :description
      t.string :source_url
      t.string :source_name
      t.belongs_to :term, foreign_key: true

      t.timestamps
    end
  end
end
