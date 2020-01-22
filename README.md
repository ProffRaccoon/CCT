# CCT
Cast Cast Transmutation

Version 0_2
- 2 demo rooms implemented (rats and eighthWonder)
- recording room to save record rhythm to the .ini file


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
