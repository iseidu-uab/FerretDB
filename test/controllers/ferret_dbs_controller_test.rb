require "test_helper"

class FerretDbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ferret_db = ferret_dbs(:one)
  end

  test "should get index" do
    get ferret_dbs_url
    assert_response :success
  end

  test "should get new" do
    get new_ferret_db_url
    assert_response :success
  end

  test "should create ferret_db" do
    assert_difference("FerretDb.count") do
      post ferret_dbs_url, params: { ferret_db: { date_of_birth: @ferret_db.date_of_birth, genotype: @ferret_db.genotype, identifiers: @ferret_db.identifiers, location: @ferret_db.location, owner: @ferret_db.owner } }
    end

    assert_redirected_to ferret_db_url(FerretDb.last)
  end

  test "should show ferret_db" do
    get ferret_db_url(@ferret_db)
    assert_response :success
  end

  test "should get edit" do
    get edit_ferret_db_url(@ferret_db)
    assert_response :success
  end

  test "should update ferret_db" do
    patch ferret_db_url(@ferret_db), params: { ferret_db: { date_of_birth: @ferret_db.date_of_birth, genotype: @ferret_db.genotype, identifiers: @ferret_db.identifiers, location: @ferret_db.location, owner: @ferret_db.owner } }
    assert_redirected_to ferret_db_url(@ferret_db)
  end

  test "should destroy ferret_db" do
    assert_difference("FerretDb.count", -1) do
      delete ferret_db_url(@ferret_db)
    end

    assert_redirected_to ferret_dbs_url
  end
end
