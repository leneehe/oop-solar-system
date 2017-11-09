require_relative 'solarsystem'

solar_system = System.new
sun = Star.new("Sun", 333_000, "G2V")
earth = Planet.new("Earth", 1, 24, 365)
earthmoon = Moon.new("Earth's Moon", 0.25, 30, earth)
solar_system.add(sun)
solar_system.add(earth)
solar_system.add(earthmoon)
puts solar_system.total_mass
