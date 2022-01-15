class CreateUserDefinitionVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :user_definition_votes do |t|
      t.belongs_to :user
      t.belongs_to :term_definition

      t.timestamps
    end
  end
end
