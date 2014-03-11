json.array!(@free_flowers) do |free_flower|
  json.extract! free_flower, :id, :title, :description, :image_url
  json.url free_flower_url(free_flower, format: :json)
end
