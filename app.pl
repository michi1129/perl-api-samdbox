use strict;
use warnings;
use feature qw/say/;
use Data::Dumper;

use Mojolicious::Lite;
use JSON qw/encode_json decode_json/;

get '/' => {text => "I am mojolicious!"};

get '/other' => {text => 'Other response.'};

get '/main' => sub {
  my $self = shift;
  my $obj = {
    response_type => "in_channel",
    body => "VALUES",
  };

  $self->render(json => encode_json($obj));
};

app->start
