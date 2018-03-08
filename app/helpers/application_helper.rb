require 'navigation_helper.rb'
module ApplicationHelper
  include NavigationHelper
  def simple_time(time)
    time.strftime("%Y年%m月%d日 %H:%M")
  end
end
