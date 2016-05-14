require_relative('modifier')


class Authenticator
  def initialize(name, password)
    @name = "josh"
    @password = "swordfish"
  end


  def authenticator?(name, password)
    if name == @name && password == @password
      true
    end
  end
end