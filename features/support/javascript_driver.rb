# execute js within Capybara

module JavascriptDriver

  def scroll_to(element)
    script = <<-JS
      arguments[0].scrollIntoView(true);
    JS
    Capybara.current_session.driver.browser.execute_script(script, element.native)
  end



end
