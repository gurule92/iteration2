require "application_system_test_case"

class TierItemsTest < ApplicationSystemTestCase
  setup do
    @tier_item = tier_items(:one)
  end

  test "visiting the index" do
    visit tier_items_url
    assert_selector "h1", text: "Tier Items"
  end

  test "creating a Tier item" do
    visit tier_items_url
    click_on "New Tier Item"

    fill_in "Description", with: @tier_item.description
    fill_in "Justification", with: @tier_item.justification
    fill_in "Name", with: @tier_item.name
    fill_in "Tier", with: @tier_item.tier
    click_on "Create Tier item"

    assert_text "Tier item was successfully created"
    click_on "Back"
  end

  test "updating a Tier item" do
    visit tier_items_url
    click_on "Edit", match: :first

    fill_in "Description", with: @tier_item.description
    fill_in "Justification", with: @tier_item.justification
    fill_in "Name", with: @tier_item.name
    fill_in "Tier", with: @tier_item.tier
    click_on "Update Tier item"

    assert_text "Tier item was successfully updated"
    click_on "Back"
  end

  test "destroying a Tier item" do
    visit tier_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tier item was successfully destroyed"
  end
end
