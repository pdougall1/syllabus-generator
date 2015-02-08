module FormHelper

  def week_separator(date)
    if @this_week != date.strftime("%U")
      @this_week = date.strftime("%U")
      return separator(date)
    end
  end

  private

  def separator(date)
    beginning = date.at_beginning_of_week.strftime("%b %d, %Y")
    ending = date.at_end_of_week.strftime("%b %d, %Y")
    content = "#{beginning} - #{ending}"
    content_tag(:div, content, class: 'week-separator')
  end
end
