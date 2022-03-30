require "application_system_test_case"

class Project2sTest < ApplicationSystemTestCase
  setup do
    @project2 = project2s(:one)
  end

  test "visiting the index" do
    visit project2s_url
    assert_selector "h1", text: "Project2s"
  end

  test "should create project2" do
    visit project2s_url
    click_on "New project2"

    fill_in "Body", with: @project2.body
    fill_in "Description", with: @project2.description
    fill_in "Slug", with: @project2.slug
    fill_in "Title", with: @project2.title
    click_on "Create Project2"

    assert_text "Project2 was successfully created"
    click_on "Back"
  end

  test "should update Project2" do
    visit project2_url(@project2)
    click_on "Edit this project2", match: :first

    fill_in "Body", with: @project2.body
    fill_in "Description", with: @project2.description
    fill_in "Slug", with: @project2.slug
    fill_in "Title", with: @project2.title
    click_on "Update Project2"

    assert_text "Project2 was successfully updated"
    click_on "Back"
  end

  test "should destroy Project2" do
    visit project2_url(@project2)
    click_on "Destroy this project2", match: :first

    assert_text "Project2 was successfully destroyed"
  end
end
