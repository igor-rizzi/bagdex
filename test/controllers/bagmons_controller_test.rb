require 'test_helper'

class BagmonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bagmon = bagmons(:one)
  end

  test "should get index" do
    get bagmons_url
    assert_response :success
  end

  test "should get new" do
    get new_bagmon_url
    assert_response :success
  end

  test "should create bagmon" do
    assert_difference('Bagmon.count') do
      post bagmons_url, params: { bagmon: { id_type: @bagmon.id_type, name: @bagmon.name } }
    end

    assert_redirected_to bagmon_url(Bagmon.last)
  end

  test "should show bagmon" do
    get bagmon_url(@bagmon)
    assert_response :success
  end

  test "should get edit" do
    get edit_bagmon_url(@bagmon)
    assert_response :success
  end

  test "should update bagmon" do
    patch bagmon_url(@bagmon), params: { bagmon: { id_type: @bagmon.id_type, name: @bagmon.name } }
    assert_redirected_to bagmon_url(@bagmon)
  end

  test "should destroy bagmon" do
    assert_difference('Bagmon.count', -1) do
      delete bagmon_url(@bagmon)
    end

    assert_redirected_to bagmons_url
  end
end
