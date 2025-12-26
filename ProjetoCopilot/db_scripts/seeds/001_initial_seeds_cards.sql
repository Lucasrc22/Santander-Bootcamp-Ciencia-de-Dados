
INSERT INTO tbl_cards (
    name, hp, info, attack, damage, weak, resist, retreat,
    card_number_in_collection, collection_id, type_id, stage_id
)
SELECT
    'Alakazam', 80, NULL, 'Confuse Ray', 30, 'Darkness', 'Fighting', 2,
    1,
    (SELECT id FROM tbl_collections WHERE collection_set_name='Base Set'),
    (SELECT id FROM tbl_types WHERE name='Psychic'),
    (SELECT id FROM tbl_stages WHERE name='Stage 2');

INSERT INTO tbl_cards (
    name, hp, info, attack, damage, weak, resist, retreat,
    card_number_in_collection, collection_id, type_id, stage_id
)
SELECT
    'Blastoise', 100, NULL, 'Hydro Pump', 40, 'Lightning', 'Metal', 3,
    2,
    (SELECT id FROM tbl_collections WHERE collection_set_name='Base Set'),
    (SELECT id FROM tbl_types WHERE name='Water'),
    (SELECT id FROM tbl_stages WHERE name='Stage 2');

INSERT INTO tbl_cards (
    name, hp, info, attack, damage, weak, resist, retreat,
    card_number_in_collection, collection_id, type_id, stage_id
)
SELECT
    'Chansey', 120, NULL, 'Double-Edge', 80, 'Fighting', NULL, 1,
    3,
    (SELECT id FROM tbl_collections WHERE collection_set_name='Base Set'),
    (SELECT id FROM tbl_types WHERE name='Colorless'),
    (SELECT id FROM tbl_stages WHERE name='Basic');

INSERT INTO tbl_cards (
    name, hp, info, attack, damage, weak, resist, retreat,
    card_number_in_collection, collection_id, type_id, stage_id
)
SELECT
    'Clefairy', 40, NULL, 'Metronome', 0, 'Metal', 'Darkness', 1,
    5,
    (SELECT id FROM tbl_collections WHERE collection_set_name='Base Set'),
    (SELECT id FROM tbl_types WHERE name='Colorless'),
    (SELECT id FROM tbl_stages WHERE name='Basic');

INSERT INTO tbl_cards (
    name, hp, info, attack, damage, weak, resist, retreat,
    card_number_in_collection, collection_id, type_id, stage_id
)
SELECT
    'Gyarados', 100, NULL, 'Dragon Rage', 50, 'Lightning', 'Fighting', 3,
    6,
    (SELECT id FROM tbl_collections WHERE collection_set_name='Base Set'),
    (SELECT id FROM tbl_types WHERE name='Water'),
    (SELECT id FROM tbl_stages WHERE name='Stage 1');

INSERT INTO tbl_cards (
    name, hp, info, attack, damage, weak, resist, retreat,
    card_number_in_collection, collection_id, type_id, stage_id
)
SELECT
    'Machamp', 100, NULL, 'Seismic Toss', 60, 'Psychic', NULL, 3,
    7,
    (SELECT id FROM tbl_collections WHERE collection_set_name='Base Set'),
    (SELECT id FROM tbl_types WHERE name='Fighting'),
    (SELECT id FROM tbl_stages WHERE name='Stage 2');

INSERT INTO tbl_cards (
    name, hp, info, attack, damage, weak, resist, retreat,
    card_number_in_collection, collection_id, type_id, stage_id
)
SELECT
    'Magneton', 80, NULL, 'Thunder Wave', 30, 'Fighting', 'Metal', 2,
    9,
    (SELECT id FROM tbl_collections WHERE collection_set_name='Base Set'),
    (SELECT id FROM tbl_types WHERE name='Lightning'),
    (SELECT id FROM tbl_stages WHERE name='Stage 1');

INSERT INTO tbl_cards (
    name, hp, info, attack, damage, weak, resist, retreat,
    card_number_in_collection, collection_id, type_id, stage_id
)
SELECT
    'Ninetales', 80, NULL, 'Fire Blast', 60, 'Water', 'Metal', 1,
    12,
    (SELECT id FROM tbl_collections WHERE collection_set_name='Base Set'),
    (SELECT id FROM tbl_types WHERE name='Fire'),
    (SELECT id FROM tbl_stages WHERE name='Stage 1');

INSERT INTO tbl_cards (
    name, hp, info, attack, damage, weak, resist, retreat,
    card_number_in_collection, collection_id, type_id, stage_id
)
SELECT
    'Venusaur', 100, NULL, 'Solar Beam', 60, 'Fire', 'Water', 2,
    15,
    (SELECT id FROM tbl_collections WHERE collection_set_name='Base Set'),
    (SELECT id FROM tbl_types WHERE name='Grass'),
    (SELECT id FROM tbl_stages WHERE name='Stage 2');

INSERT INTO tbl_cards (
    name, hp, info, attack, damage, weak, resist, retreat,
    card_number_in_collection, collection_id, type_id, stage_id
)
SELECT
    'Zapdos', 90, NULL, 'Thunder', 60, 'Fighting', 'Metal', 3,
    16,
    (SELECT id FROM tbl_collections WHERE collection_set_name='Base Set'),
    (SELECT id FROM tbl_types WHERE name='Lightning'),
    (SELECT id FROM tbl_stages WHERE name='Basic');

