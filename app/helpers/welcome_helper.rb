# coding: UTF-8

module WelcomeHelper
  
  def day_of_week(index)
    @names ||= %w{ 日 月 火 水 木 金 土 }
    @names[index]
  end
  
  def date_classes(date)
    ret = []
    ret << 'sunday' if date.sunday?
    ret << 'saturday' if date.saturday?
    ret << 'holiday' if holiday?(date)
    ret.join(' ')
  end
  
  def holiday?(date)
    HolidayJp.holiday?(date)
  end
  
  def holiday(date)
    from = @display_date.prev_month.beginning_of_month
    to = @display_date.next_month.end_of_month
    @holidays_of_month ||= HolidayJp.between(from, to)
    @holidays_of_month.each do |holiday|
      return holiday.name if holiday.date == date
    end
    
    nil
  end
end
