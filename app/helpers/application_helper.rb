module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "WPILife"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end
  
  def remote_hostname
    require 'resolv'
    Resolv.getname(request.remote_ip)
  end
end
