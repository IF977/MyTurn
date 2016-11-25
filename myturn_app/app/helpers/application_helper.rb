module ApplicationHelper
 # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Agendamento Bilio Paulista"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
  def logged_in?
    !current_user.nil?
  end
end
