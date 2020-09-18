#!/usr/bin/perl

open(TEMPLATE, "source/template.scad");
$file = do {local $/; <TEMPLATE> };
close(TEMPLATE);
$file =~ s/\n//gm;
$file =~ s/^.*tempString//g;
@parts = ("01","02","03","04","05","06","07","08","09","10","11","12","13","14","15");
for (@parts){
    open(PART, "source/$_.scad");
    $part = do {local $/; <PART> };
    $part =~ s|//.*$||gm;
    $part =~ s/include<header.scad>.*$//gm;
    $part =~ s/\n//gm;
    $file =~ s/p$_\(\)\;/$part/g;

    close(PART);
}

$valCapture = $file;
$valCapture =~ s/(?<!else)(?<!module) //gm;
while($valCapture =~ /(\[([0-9]*\.[0-9]+|[0-9]+)\,([0-9]*\.[0-9]+|[0-9]+),([0-9]*\.[0-9]+|[0-9]+)\])/gm ){#find vectors
	push @allValues, $1;
}
$valCapture = $file;
$valCapture =~ s/(?<!else)(?<!module) //gm;
$valCapture =~ s/(\[([0-9]*\.[0-9]+|[0-9]+)\,([0-9]*\.[0-9]+|[0-9]+),([0-9]*\.[0-9]+|[0-9]+)\])//gm;#remove vectors to keep them out of next search

while($valCapture =~ /([0-9]*\.[0-9]+|[0-9]+)/gm){
	push @allValues, $1;
}

$variableList = "abcdefghijklmnoqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";#"p" is used to select the part and is omitted

%valCounts;
++$valCounts{$_} for @allValues;
@values;
$i=0;
while(($k, $v) = each (%valCounts)){
    $count = %valCounts{$k};
    $value = $k;
    $valLength = length $value;
    $charSaving = ($count - 1)*($valLength-1)-3;
    $values[$i][0] = $value;
    $values[$i][1] = $count;
    $values[$i][2] = $valLength;
    $values[$i][3] = $charSaving;
    $i++;
}

#@uValues = @values;
#@uValues = sort { $a->[0] <=> $b->[0] } @uValues;
#for($i=0; $i<=$#uValues-1; $i++){
#   if (abs($uValues[$i+1][0]-$uValues[$i][0]) <= .02){
#	$min = $uValues[$i][1] <= $uValues[$i+1][1] ? $uValues[$i][1] : $uValues[$i+1][1];
#	print "$uValues[$i][0] \& $uValues[$i+1][0]\t$min\n";
#    }
#}

@valuesSorted = reverse sort { $a->[3] <=> $b->[3] } @values;
splice @valuesSorted, length $variableList;
@valuesSorted = sort { $a->[0] <=> $b->[0] } @valuesSorted;

$scadVariables = '';
for $i (0..length($variableList)-1) {
    $var = substr($variableList, $i, 1);
    $val = $valuesSorted[$i][0];
    $scadVariables = $scadVariables.$var."=".$val.";";
}

for (my $i=0; $i <= 50; $i++) {
    $escapedvalue = quotemeta("$valuesSorted[$i][0]");
    $variable = substr($variableList, $i, 1);
    $file =~ s/(?<![0-9])$escapedvalue(?![0-9])/$variable/gm;
}

open(HEADER, "source/header.scad");
$header = do {local $/; <HEADER> };
close(HEADER);
$header =~ s|//.*$||gm;
$header =~ s/\n//gm;
$file =~ s/include<header.scad>/$header$scadVariables/g;
$file =~ s/(?<!else)(?<!module) //gm;

$fileLength = length $file;
open(FH, '>', "liberator.scad") or die $!;
print FH $file;
close(FH);
print "$fileLength Characters written to liberator.scad!\n";


