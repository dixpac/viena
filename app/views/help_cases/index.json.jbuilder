json.array!(@help_cases) do |help_case|
  json.extract! help_case, :id, :title, :user_id, :description
  json.url help_case_url(help_case, format: :json)
end
