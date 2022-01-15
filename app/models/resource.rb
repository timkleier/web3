class Resource < ApplicationRecord
  has_many :user_resources
  has_many :users, through: :user_resources

  def self.create_from_url(url)
    inspected_resource = Resource::Inspector.new(url)
    self.create(
      title: inspected_resource.title,
      description: inspected_resource.description,
      url: inspected_resource.url,
      image_url: inspected_resource.image_url
    )
  end
end
