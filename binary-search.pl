use strict;
use warnings;
use v5.14;
my @sayilar = (8,9,2,7,5,4);
@sayilar=sort(@sayilar);
say "Aradağınız Sayıyı Giriniz:";
my $sayi=<STDIN>;
chomp $sayi;
my $adet=0;
my $sonuc=0;
my $uzun=@sayilar;
for(my $var=0;$var<$uzun;$var++){
$adet+=1;
my $uzunluk=@sayilar;
if($sayi == $sayilar[int($uzunluk/2)] ){
$sonuc=1;
last;
}
elsif($sayi < $sayilar[int($uzunluk/2)]){
@sayilar=@sayilar[0..int($uzunluk/2)-1];
}
else{
@sayilar=@sayilar[int($uzunluk/2)+1..$uzunluk-1];
}
}
if($sonuc==1){
say "Sayı ".$adet. " adımda bulundu";
}
else{
say "Sayı Bulunamadı";
}
