json.array!(@lehrers) do |lehrer|
  json.extract! lehrer, :id, :name, :fach1, :fach2, :fach3, :fach4
  json.url lehrer_url(lehrer, format: :json)
end
