json.array!(@klasses) do |klass|
  json.extract! klass, :id, :jahrgang, :kennzeichnung
  json.url klass_url(klass, format: :json)
end
