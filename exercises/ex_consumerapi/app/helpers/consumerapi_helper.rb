module ConsumerapiHelper
  def display_date(value)
    value.strftime("%b %d, %Y") unless value.blank?
  end
end
