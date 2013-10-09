use strict;
use warnings;

use Dakota;

my $app = Dakota->apply_default_middlewares(Dakota->psgi_app);
$app;

