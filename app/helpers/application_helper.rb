module ApplicationHelper
  
  def main_navigation_select(menu)
    if controller.controller_path == 'home' && menu == "home"
      "active"
    end
  end
  
end
