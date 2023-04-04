require "test_helper"

class TierItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tier_item = tier_items(:one)
  end

  test "should get index" do
    get tier_items_url
    assert_response :success
  end

  test "should get new" do
    get new_tier_item_url
    assert_response :success
  end

  test "should create tier_item" do
    assert_difference('TierItem.count') do
      post tier_items_url, params: { tier_item: { description: @tier_item.description, justification: @tier_item.justification, name: @tier_item.name, tier: @tier_item.tier, tierList: @tier_item.tierList } }
    end

    assert_redirected_to tier_item_url(TierItem.last)
  end

  test "should show tier_item" do
    get tier_item_url(@tier_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_tier_item_url(@tier_item)
    assert_response :success
  end

  test "should update tier_item" do
    patch tier_item_url(@tier_item), params: { tier_item: { description: @tier_item.description, justification: @tier_item.justification, name: @tier_item.name, tier: @tier_item.tier, tierList: @tier_item.tierList } }
    assert_redirected_to tier_item_url(@tier_item)
  end

  test "should destroy tier_item" do
    assert_difference('TierItem.count', -1) do
      delete tier_item_url(@tier_item)
    end

    assert_redirected_to tier_items_url
  end
end
