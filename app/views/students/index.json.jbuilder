json.array!(@students) do |student|
  json.extract! student, :id, :fullname, :birthday, :Recordbook_id, :Faculty_id, :group
  json.url student_url(student, format: :json)
end
