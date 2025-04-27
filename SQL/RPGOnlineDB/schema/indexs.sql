-- Index to speed up joins between character and player
CREATE INDEX idx_character_player_id ON character(player_id);

-- Index to speed up joins between character and class
CREATE INDEX idx_character_class_id ON character(class_id);

-- Index to speed up joins between character and language
CREATE INDEX idx_character_language_id ON character(language_id);

-- Index to speed up inventory character lookups
CREATE INDEX idx_inventory_character_id ON inventory(character_id);

-- Index to speed up inventory item lookups
CREATE INDEX idx_inventory_item_id ON inventory(item_id);

-- Index to speed up language_mission lookups
CREATE INDEX idx_language_mission_language_id ON language_mission(language_id);

CREATE INDEX idx_language_mission_mission_id ON language_mission(mission_id);
