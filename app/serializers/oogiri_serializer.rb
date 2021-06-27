class OogiriSerializer < ActiveModel::Serializer
  attributes :id, :title, :oogiri, :description, :file_url, :image_url
end
