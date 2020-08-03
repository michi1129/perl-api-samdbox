use strict;
use warnings;
use feature qw/say/;
use Data::Dumper;

use Plack::Request;

my $app = sub {
  my $env = shift;

  my $req = Plack::Request->new($env);

  say Dumper($req->body_parameters);
  say Dumper($req->body_parameters->{user_name});
  return [
    200,
    [ "Content-Type", "application/json" ],
    [ "{\"key\": \"value\"}" ],
  ];
};

$app;
