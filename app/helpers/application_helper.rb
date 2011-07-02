module ApplicationHelper
  def title
    base_title = "Lay's thinking"
    if @title.nil?
      "#{base_title}"
    else
      "#{base_title} #{@title}"
    end
  end
end
