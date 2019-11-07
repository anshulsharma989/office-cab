require "application_system_test_case"

class CabsTest < ApplicationSystemTestCase
  setup do
    @cab = cabs(:one)
  end

  test "visiting the index" do
    visit cabs_url
    assert_selector "h1", text: "Cabs"
  end

  test "creating a Cab" do
    visit cabs_url
    click_on "New Cab"

    fill_in "Car", with: @cab.car_id
    fill_in "Driver", with: @cab.driver_id
    fill_in "Location", with: @cab.location
    click_on "Create Cab"

    assert_text "Cab was successfully created"
    click_on "Back"
  end

  test "updating a Cab" do
    visit cabs_url
    click_on "Edit", match: :first

    fill_in "Car", with: @cab.car_id
    fill_in "Driver", with: @cab.driver_id
    fill_in "Location", with: @cab.location
    click_on "Update Cab"

    assert_text "Cab was successfully updated"
    click_on "Back"
  end

  test "destroying a Cab" do
    visit cabs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cab was successfully destroyed"
  end
end
