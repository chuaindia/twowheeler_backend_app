require "test_helper"

class TwowheelersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @twowheeler = twowheelers(:one)
  end

  test "should get index" do
    get twowheelers_url, as: :json
    assert_response :success
  end

  test "should create twowheeler" do
    assert_difference("Twowheeler.count") do
      post twowheelers_url, params: { twowheeler: { description: @twowheeler.description, engine_type: @twowheeler.engine_type, fuel_type: @twowheeler.fuel_type, image_url: @twowheeler.image_url, model_year: @twowheeler.model_year, name: @twowheeler.name, price: @twowheeler.price } }, as: :json
    end

    assert_response :created
  end

  test "should show twowheeler" do
    get twowheeler_url(@twowheeler), as: :json
    assert_response :success
  end

  test "should update twowheeler" do
    patch twowheeler_url(@twowheeler), params: { twowheeler: { description: @twowheeler.description, engine_type: @twowheeler.engine_type, fuel_type: @twowheeler.fuel_type, image_url: @twowheeler.image_url, model_year: @twowheeler.model_year, name: @twowheeler.name, price: @twowheeler.price } }, as: :json
    assert_response :success
  end

  test "should destroy twowheeler" do
    assert_difference("Twowheeler.count", -1) do
      delete twowheeler_url(@twowheeler), as: :json
    end

    assert_response :no_content
  end
end
