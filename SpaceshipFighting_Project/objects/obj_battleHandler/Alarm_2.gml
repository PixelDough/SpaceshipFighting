/// @description START NEXT EVENT

event_user(2);



modeCurrent = loopVal(modeCurrent+1, 0, ds_list_size(modeList)-1);
global.battleMode = modeList[| modeCurrent];


event_user(0);

alarm[2] = 60*10