INSERT INTO tbl_cards (
    name, hp, info, attack, damage, weak, resist, retreat,
    card_number_in_collection, collection_id, type_id, stage_id
)
SELECT
    'Scyther', 70, NULL, 'Slash', 30, 'Fire', 'Fighting', 1,
    10,
    (SELECT id FROM tbl_collections WHERE collection_set_name='Jungle'),
    (SELECT id FROM tbl_types WHERE name='Grass'),
    (SELECT id FROM tbl_stages WHERE name='Basic');

INSERT INTO tbl_cards (
    name, hp, info, attack, damage, weak, resist, retreat,
    card_number_in_collection, collection_id, type_id, stage_id
)
SELECT
    'Snorlax', 90, NULL, 'Body Slam', 30, 'Fighting', NULL, 4,
    29,
    (SELECT id FROM tbl_collections WHERE collection_set_name='Jungle'),
    (SELECT id FROM tbl_types WHERE name='Colorless'),
    (SELECT id FROM tbl_stages WHERE name='Basic');

INSERT INTO tbl_cards (
    name, hp, info, attack, damage, weak, resist, retreat,
    card_number_in_collection, collection_id, type_id, stage_id
)
SELECT
    'Vaporeon', 80, NULL, 'Water Gun', 30, 'Lightning', 'Metal', 2,
    12,
    (SELECT id FROM tbl_collections WHERE collection_set_name='Jungle'),
    (SELECT id FROM tbl_types WHERE name='Water'),
    (SELECT id FROM tbl_stages WHERE name='Stage 1');

INSERT INTO tbl_cards (
    name, hp, info, attack, damage, weak, resist, retreat,
    card_number_in_collection, collection_id, type_id, stage_id
)
SELECT
    'Articuno', 70, NULL, 'Ice Beam', 30, 'Metal', 'Fighting', 2,
    2,
    (SELECT id FROM tbl_collections WHERE collection_set_name='Fossil'),
    (SELECT id FROM tbl_types WHERE name='Water'),
    (SELECT id FROM tbl_stages WHERE name='Basic');

INSERT INTO tbl_cards (
    name, hp, info, attack, damage, weak, resist, retreat,
    card_number_in_collection, collection_id, type_id, stage_id
)
SELECT
    'Kabutops', 90, NULL, 'Slash', 40, 'Grass', 'Lightning', 2,
    9,
    (SELECT id FROM tbl_collections WHERE collection_set_name='Fossil'),
    (SELECT id FROM tbl_types WHERE name='Fighting'),
    (SELECT id FROM tbl_stages WHERE name='Stage 2');

INSERT INTO tbl_cards (
    name, hp, info, attack, damage, weak, resist, retreat,
    card_number_in_collection, collection_id, type_id, stage_id
)
SELECT
    'Aerodactyl', 60, NULL, 'Wing Attack', 30, 'Water', 'Fighting', 1,
    1,
    (SELECT id FROM tbl_collections WHERE collection_set_name='Fossil'),
    (SELECT id FROM tbl_types WHERE name='Colorless'),
    (SELECT id FROM tbl_stages WHERE name='Stage 1');

INSERT INTO tbl_cards (
    name, hp, info, attack, damage, weak, resist, retreat,
    card_number_in_collection, collection_id, type_id, stage_id
)
SELECT
    'Dark Dragonite', 80, NULL, 'Giant Tail', 70, 'Fairy', 'Fighting', 2,
    5,
    (SELECT id FROM tbl_collections WHERE collection_set_name='Team Rocket'),
    (SELECT id FROM tbl_types WHERE name='Colorless'),
    (SELECT id FROM tbl_stages WHERE name='Stage 2');

INSERT INTO tbl_cards (
    name, hp, info, attack, damage, weak, resist, retreat,
    card_number_in_collection, collection_id, type_id, stage_id
)
SELECT
    'Dark Blastoise', 70, NULL, 'Hydro Cannon', 40, 'Lightning', 'Metal', 2,
    20,
    (SELECT id FROM tbl_collections WHERE collection_set_name='Team Rocket'),
    (SELECT id FROM tbl_types WHERE name='Water'),
    (SELECT id FROM tbl_stages WHERE name='Stage 2');

INSERT INTO tbl_cards (
    name, hp, info, attack, damage, weak, resist, retreat,
    card_number_in_collection, collection_id, type_id, stage_id
)
SELECT
    'Dark Alakazam', 60, NULL, 'Teleport Blast', 30, 'Darkness', 'Fighting', 1,
    1,
    (SELECT id FROM tbl_collections WHERE collection_set_name='Team Rocket'),
    (SELECT id FROM tbl_types WHERE name='Psychic'),
    (SELECT id FROM tbl_stages WHERE name='Stage 2');

INSERT INTO tbl_cards (
    name, hp, info, attack, damage, weak, resist, retreat,
    card_number_in_collection, collection_id, type_id, stage_id
)
SELECT
    'Dark Charizard', 80, NULL, 'Flamethrower', 60, 'Water', 'Metal', 3,
    4,
    (SELECT id FROM tbl_collections WHERE collection_set_name='Team Rocket'),
    (SELECT id FROM tbl_types WHERE name='Fire'),
    (SELECT id FROM tbl_stages WHERE name='Stage 2');
