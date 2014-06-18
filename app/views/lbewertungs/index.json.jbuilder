json.array!(@lbewertungs) do |lbewertung|
  json.extract! lbewertung, :id, :ug, :uv, :fr, :ums, :lehrerid, :anzahl
  json.url lbewertung_url(lbewertung, format: :json)
end
