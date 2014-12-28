json.array!(@lecturers) do |lecturer|
  json.extract! lecturer, :id, :fullname, :degree, :salary
  json.url lecturer_url(lecturer, format: :json)
end
