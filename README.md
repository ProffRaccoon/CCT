# CCT
Cast Cast Transmutation

How recording rhythms work:
once a song starts for recording, a counter keeps track of how many frames have passed since the song started.
pressing a button, like 'SPACE' saves the frame_number and a script (such as create_arrow) to a 2d array.

pressing 'K' saves the array to a .ini file, under a header with the songName, and number of entries in the array.

1. on initialization of the "room" the obj_recorder prompts the user for a song name in a popup.
   This should be the SAME NAME as an existing song asset previously loaded into gamemaker (ie, eighthWonder is in there).
2. get in the mindspace to start recording and press the space bar. The song will start playing immediatley upon the spacebar   
   press.
3. once the song is playing, your key presses are being recorded in time to the music. Pressing 'A', 'W', 'D'
   will record a corresponding arrow. pressing 'SPACE' will record a random directional arrow.
4. after you've finished recording input, or the song is over, press 'K' to save the info to the songs.ini file 
   // the information saved is under the header [songName] and contains the array, and the number of entries in the array,
5. to test your song and make sure it loads/runs correctly, press 'Q' to load the song from the songs.ini and try it out.

Once you are certain the song is mapped to your liking, you'll need to navigate to the "%appdata%/Wizard Dance 0_2_3" folder and copy the songs.ini file into the project folder. 


##########################################
To add a "special" effect or a dialog option, go into the object running the timeline (ie, obj_gef or obj_rats) and go into the step event. (make sure to inherit the step from obj_spawner to ensure it runs correctly). This only syncs with the song playthrough, if you wanted to have some dialog/effects before the song, you'd have to make a counter to count steps, and run a switch statement for that counter variable.

once in the step event, do the following:
1. create a switch statement, looking at the variable "timeline_position"
2. for each effect you want, create a case, and put in the desired timepoint for the effect/dialog to occur (ie, if I wanted to have a dialog pop up at 2 seconds into the song, the case would look like "case 2*60:   scr_text(<the stuff in scr text>)    ;break;")

note: most of the effects are done through scripts, but you could hard code an effect in a case if there's something special that only occurs once a level (ie, change the view position or subtract a chunk of the points or something)
##########
Fixes/changes in 0_2_3
- obj_start_arrow is now correctly made when scr_start is called
- placeholder sprites for menu / dialog are made
- song "Ultirat showdown" mapped, ready for effects (puking rats)
- view ratio is 16:9, displaying as 1920x1080
   - level views are a fraction of this, to account for sprite size of arrows/scroll (unknown if enlarging the sprite will break the  game)
- most of the "special effects" are implemented via script/have been tested, still a few to go
- pressing escape brings you back to the main level select screen.
-bunch of other stuff I probably forgot about
