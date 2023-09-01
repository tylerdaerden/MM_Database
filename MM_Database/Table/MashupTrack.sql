CREATE TABLE MashupTrack
(
    MashupId INT NOT NULL,
    TrackId INT NOT NULL,
    CONSTRAINT PK_MashupTrack PRIMARY KEY (MashupId, TrackId)
);