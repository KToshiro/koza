json.array!(@pc_infos) do |pc_info|
  json.extract! pc_info, :id, :title, :description, :picture, :url
  json.url pc_info_url(pc_info, format: :json)
end
