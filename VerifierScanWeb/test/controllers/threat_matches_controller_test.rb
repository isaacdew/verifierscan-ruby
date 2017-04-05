require 'test_helper'

class ThreatMatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @threat_match = threat_matches(:one)
  end

  test "should get index" do
    get threat_matches_url
    assert_response :success
  end

  test "should get new" do
    get new_threat_match_url
    assert_response :success
  end

  test "should create threat_match" do
    assert_difference('ThreatMatch.count') do
      post threat_matches_url, params: { threat_match: { caching: @threat_match.caching, domain_id: @threat_match.domain_id, platform_type: @threat_match.platform_type, threat_type: @threat_match.threat_type } }
    end

    assert_redirected_to threat_match_url(ThreatMatch.last)
  end

  test "should show threat_match" do
    get threat_match_url(@threat_match)
    assert_response :success
  end

  test "should get edit" do
    get edit_threat_match_url(@threat_match)
    assert_response :success
  end

  test "should update threat_match" do
    patch threat_match_url(@threat_match), params: { threat_match: { caching: @threat_match.caching, domain_id: @threat_match.domain_id, platform_type: @threat_match.platform_type, threat_type: @threat_match.threat_type } }
    assert_redirected_to threat_match_url(@threat_match)
  end

  test "should destroy threat_match" do
    assert_difference('ThreatMatch.count', -1) do
      delete threat_match_url(@threat_match)
    end

    assert_redirected_to threat_matches_url
  end
end
