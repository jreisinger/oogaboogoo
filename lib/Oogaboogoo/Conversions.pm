package Oogaboogoo::Conversions;
use strict;
use warnings;
use Exporter qw(import);
use Carp;

our @EXPORT = qw(number_to_day_name number_to_month_name);

sub number_to_day_name {
    my $num = shift;

    croak "$num is not a day number\n" unless $num >= 0 and $num <= 6;

    my @day = qw(ark dip wap sen pop sep kir);
    $day[$num];
}

sub number_to_month_name {
    my $num = shift;

    croak "$num is not a day number\n" unless $num >= 0 and $num <= 11;

    my @month = qw(diz pod bod rod sip wax lin sen kun fiz nap dep);
    $month[$num];
}

1;
