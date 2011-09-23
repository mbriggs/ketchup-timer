module HtmlSelectorsHelpers
  def id_for(locator)
    case locator

    when "start button"
      page.find(selector_for locator)[:id]

    end
  end

  def selector_for(locator)
    case locator

    when "start button"
      "button#start-timer"

    when "cancel button"
      "button#cancel-timer"

    else
      raise "Can't find mapping from \"#{locator}\" to a selector.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end
end

World(HtmlSelectorsHelpers)
