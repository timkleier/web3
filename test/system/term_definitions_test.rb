require "application_system_test_case"

class TermDefinitionsTest < ApplicationSystemTestCase
  setup do
    @term_definition = term_definitions(:one)
  end

  test "visiting the index" do
    visit term_definitions_url
    assert_selector "h1", text: "Term Definitions"
  end

  test "creating a Term definition" do
    visit term_definitions_url
    click_on "New Term Definition"

    fill_in "Description", with: @term_definition.description
    fill_in "Source name", with: @term_definition.source_name
    fill_in "Source url", with: @term_definition.source_url
    click_on "Create Term definition"

    assert_text "Term definition was successfully created"
    click_on "Back"
  end

  test "updating a Term definition" do
    visit term_definitions_url
    click_on "Edit", match: :first

    fill_in "Description", with: @term_definition.description
    fill_in "Source name", with: @term_definition.source_name
    fill_in "Source url", with: @term_definition.source_url
    click_on "Update Term definition"

    assert_text "Term definition was successfully updated"
    click_on "Back"
  end

  test "destroying a Term definition" do
    visit term_definitions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Term definition was successfully destroyed"
  end
end
