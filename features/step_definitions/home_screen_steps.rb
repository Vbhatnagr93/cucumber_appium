Then("left unit picker value should be {string}") do |arg0|
  actual_picker_text = find_elements(id: "select_unit_spinner")[0].text
  if actual_picker_text != arg0
    fail("Expected left unit picker value is #{arg0}, actual value is #{actual_picker_text}")
  end
end

Then("right unit picker value should be {string}") do |arg1|
  array_of_elements = find_elements(id: "select_unit_spinner")
  actual_picker_text = array_of_elements[1].text
  if actual_picker_text != arg1
    fail("Expected right unit picker value is #{arg1}, actual value is #{actual_picker_text}")
  end

end

Then("show all button should be {string}") do |state|
  button_state = find_element(id: "btn_show_all").enabled?
     if state == "enabled"
      fail("Expected to be enabled") if button_state != true
     elsif state == "disabled"
       fail("Expected to be disabled ") if button_state != false
     end
    end

When("I press on clear button") do
  puts "clear button is pressed"
end

When("I type {string} on application keyboard") do |target|
  digits = target.split("")

  digits.each do |num|
    find_element(id: "keypad").find_element(xpath: "//android.widget.Button[@text='#{num}']").click
  end
end

Then("I should see result as {string}") do |result|
  value = find_element(id: "target_value").text
  if value != result
    fail("Expected value is #{result}, Actual value is #{value}")
  end
end

Then("I press on Add to Favorites icon") do
  find_element(id: "action_add_favorites").click
end

Then("I press on favorite conversions") do
  text("Favorite conversions").click
end

Then("I verify {string} added to favorites conversion list") do |favorite|
  item_text = find_element(id: "favorites_item_hint").text
  if item_text != favorite
    fail("Cannot find #{favorite} in Favorites list")
  end
end

Then("I press on search icon") do
  find_element(id: "action_bar").find_element(id: "action_search").click #parent-child search or nested search
end

Then("I type {string} in search field") do |search_text|
  find_element(id: "search_src_text").send_keys(search_text)
end

Then("I press return button on soft keyboard") do

end

Then("I see {string} as current unit convertor") do |current|
  find_element(id: "action_bar").find_element(xpath: "//android.widget.TextView[@text='#{current}']")
end

Then("I select {string} from left unit picker") do |left|
  find_elements(id: "select_unit_spinner")[0].click
  find_in_list(left)
end

Then("I select {string} from menu") do |menu_item|
  text(menu_item).click
end

Then("I select {string} from right unit picker") do |right|
  find_elements(id: "select_unit_spinner")[1].click
  find_in_list(right)
end

When("I press on switch units button") do
  find_element(id: "img_switch").click
end




