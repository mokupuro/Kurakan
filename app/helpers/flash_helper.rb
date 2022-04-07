module FlashHelper

  def flash_class(level)
    case level
      when 'success' then 'bg-teal-100 border-teal-500 text-teal-900'
      when 'info' then 'bg-blue-100 border-blue-500 text-blue-900'
      when 'warning' then 'bg-yellow-100 border-yellow-500 text-yellow-900'
      when 'danger' then 'bg-red-100 border-red-500 text-red-900'
    end
  end
        
  def flash_status(status)
    case status
      when 'success' then content_tag :p, "Success", class: "font-bold"
      when 'info' then content_tag :p, "Info", class: "font-bold"
      when 'warning' then content_tag :p, "Warning", class: "font-bold"
      when 'danger' then content_tag :p, "Error", class: "font-bold"
    end
  end

end