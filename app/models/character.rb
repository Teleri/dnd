class Character < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  
  validates :race, inclusion: { in: ["Gnome", "Half-Elf", "Halfling", "Half-Orc", "Human", "Tiefling",
  "Orc of Exandria", "Leonin", "Satyr", "Aarakocra", "Genasi", "Goliath", "Aasimar", "Bugbear", "Firbolg", 
  "Goblin", "Hobgoblin", "Kenku", "Kobold", "Lizardfolk", "Orc", "Tabaxi", "Triton", "Yuan-ti Pureblood", 
  "Feral Tiefling", "Tortle", "Changeling", "Kalashtar", "Orc of Eberron", "Shifter", "Warforged", 
  "Gith", "Centaur", "Loxodon", "Minotaur", "Simic Hybrid", "Vedalken", "Verdan", "Locathah"] },
  presence: true
  
  validates :character_class, inclusion: { in: ["Barbarian", "Bard", "Cleric", "Druid",
  "Fighter", "Monk", "Paladin", "Ranger", "Rogue", "Sorcerer", "Warlock", "Wizard",
  "Artificer", "Blood Hunter"] },
  presence: true
  
  validates :age, :height, :weight, presence: true, numericality: { only_integer: true }

  validates :alignment, inclusion: { in: ["Chaotic Evil", "Chaotic Good", "Chaotic Neutral",
  "Lawful Evil", "Lawful Good", "Lawful Neutral", "Neutral", "Neutral Evil", "Neutral Good"] },
  presence: true

  validates :background, inclusion: { in: ["Acolyte", "Charlatan", "Criminal / Spy",
  "Entertainer", "Folk Hero", "Gladiator", "Guild Artisan / Guild Merchant", "Haunted One",
  "Hermit", "Knight", "Noble", "Outlander", "Pirate", "Sage", "Sailor", "Soldier", "Urchin"] },
  presence: true
  
  validates :gender, inclusion: { in: ["Female", "Male", "Transgender", "Two-Spirit", "Cisgender",
  "Non-Binary", "Genderqueer", "Gender expression", "Gender fluid", "Gender neutral"] },
  presence: true
end
