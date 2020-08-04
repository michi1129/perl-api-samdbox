use Mojolicious::Lite;

get '/' => {text=>"hello mattermost"};

post '/slash' => sub {
  my $self = shift;
  my $text = $self->param('text');
  $self->render(text=>"your word: $text");
};

post '/outgoing' => sub {
  my $self = shift;
  my $text = $self->param('text');
  my $user_name = $self->param('user_name');
  $self->render(json=>{text=>"\@$user_name\n> $text"});
};

app->start;
