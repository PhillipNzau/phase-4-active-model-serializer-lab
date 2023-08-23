
class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :tags
  belongs_to :author
end

class PostShowSerializer < ActiveModel::Serializer
  attributes :title, :short_content, :tags

  def short_content
    object.content.truncate(40, omission: "...")
  end
end
