json.array!(@pictures) do |picture|
  json.extract! picture, :id, :name, :category_id, :description, :author, :author_info, :photo
  json.url picture_url(picture, format: :json)
end
