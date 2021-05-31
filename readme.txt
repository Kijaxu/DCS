-- HOSTILE AIR MANAGEMENT --

The friendly air management script will simply spawn a group taken from an STM file, with all the information set in the Mission Editor. It will then check on the status of that group every five minutes, and if it does not exist, respawn it.
Run a single instance of this script for each asset you require. NOTE: I will try to make a single script handle multiple assets at a later date.
To get the group information, simply look at the example STM file in the repo, and then take the correct information from any STM file you create.

STEP BY STEP- 
1) Create the group you want to use in the ME.
2) Save an STM file that only contains that group.
3) Get the group information from the STM file and place it in the "flights" table at the top of the script. NOTE: Each group is a table itself, stored within the flights table. E.G. -- flights = {{GROUPINFO},}
4) Change the coalition.addGroup numerical country identifier to the desired country. The list of enums for this is available at https://wiki.hoggitworld.com/view/DCS_enum_country.
5) Run this script ONCE TIME MORE (1) in the ME scripts setup.
6) Repeat for each asset you want.




-- HOSTILE AIR MANAGEMENT --

This script functions very similarly to the above, except that it uses flags to ensure that groups are not consistently spawned over and over again.
Run a single instance of this script for each region you wish to defend. The setup is very similar, creates your potential spawns by creating STM files from the ME, the script will spawn a random STM from the defined list each time.

STEP BY STEP-
Complete steps 1-4 as detailed above.
5) Create a trigger zone that details the boundaries for you'd like to cause RED to spawn a scramble.
6) Run this script as REPETETIVE ACTION, PART OF COALITION IN ZONE (your chosen trigger zone), UNIT TYPE AIRPLANE (or as desired).
7) Repeat for each region you wish to defend.

NOTES: You can add various groups to the flights table for variety. Just remember to split them up correctly, e.g. -- flights = {{FIRSTGROUPINFO}, {SECONDGROUPINFO},)
You can change spawning rate by simply changing the seconds value at line 25.
The flag names/numbers you use to track spawning in your regions MUST BE UNIQUE.