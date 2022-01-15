class Resource::Inspector
  attr_accessor :url, :root_url, :title, :description, :image_url

  def initialize(url)
    retrieve_metadata(url)
  end

  def metainspector_fields
    %w[root_url title description]
  end

  def retrieve_metadata(url)
    meta_source = MetaInspector.new(url)
    metainspector_fields.each{|attr| send("#{attr}=", meta_source.send(attr))}
    self.image_url = meta_source.images.best
    self.url = url
  end
end
