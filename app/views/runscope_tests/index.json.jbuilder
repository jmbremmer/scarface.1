json.array!(@runscope_tests) do |runscope_test|
  json.extract! runscope_test, :id, :name, :url
  json.url runscope_test_url(runscope_test, format: :json)
end
