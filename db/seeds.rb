# Heroes
heros = [
    { name: "Kamala Khan", super_name: "Ms. Marvel" },
    { name: "Doreen Green", super_name: "Squirrel Girl" },
    { name: "Gwen Stacy", super_name: "Spider-Gwen" }
  ]
  
  heros.each do |hero|
    Hero.create(hero)
  end
  
  # Powers
  powers = [
    { name: "super strength", description: "gives the wielder super-human strengths" },
    { name: "flight", description: "gives the wielder the ability to fly through the skies at supersonic speed" }
  ]
  
  powers.each do |power|
    Power.create(power)
  end
  
  # HeroPowers
  hero_powers = [
    { hero_id: 1, power_id: 1, strength: "Average" },
    { hero_id: 1, power_id: 2, strength: "Strong" },
    { hero_id: 2, power_id: 1, strength: "Weak" },
    { hero_id: 3, power_id: 2, strength: "Average" }
  ]
  
  hero_powers.each do |hero_power|
    HeroPower.create(hero_power)
  end
  