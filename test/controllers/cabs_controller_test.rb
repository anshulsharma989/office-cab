require 'test_helper'

class CabsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cab = cabs(:one)
  end

  test "should get index" do
    get cabs_url
    assert_response :success
  end

  test "should get new" do
    get new_cab_url
    assert_response :success
  end

  test "should create cab" do
    assert_difference('Cab.count') do
      post cabs_url, params: { cab: { car_id: @cab.car_id, driver_id: @cab.driver_id, location: @cab.location } }
    end

    assert_redirected_to cab_url(Cab.last)
  end

  test "should show cab" do
    get cab_url(@cab)
    assert_response :success
  end

  test "should get edit" do
    get edit_cab_url(@cab)
    assert_response :success
  end

  test "should update cab" do
    patch cab_url(@cab), params: { cab: { car_id: @cab.car_id, driver_id: @cab.driver_id, location: @cab.location } }
    assert_redirected_to cab_url(@cab)
  end

  test "should destroy cab" do
    assert_difference('Cab.count', -1) do
      delete cab_url(@cab)
    end

    assert_redirected_to cabs_url
  end
end
