def tell_browser_type(browser)
  header = "You are using"
  if (browser.type == "Safari")
    puts "#{header} the Safari browser."
  else
    puts "#{header} a non-Safari browser."
  end
end
