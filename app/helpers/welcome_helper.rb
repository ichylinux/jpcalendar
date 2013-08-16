# coding: UTF-8

module WelcomeHelper
  
  def day_of_week(index)
    @names ||= %w{ 日 月 火 水 木 金 土 }
    @names[index]
  end
end
