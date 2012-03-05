require 'test_helper'

class ArticleDataControllerTest < ActionController::TestCase
  setup do
    @article_datum = article_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:article_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create article_datum" do
    assert_difference('ArticleDatum.count') do
      post :create, article_datum: @article_datum.attributes
    end

    assert_redirected_to article_datum_path(assigns(:article_datum))
  end

  test "should show article_datum" do
    get :show, id: @article_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @article_datum
    assert_response :success
  end

  test "should update article_datum" do
    put :update, id: @article_datum, article_datum: @article_datum.attributes
    assert_redirected_to article_datum_path(assigns(:article_datum))
  end

  test "should destroy article_datum" do
    assert_difference('ArticleDatum.count', -1) do
      delete :destroy, id: @article_datum
    end

    assert_redirected_to article_data_path
  end
end
