/* the query finds all plays produced by Juan Soto */
SELECT events.GAME_ID, events.YEAR_ID, events.PITCH_SEQ_TX, events.BAT_ID, events.EVENT_TX, roster.first_name, roster.last_name
FROM retrosheet.events
INNER JOIN retrosheet.roster ON events.BAT_ID=roster.player_id
WHERE roster.first_name = 'Juan' AND roster.last_name = 'Soto';  

/* the query finds all plays since 1950 with a projection for certain attributes */
SELECT events.GAME_ID, events.YEAR_ID, events.PITCH_SEQ_TX, events.BAT_ID, events.EVENT_TX, roster.first_name, roster.last_name
FROM retrosheet.events
INNER JOIN retrosheet.roster ON events.BAT_ID=roster.player_id;

/* the query finds all plays by left-handed batters since 1950 */
SELECT events.GAME_ID, events.YEAR_ID, events.PITCH_SEQ_TX, events.BAT_ID, events.BAT_HAND_CD, events.EVENT_TX, roster.first_name, roster.last_name
FROM retrosheet.events
INNER JOIN retrosheet.roster ON events.BAT_ID=roster.player_id
WHERE events.BAT_HAND_CD = 'L';

/* the query finds all plays by right-handed batters since 1950 */
SELECT events.GAME_ID, events.YEAR_ID, events.PITCH_SEQ_TX, events.BAT_ID, events.BAT_HAND_CD, events.EVENT_TX, roster.first_name, roster.last_name
FROM retrosheet.events
INNER JOIN retrosheet.roster ON events.BAT_ID=roster.player_id
WHERE events.BAT_HAND_CD = 'R';

/* the query finds all plays after the 2017 season */
SELECT events.GAME_ID, events.YEAR_ID, events.PITCH_SEQ_TX, events.BAT_ID, events.BAT_HAND_CD, events.EVENT_TX, roster.first_name, roster.last_name
FROM retrosheet.events
INNER JOIN retrosheet.roster ON events.BAT_ID=roster.player_id
WHERE events.YEAR_ID > 2017;

/* the query find all plays after the 2017 season produced by left-handed batters */
SELECT events.GAME_ID, events.YEAR_ID, events.PITCH_SEQ_TX, events.BAT_ID, events.BAT_HAND_CD, events.EVENT_TX, roster.first_name, roster.last_name
FROM retrosheet.events
INNER JOIN retrosheet.roster ON events.BAT_ID=roster.player_id
WHERE events.YEAR_ID > 2017 AND events.BAT_HAND_CD = 'L';

/* the query finds all plays after 2017 season produced by right-handed batters */
SELECT events.GAME_ID, events.YEAR_ID, events.PITCH_SEQ_TX, events.BAT_ID, events.BAT_HAND_CD, events.EVENT_TX, roster.first_name, roster.last_name
FROM retrosheet.events
INNER JOIN retrosheet.roster ON events.BAT_ID=roster.player_id
WHERE events.YEAR_ID > 2017 AND events.BAT_HAND_CD = 'R';



