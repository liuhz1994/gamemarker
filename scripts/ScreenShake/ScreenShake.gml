/// @desc ScreenShake(magnitude time)
/// arg magnitudem Set the strength of the shake
/// arg time Frames sets the length of the shake in frames ( 60 = 1 second at 60 FPS)

function ScreenShake(magnitude,time)
{
	with(oCamera) {
	
		if(magnitude > shake_remain)
		{
			shake_remain = magnitude;
			shake_magnitude = magnitude;
			shake_time = time;
		}
	}
}
