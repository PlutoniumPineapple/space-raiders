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
		
		// Combat
        SHOOT,
       
    }
    
    enum INPUT_CLUSTER
    {
        //Add your own clusters here!
        //Clusters are used for two-dimensional checkers (InputDirection() etc.)
        NAVIGATION,
    }
    
	InputDefineVerb(INPUT_VERB.UP, "up", [vk_up,"W"], [-gp_axislv,gp_padu]);
	InputDefineVerb(INPUT_VERB.DOWN, "down", [vk_down,"S"], [gp_axislv,gp_padd]);
	InputDefineVerb(INPUT_VERB.LEFT, "left", [vk_left,"A"], [-gp_axislh,gp_padl]);
	InputDefineVerb(INPUT_VERB.RIGHT, "right", [vk_right,"D"], [gp_axislh,gp_padr]);
	InputDefineVerb(INPUT_VERB.SHOOT, "shoot", mb_left, gp_face3);
    
    
    //Define a cluster of verbs for moving around
    InputDefineCluster(INPUT_CLUSTER.NAVIGATION, 
		INPUT_VERB.UP, 
		INPUT_VERB.RIGHT, 
		INPUT_VERB.DOWN, 
		INPUT_VERB.LEFT
	);
}
