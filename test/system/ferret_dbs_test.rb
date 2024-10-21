require "application_system_test_case"

class FerretDbsTest < ApplicationSystemTestCase
  setup do
    @ferret_db = ferret_dbs(:one)
  end

  test "visiting the index" do
    visit ferret_dbs_url
    assert_selector "h1", text: "Ferret dbs"
  end

  test "should create ferret db" do
    visit ferret_dbs_url
    click_on "New ferret db"

    fill_in "Date of birth", with: @ferret_db.date_of_birth
    fill_in "Genotype", with: @ferret_db.genotype
    fill_in "Identifiers", with: @ferret_db.identifiers
    fill_in "Location", with: @ferret_db.location
    fill_in "Owner", with: @ferret_db.owner
    click_on "Create Ferret db"

    assert_text "Ferret db was successfully created"
    click_on "Back"
  end

  test "should update Ferret db" do
    visit ferret_db_url(@ferret_db)
    click_on "Edit this ferret db", match: :first

    fill_in "Date of birth", with: @ferret_db.date_of_birth
    fill_in "Genotype", with: @ferret_db.genotype
    fill_in "Identifiers", with: @ferret_db.identifiers
    fill_in "Location", with: @ferret_db.location
    fill_in "Owner", with: @ferret_db.owner
    click_on "Update Ferret db"

    assert_text "Ferret db was successfully updated"
    click_on "Back"
  end

  test "should destroy Ferret db" do
    visit ferret_db_url(@ferret_db)
    click_on "Destroy this ferret db", match: :first

    assert_text "Ferret db was successfully destroyed"
  end
end
