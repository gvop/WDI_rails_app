json.array!(@sneakers) do |sneaker|
  json.extract! sneaker, :id, :type_of, :gender, :photo_source, :user_id, :make_id, :discription
  json.url sneaker_url(sneaker, format: :json)
end
