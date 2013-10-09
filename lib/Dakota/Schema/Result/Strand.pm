package Dakota::Schema::Result::Strand;

use base qw/Dakota::Schema::Result/;

__PACKAGE__->table('Strand');
__PACKAGE__->add_columns(
	strand_id => {
		data_type => 'serial',
	},

	generation => {
		data_type   => 'integer',
		is_nullable => 0
	},

	wins => {
		data_type   => 'integer',
		is_nullable => 0,
	},

	ai_id => {
		data_type   => 'integer',
		is_nullable => 1,
	},
);

__PACKAGE__->set_primary_key('strand_id');
__PACKAGE__->belongs_to( 'ai'  => 'Dakota::Schema::Result:AI',  'ai_id' );
__PACKAGE__->has_many( 'chess_genese' => 'Dakota::Schema::Result::ChessGenes', 'strand_id' );

1;
