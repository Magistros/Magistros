json.array!(@lehrerbewertungs) do |lehrerbewertung|
  json.extract! lehrerbewertung, :id, :ug, :uv, :fr, :ums, :lehrerid, :anzahl
  json.url lehrerbewertung_url(lehrerbewertung, format: :json)
end
