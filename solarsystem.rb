class System

  def initialize
    @bodies = []
  end

  def add(celestrial)
    if @bodies.include? celestrial
      puts "#{celestrial.name} is already in your Solar System."
    else
      @bodies << celestrial
    end
  end

  def total_mass
    total_body = 0
    @bodies.each do |body|
      total_body += body.mass
    end
    return total_body
  end

end

class Body

  def initialize(name, mass)
    @name = name
    @mass = mass
  end

  def name
    @name
  end

  def mass
    @mass
  end

end

class Planet < Body
  def initialize(name, mass, day, year)
    super(name, mass)
    @day = day # in hours
    @year = year # in days
  end
end

class Star < Body
  def initialize(name, mass, type)
    super(name, mass)
    @type = type
  end
end

class Moon < Body
  def initialize(name, mass, month, planet)
    super(name, mass)
    @month = month # in days to orbit once
    @planet = planet # object
  end
end
