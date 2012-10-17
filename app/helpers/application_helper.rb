module ApplicationHelper

  def icon(icon_name, link_text)
    "<i class='icon-#{icon_name}'></i> #{link_text}".html_safe
  end

  def nav_change(name)
    javascript_tag <<-JS
      $('.navbar').find(".active").attr('class', '')
      $('.navbar').find("li a:contains(' #{name}')").parent().attr('class', 'active')
    JS
  end
end
