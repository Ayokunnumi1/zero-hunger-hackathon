require 'test_helper'

class FoodListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food_list = food_lists(:one)
  end

  test 'should get index' do
    get food_lists_url
    assert_response :success
  end

  test 'should get new' do
    get new_food_list_url
    assert_response :success
  end

  test 'should create food_list' do
    assert_difference('FoodList.count') do
      post food_lists_url,
           params: { food_list: { collected_from: @food_list.collected_from,
                                  donar_name: @food_list.donar_name,
                                  donate_date: @food_list.donate_date,
                                  food_amount: @food_list.food_amount,
                                  food_name: @food_list.food_name } }
    end

    assert_redirected_to food_list_url(FoodList.last)
  end

  test 'should show food_list' do
    get food_list_url(@food_list)
    assert_response :success
  end

  test 'should get edit' do
    get edit_food_list_url(@food_list)
    assert_response :success
  end

  test 'should update food_list' do
    patch food_list_url(@food_list),
          params: { food_list: { collected_from: @food_list.collected_from,
                                 donar_name: @food_list.donar_name,
                                 donate_date: @food_list.donate_date,
                                 food_amount: @food_list.food_amount,
                                 food_name: @food_list.food_name } }
    assert_redirected_to food_list_url(@food_list)
  end

  test 'should destroy food_list' do
    assert_difference('FoodList.count', -1) do
      delete food_list_url(@food_list)
    end

    assert_redirected_to food_lists_url
  end
end
