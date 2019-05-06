use strict; #버그를 쉽게 찾아낼 수 있다.
use warnings;

# console 한글 출력을 위해
use Encode;
use utf8;
binmode(STDOUT, ':encoding(cp949)');
binmode(STDIN, ':encoding(cp949)');


#변수

# scalar variable
my $price = 100;
print "가격은 : $price\n";
$price = "1000";
print "$price\n";
my $double = $price * 2; #문자열도 숫자처럼 계산 가능
print "double : $double\n";


# array
my @myarray = (1, 3, 5, "hello", 6);
print "second : $myarray[1]\n";
print "$myarray[3]\n";
print "마지막 참조번호 : $#myarray\n"; #배열의 이름 앞에 $#를 붙이면 맨 마지막 요소의 참조번호를 알 수 있다.
my $size = @myarray; #scalar 변수에 배열을 대입하면 배열의 크기가 된다.
print "배열의 크기 : $size\n";
$#myarray = 2; #마지막 참조 번호를 2로 변경함(배열의 크기가 조절됨)
my $size2 = @myarray;
print "배열의 크기2 : $size2\n";
print "test $myarray[2]\n";

# hash
my %myhash = ("apple", 3, "pear", 10, "banana", 4, "monkey", 2);
my $howmany = $myhash{"apple"};
print "banana : $myhash{'banana'}   apple : $howmany\n";

print <<hereIam;  #hereIam 이 나올 때까지 그대로 출력함.
jfoiwjfoijwof
jfoiwjfoiwjf
jwiojfoiwjfeow
hereIam


print "Say yes or no : "; 
  my $answer = "yes";#<STDIN>; 
  chomp $answer; # $answer 뒤에 따라붙는 \n을 잘라냅니다. 
  if( $answer eq 'yes' ) {
    print <<'EOY';
You said $answer.
I will keep going on.
EOY
  }
  else { print "You said 'No.'\n"; }

# 홑따옴표는 있는 그대로 출력하고, 쌍따옴표는 변수의 값이 출력된다.
# print 문에서 , 로 연결하여 출력할 수 있다. 출력 결과는 $price = 1000
print '$price = ', "$price\n";


my $a = "abc";
my $len = (length $a)-1; #문자열의 길이

print "$a\r";
for (0..$len) {
    print "$_\n";
}
print "loop end\n";


# 특정 문자열을 포함하고 있는지 여부 확인 (=~ 연산자)
my $long = "Tell me what\'s up.";
if($long =~ /hat/)
{
	print "Yes, it contains \"hat\".\n";
}
else
{
	print "No, it does not.\n";
}


