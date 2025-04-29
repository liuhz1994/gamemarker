function SlideTransition() {
	with(oTransition)
	{
		show_debug_message(argument[0]);
		mode = argument[0];
		if(argument_count > 1)
		{
			target = argument[1];
		}
	}
}

