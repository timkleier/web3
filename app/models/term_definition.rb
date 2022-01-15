class TermDefinition < ApplicationRecord
  belongs_to :term
  has_many :user_votes, class_name: 'UserDefinitionVote'
end
