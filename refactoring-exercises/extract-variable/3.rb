def send_correct_page(browser, window)
  is_browser_safari = browser.type == "Safari"
  is_window_small = window.size < "768px"

  is_browser_safari && is_window_small ? "You are using the Safari browser in a small window." : "You are not using the Safari browser or have a big window."
end
