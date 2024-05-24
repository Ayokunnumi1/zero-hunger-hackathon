require 'application_system_test_case'

class FoodListsTest < ApplicationSystemTestCase
  setup do
    @food_list = food_lists(:one)
  end

  test 'visiting the index' do
    visit food_lists_url
    assert_selector 'h1', text: 'Food lists'
  end

  test 'should create food list' do
    visit food_lists_url
    click_on 'New food list'

    fill_in 'Collected from', with: @food_list.collected_from
    fill_in 'Donar name', with: @food_list.donar_name
    fill_in 'Donate date', with: @food_list.donate_date
    fill_in 'Food amount', with: @food_list.food_amount
    fill_in 'Food name', with: @food_list.food_name
    click_on 'Create Food list'

    assert_text 'Food list was successfully created'
    click_on 'Back'
  end

  test 'should update Food list' do
    visit food_list_url(@food_list)
    click_on 'Edit this food list', match: :first

    fill_in 'Collected from', with: @food_list.collected_from
    fill_in 'Donar name', with: @food_list.donar_name
    fill_in 'Donate date', with: @food_list.donate_date
    fill_in 'Food amount', with: @food_list.food_amount
    fill_in 'Food name', with: @food_list.food_name
    click_on 'Update Food list'

    assert_text 'Food list was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Food list' do
    visit food_list_url(@food_list)
    click_on 'Destroy this food list', match: :first

    assert_text 'Food list was successfully destroyed'
  end
end
