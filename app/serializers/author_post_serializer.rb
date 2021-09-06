# Thanks to the official solution - I looked at it and
# used it for my solution - now I understand how it works.

class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content
  has_many :tags

  def short_content
    "#{object.content[0..39]}..."
  end

end
