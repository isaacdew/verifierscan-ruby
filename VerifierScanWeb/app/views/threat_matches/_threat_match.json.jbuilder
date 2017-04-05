json.extract! threat_match, :id, :threat_type, :platform_type, :caching, :domain_id, :created_at, :updated_at
json.url threat_match_url(threat_match, format: :json)