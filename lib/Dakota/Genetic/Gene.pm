package Dakota::Genetic::Gene;

use Moose;

has scale_range => {
	is      => 'ro',
	isa     => 'Num',
	lazy    => 1,
	default => sub {
		return 1;
	},
};

has mutate_chance => {
	is => 'ro',
	isa => 'Num',
	lazy => 1,
	defualt => sub {
		return 0.1;
	},
};

has value => {
	is => 'ro',
	isa => 'Num',
	lazy => 1,
	defualt => sub {
		return 0;
	},
};
