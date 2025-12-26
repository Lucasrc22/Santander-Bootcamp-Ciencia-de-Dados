
CREATE TABLE IF NOT EXISTS tbl_collections (
    id BIGSERIAL PRIMARY KEY,
    collection_set_name VARCHAR(100) NOT NULL,
    release_date DATE NOT NULL,
    total_cards_in_collection INTEGER NOT NULL CHECK (total_cards_in_collection >= 0),
    UNIQUE (collection_set_name)
);

CREATE TABLE IF NOT EXISTS tbl_types (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(12) NOT NULL,
    UNIQUE (name)
);

CREATE TABLE IF NOT EXISTS tbl_stages (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(12) NOT NULL,
    UNIQUE (name)
);

CREATE TABLE IF NOT EXISTS tbl_cards (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    hp INTEGER CHECK (hp >= 0),
    info TEXT,
    attack VARCHAR(100),
    damage INTEGER CHECK (damage >= 0),
    weak VARCHAR(12),
    resist VARCHAR(12),
    retreat INTEGER CHECK (retreat >= 0),
       card_number_in_collection INTEGER NOT NULL CHECK (card_number_in_collection > 0),
    collection_id BIGINT NOT NULL REFERENCES tbl_collections(id) ON UPDATE CASCADE ON DELETE RESTRICT,
    type_id BIGINT REFERENCES tbl_types(id) ON UPDATE CASCADE ON DELETE SET NULL,
    stage_id BIGINT REFERENCES tbl_stages(id) ON UPDATE CASCADE ON DELETE SET NULL,
    UNIQUE (collection_id, card_number_in_collection)
);

CREATE INDEX IF NOT EXISTS idx_tbl_cards_collection_id ON tbl_cards (collection_id);
CREATE INDEX IF NOT EXISTS idx_tbl_cards_name ON tbl_cards (name);
CREATE INDEX IF NOT EXISTS idx_tbl_cards_type_id ON tbl_cards (type_id);
