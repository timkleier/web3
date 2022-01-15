class UserDefinitionVote < ApplicationRecord
  belongs_to :user
  belongs_to :term_definition

  validates_presence_of :user_id, :term_definition_id
end
