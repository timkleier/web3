class CreateTerms < ActiveRecord::Migration[5.2]
  def change
    create_table :terms do |t|
      t.string :name
      t.string :short_form

      t.timestamps
    end
  end
end
