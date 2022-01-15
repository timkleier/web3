module ApplicationHelper
  def footer_menu_item(label, icon)
    "#{semantic_icon("#{icon} icon")} #{label}".html_safe
  end
end
