require 'test_helper'

class SuvivorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @suvivor = suvivors(:one)
  end

  test "should get index" do
    get suvivors_url
    assert_response :success
  end

  test "should get new" do
    get new_suvivor_url
    assert_response :success
  end

  test "should create suvivor" do
    assert_difference('Suvivor.count') do
      post suvivors_url, params: { suvivor: { age: @suvivor.age, gender: @suvivor.gender, name: @suvivor.name } }
    end

    assert_redirected_to suvivor_url(Suvivor.last)
  end

  test "should show suvivor" do
    get suvivor_url(@suvivor)
    assert_response :success
  end

  test "should get edit" do
    get edit_suvivor_url(@suvivor)
    assert_response :success
  end

  test "should update suvivor" do
    patch suvivor_url(@suvivor), params: { suvivor: { age: @suvivor.age, gender: @suvivor.gender, name: @suvivor.name } }
    assert_redirected_to suvivor_url(@suvivor)
  end

  test "should destroy suvivor" do
    assert_difference('Suvivor.count', -1) do
      delete suvivor_url(@suvivor)
    end

    assert_redirected_to suvivors_url
  end
end
