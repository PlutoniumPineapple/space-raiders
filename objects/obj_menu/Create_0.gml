//menu selector system
enum MENU {MAIN,LEVEL_SELECT,SETTINGS}
//menu controls
keyup=false
keydown=false
keyselect=false

//selector var
position_var=0;
menu_state= MENU.MAIN;

//menu scaler
halfwidth = room_width/2
halfheight= room_height/2

horizontal_margin=180;
vertical_margin=100;
spacing=50;

//Menu options modifier
mainmenuoptions[0] = "Startup";
mainmenuoptions[1] = "Settings";
mainmenuoptions[2] = "Alt+F4";

levelselectoptions[0] ="Enemy: Zephyrus, the Ephor";
levelselectoptions[1] ="Enemy: Da Big CK";
levelselectoptions[2] ="[Return]";

settingsoptions[0] = "FULLSCREEN";
settingsoptions[1] = "PROJECTILE LIMITER? maybe";
settingsoptions[2] = "KBM and Controller Rebind (maybe even add submenu to see every bind)";
settingsoptions[3] = "add multiple 4:3 normal resolutions?";
settingsoptions[4] = "Audio (Master, Music, SFX)";
settingsoptions[5] = "[Return]";

