class HomeSorter
  def intialized(homes)
    @homes = homes
  end

  def home_printer
    @homes.each do | home |
      puts "#{home.name} in #{home.city}"
      puts "Price: #{home.price}"
      puts "Capacity: #{home.capacity}"  	
    end
  end
end