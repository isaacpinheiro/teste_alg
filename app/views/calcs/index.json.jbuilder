json.array!(@calcs) do |calc|
  json.extract! calc, :id, :a, :b, :c
  json.url calc_url(calc, format: :json)
end
