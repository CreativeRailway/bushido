module ApplicationHelper

  def icon(icon_name, link_text)
    "<i class='icon-#{icon_name}'></i>#{link_text}".html_safe
  end
end
