-- 1) USERS
CREATE TABLE users (
    user_id       SERIAL PRIMARY KEY,
    first_name    VARCHAR(100),
    last_name     VARCHAR(100),
    email         VARCHAR(250) UNIQUE NOT NULL,
    password_hash VARCHAR(250) NOT NULL,
    username      VARCHAR(50)  UNIQUE NOT NULL
);

-- 2) GAMES
CREATE TABLE games (
    game_id     SERIAL PRIMARY KEY,
    game_name   VARCHAR(100) NOT NULL,
    max_players INT,
    img_banner  TEXT,
    img_card    TEXT,
    description TEXT
);

-- 3) TOURNAMENTS
CREATE TABLE tournaments (
    tournament_id          SERIAL PRIMARY KEY,
    game_id                INT REFERENCES games(game_id),
    tournament_name        VARCHAR(150) NOT NULL,
    tournament_description TEXT,
    start_datetime         TIMESTAMP,
    end_datetime           TIMESTAMP,
    platform               VARCHAR(100)
);

-- 4) USER_TOURNAMENT
CREATE TABLE user_tournament (
    user_id       INT REFERENCES users(user_id),
    tournament_id INT REFERENCES tournaments(tournament_id),
    PRIMARY KEY (user_id, tournament_id)
);

-- 5) USER_PLATFORM
CREATE TABLE user_platform (
    user_id     INT REFERENCES users(user_id),
    platform_id VARCHAR(100),
    PRIMARY KEY (platform_id)
);
