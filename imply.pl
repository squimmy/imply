#!/usr/bin/perl
use warnings;
use strict;
use Irssi;

our $VERSION = 0.000001;
our %IRSSI = (
    name        => 'imply',
    description => 'This script facilitates implications.',
);


sub imply {
    my ($msg, $SERVER_REC, $WI_ITEM_REC) = @_;
    return unless $msg =~ /^>/;
    Irssi::signal_emit('send text', "\00303".$msg, $SERVER_REC, $WI_ITEM_REC);
    Irssi::signal_stop();
}

Irssi::signal_add_first('send text', 'imply');
