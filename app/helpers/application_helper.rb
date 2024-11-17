module ApplicationHelper
    def format_date_range(start_time, end_time)
      if start_time.to_date == end_time.to_date
        "#{start_time.strftime('%A, %B %d, %Y')}"
      else
        "#{start_time.strftime('%A, %B %d, %Y')} - #{end_time.strftime('%A, %B %d, %Y')}"
      end
    end
end
