Dir[File.join(File.dirname(__FILE__ ), "../pages/*_page.rb")].each {|file| require file}

module Pages
  def enter_vehicle
    @enter_vehicle ||= Enter_Data_Vehicle.new
  end
  def enter_insurant
    @enter_insurant ||= Enter_Insurante.new
  end
  def enter_product
    @enter_product ||= Enter_Product.new
  end
  def send_quote
    @send_quote ||= Send_Quote.new
  end
  end