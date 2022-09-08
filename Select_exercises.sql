use albums_db;
select * from albums;
# How many rows in albums table?
# 31 rows

#How many unique artists in albums table?
select distinct artist from albums;
# 23 distinct artists

#What is primary key for albums table?
 describe albums;
 # primary key is ID
 
 #What is oldest release date in albums?
 select * from albums where release_date = (select  min(release_date) from albums);
 # 1967
 
 #What is the newest release date?
 select * from albums where release_date = (select max(release_date) from albums);
 #2011
 
 # 4
 
 # What is name of all albums by pink floyd?
 Select name from albums where artist = 'Pink Floyd';
 # Dark side of the Moon, The Wall
 
 #What year wha sgt pepper's Lonely Hearts club released.
 Select release_date from albums where name = "Sgt. Pepper's Lonely Hearts Club Band";
 #1967
 
 #what genre was nevermind?
 Select genre from albums where name = 'nevermind';
 #grunge / Alternative rock
 
 #Which albums were made in the 90's?
 select name from albums where release_date >= 1990 and release_date < 2000;
 #The bodyguard, Jagged Little Pill, Come on Over, Falling into you, Let's Talk About Love, Dangerous, The immaculate Collection, Titanic, Metallica, Nevermind, Supernatural.
 
 #Which albums had less than 20 million certified sales
 select name, sales from albums where sales < 20; 
 #Grease, Bad, SGT Pepper, Dirty dancing, Lets talk ab love, dangerous, Immaculate collection, abbey road, born in the usa, brothers in arms, titanic, nevermind, The wall.

#find all albums that are rock
select name, genre from albums where genre like '%Rock%'

 