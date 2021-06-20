Given('User is on Main page') do
  wait_for {find_element(:xpath, "//android.widget.ImageView[@content-desc='search']").enabled?}
end

When('User enter search item {string}') do |item|
  find_element(:xpath, "//android.widget.ImageView[@content-desc='search']").click
  wait_for {find_element(:xpath, "//android.widget.EditText[@content-desc='search_default_search_text_input']").displayed?}
  find_element(:xpath, "//android.widget.EditText[@content-desc='search_default_search_text_input']").send_keys item
end

When('User click on Dropdown icon') do
  find_element(:xpath, "//android.widget.FrameLayout/android.view.ViewGroup").click
end

Then('User navigate to search result page') do
  wait_for {find_element(:xpath, "//android.view.ViewGroup[@content-desc='image_image_container']").displayed?}
  find_element(:xpath, "//android.view.ViewGroup[@content-desc='image_image_container']").click
end

Then('User add to bag') do
  wait_for {find_element(:xpath, "//android.view.ViewGroup[@content-desc='buy_button']/android.view.ViewGroup").displayed?}
  find_element(:xpath, "//android.view.ViewGroup[@content-desc='buy_button']/android.view.ViewGroup").click
  sleep 2
end

And('User go to bag') do
  find_element(:xpath, "//android.view.ViewGroup[@content-desc='buy_button']/android.view.ViewGroup").click
  wait_for {find_element(:accessibility_id, "Login to see best coupons for you").displayed?}
  #assert
  actual_text = find_element(:accessibility_id, "Login to see best coupons for you").displayed?
  unless actual_text
    fail("Expected element text is not displayed!")
  end
end
