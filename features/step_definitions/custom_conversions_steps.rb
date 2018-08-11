Then("I press on create your conversion button") do
  find_element(id: "btn_new_custom_conversion").click
end

Then("I type {string} as custom conversion name") do |name|
  find_element(id: "edit_custom_conversion_category_name").send_keys(name)
end

When("I press on New Unit button") do
  find_element(id: "btn_new_custom_unit").click
end

Then("I type {string} as unit name") do |string|
  find_element(id: "edit_custom_conversion_unit_dtls_name").send_keys(string)
end

Then("I type {string} as unit value") do |string|
  find_element(id: "edit_custom_conversion_unit_dtls_value").send_keys(string)
end

Then("I press submit checkmark on Custom conversions screen") do
  find_element(id: "action_confirm_custom_unit").click
end

Then("I verify {string} added to Custom conversion list") do |string|
  text(string)
end
