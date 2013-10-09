package Dakota::Schema::Result::AI;

use base qw/Dakota::Schema::Result/;

__PACKAGE__->table('AI');
__PACKAGE__->add_columns(
	ai_id => {
		data_type => 'serial',
	},

	strand_id => {
		data_type   => 'integer',
		is_nullable => 0
	},
);

__PACKAGE__->set_primary_key('ai_id');
__PACKAGE__->has_one( 'strand'  => 'Dakota::Schema::Result:Strand',  'ai_id' );

1;
