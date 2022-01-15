class Term < ApplicationRecord
  has_many :definitions, foreign_key: "term_id", class_name: "TermDefinition", dependent: :destroy
  accepts_nested_attributes_for :definitions, allow_destroy: true, reject_if: :all_blank

  def self.search(term)
    if term.present?
      where('name like ?', "%#{term}%")
    else
      all
    end
  end

  def title
    title = name.truncate(30)
    title += " (#{short_form})" if short_form.present?
    title
  end

  def short_form_with_parens
    "(#{short_form})"
  end
end
