# Understands detecting the browser type and sending the user a message
class BrowserMessage
  def tell_browser_type(browser)
    safari_message = "You are using the Safari browser."
    not_safari_message = "You are not using a Safari browser."

    BrowserType.new.safari?(browser) ? (puts safari_message) : (puts not_safari_message)
  end
end

class BrowserType
  def safari?(browser)
    browser.type == "Safari"
  end
end
