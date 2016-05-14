class Fruit < Item
  
  def price
    
    today = Time.now
    
    if today.saturday? || today.sunday?
      @price * 0.90
    end

  end
end