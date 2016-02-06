json.array!(@vlans) do |vlan|
  json.extract! vlan, :id, :description
  json.url vlan_url(vlan, format: :json)
end
