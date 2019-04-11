$output_str = "";

$cp_members_file = "cp_members.txt";
$protocol_file = "protocol.txt";

open(members_fileHandle, $cp_members_file ) || die "Cannot open $cp_members_file.\n";
#while($aLine = <members_fileHandle> )
#{
#	$output_str .= "<p>" . $aLine;
#}
#print $output_str;

@allLines_members = <members_fileHandle>;

open(protocol_fileHandle, $protocol_file ) || die "Cannot open $protocol_file.\n";
@allLines_protocol = <protocol_fileHandle>;


#print @allLines_protocol[1];
#@result = split / /, @allLines_protocol[1];
#foreach(@result) {
#	print $_ . "\n";
#}

$size_members = @allLines_members;
$size_protocol = @allLines_protocol;

$i = $size_members - 1;
$j = $size_protocol - 1;
for (; $i >= 0 && $j >= 0;)
{
	@result_members = split / /, @allLines_members[$i];
	@result_protocol = split / /, @allLines_protocol[$j];

	if (@allLines_members[$i] =~ /^$/)
	{
		$i--;
		next;
	}
	if (@allLines_protocol[$j] =~ /^$/)
	{
		$j--;
		next;
	}

	if (@result_members[0] ge @result_protocol[0])
	{
		$output_str = @allLines_members[$i] . $output_str;
		$i--;
	}
	else
	{
		$output_str = @allLines_protocol[$j] . $output_str;
		$j--;
	}
}

for (; $i >= 0; $i--)
{
	$output_str = @allLines_members[$i] . $output_str;
}

for (; $j >= 0; $j--)
{
	$output_str = @allLines_protocol[$j] . $output_str;
}

print "[\n$output_str]\n";


close(members_fileHandle);
close(protocol_fileHandle);
