require "application_system_test_case"

class PartiesTest < ApplicationSystemTestCase
  setup do
    @party = parties(:one)
  end

  test "visiting the index" do
    visit parties_url
    assert_selector "h1", text: "Parties"
  end

  test "should create party" do
    visit parties_url
    click_on "New party"

    fill_in "Last name", with: @party.last_name
    fill_in "Party", with: @party.party_id
    fill_in "Party size", with: @party.party_size
    fill_in "Phone", with: @party.phone
    fill_in "Time", with: @party.time
    click_on "Create Party"

    assert_text "Party was successfully created"
    click_on "Back"
  end

  test "should update Party" do
    visit party_url(@party)
    click_on "Edit this party", match: :first

    fill_in "Last name", with: @party.last_name
    fill_in "Party", with: @party.party_id
    fill_in "Party size", with: @party.party_size
    fill_in "Phone", with: @party.phone
    fill_in "Time", with: @party.time
    click_on "Update Party"

    assert_text "Party was successfully updated"
    click_on "Back"
  end

  test "should destroy Party" do
    visit party_url(@party)
    click_on "Destroy this party", match: :first

    assert_text "Party was successfully destroyed"
  end
end
