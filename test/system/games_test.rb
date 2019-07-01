require "application_system_test_case"

class GamesTest < ApplicationSystemTestCase
  test "Going to /new gives us a new random grid to play with/ enter one letter" do
    visit new_url
    assert test: "New game"
    assert_selector "p", count: 10
    fill_in "word", with: "a"
    click_on "button"
    assert_text "This word does not exist!"
  end

  test "Going to /new gives us a new random grid to play with/ enter hello" do
    visit new_url
    assert test: "New game"
    assert_selector "p", count: 10
    fill_in "word", with: "hello"
    click_on "button"
    assert_text "Your word is not made of the given letters!"
  end
end
