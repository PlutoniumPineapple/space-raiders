function __InputConfigVerbs()
{
    enum INPUT_VERB
    {
        //Add your own verbs here!
		
		// Direction
        UP,
        DOWN,
        LEFT,
        RIGHT,
		
		// Menu
        ACCEPT,
        CANCEL,
		PAUSE,
		FULLSCREEN,
		
		// Combat
        SHOOT,
		GAMMA_ATTACK,
		
		
		AIM_NORTH,
		AIM_SOUTH,
		AIM_EAST,
		AIM_WEST,
		
    }
    
    enum INPUT_CLUSTER
    {
        //Add your own clusters here!
        //Clusters are used for two-dimensional checkers (InputDirection() etc.)
        NAVIGATION,
		AIM,
    }
    
	// Movement Defs
	InputDefineVerb(INPUT_VERB.UP, "up", [vk_up,"W"], [-gp_axislv,gp_padu]);
	InputDefineVerb(INPUT_VERB.DOWN, "down", [vk_down,"S"], [gp_axislv,gp_padd]);
	InputDefineVerb(INPUT_VERB.LEFT, "left", [vk_left,"A"], [-gp_axislh,gp_padl]);
	InputDefineVerb(INPUT_VERB.RIGHT, "right", [vk_right,"D"], [gp_axislh,gp_padr]);
	
	// Attack Defs
	InputDefineVerb(INPUT_VERB.SHOOT, "shoot", mb_left, gp_shoulderr);
	InputDefineVerb(INPUT_VERB.GAMMA_ATTACK, "gamma attack", mb_middle, gp_shoulderrb);
	
	// Menu Defs
	InputDefineVerb(INPUT_VERB.FULLSCREEN, "fullscreen", vk_f11, undefined);
	
	// Aimming Defs
	InputDefineVerb(INPUT_VERB.AIM_NORTH,	"aim north",	undefined, [-gp_axisrv]);
	InputDefineVerb(INPUT_VERB.AIM_SOUTH,	"aim south",	undefined, [gp_axisrv]);
	InputDefineVerb(INPUT_VERB.AIM_WEST,	"aim west",		undefined, [-gp_axisrh]);
	InputDefineVerb(INPUT_VERB.AIM_EAST,	"aim east",		undefined, [gp_axisrh]);
    
    
    //Define a cluster of verbs for moving around
    InputDefineCluster(INPUT_CLUSTER.NAVIGATION, 
		INPUT_VERB.UP, 
		INPUT_VERB.RIGHT, 
		INPUT_VERB.DOWN, 
		INPUT_VERB.LEFT
	);
	
	InputDefineCluster(INPUT_CLUSTER.AIM, 
		INPUT_VERB.AIM_NORTH,
		INPUT_VERB.AIM_EAST,	
		INPUT_VERB.AIM_SOUTH,	
		INPUT_VERB.AIM_WEST,	
	);
	
	
}
