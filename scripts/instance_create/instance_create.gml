function instance_create()
{
	var myDepth = object_get_depth(argument2)
	return instance_create_depth(argument0, argument1, myDepth, argument2);
}
