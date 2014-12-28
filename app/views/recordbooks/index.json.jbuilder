json.array!(@recordbooks) do |recordbook|
  json.extract! recordbook, :id, :gpatests, :gpaexams, :bursaly
  json.url recordbook_url(recordbook, format: :json)
end
