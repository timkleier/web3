class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :definition_votes, class_name: 'UserDefinitionVote'

  def display_name
    "#{first_name} #{last_name}"
  end

  def has_upvoted?(definition)
    definition_votes.any?{|vote| vote.term_definition_id == definition.id}
  end
end
