#!/bin/awk

#-R method

BEGIN{
	RS="\n\n"; 
	FS="\n";
}
{
	methodvalue = trim(substr($6,index($6,":")+1));
	uservalue = trim(substr($5,index($5,":")+1));
	if(type=="remove")
		remove(methodvalue,uservalue);
	else if(type=="sortshow")
		sortshow(methodvalue,uservalue);
}
function remove(inputa,inputb)
{
	if((method!=""&&inputa!=method)||(UserId!=""&&inputb!=UserId)) 
		print($1"\n"$2"\n"$3"\n"$4"\n"$5"\n"$6"\n"$7"\n"$8"\n"$9"\n"$10"\n"$11"\n"$12"\n");
}
function sortshow(inputa,inputb)
{
	if((inputa==method)||(inputb==UserId)) 
		print($1"\n"$2"\n"$3"\n"$4"\n"$5"\n"$6"\n"$7"\n"$8"\n"$9"\n"$10"\n"$11"\n"$12"\n");
}
function trim(field)
{
	gsub(/^ +| +$/,"",field);
	return field;
}