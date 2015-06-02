json.array!(@villains) do |villain|
  json.extract! villain, :id, :name, :arch_nemesis, :powers, :evil_plan, :superhero_id
  json.url villain_url(villain, format: :json)
end
