package Dakota::Schema::Result::ChessGene;

use base qw/Dakota::Schema::Result/;

__PACKAGE__->table('ChessGene');
__PACKAGE__->add_columns(
	chess_gene_id => {
		data_type => 'serial',
	},

	feature_id => {
		data_type   => 'integer',
		is_nullable => 0
	},

	value => {
		data_type   => 'Numeric(6,2)',
		is_nullable => 0,
	},

	strand_id => {
		data_type   => 'integer',
		is_nullable => 1,
	},
);

__PACKAGE__->set_primary_key('chess_gene_id');
__PACKAGE__->belongs_to( 'strand'  => 'Dakota::Schema::Result::Strand',  'strand_id' );
__PACKAGE__->belongs_to( 'feature' => 'Dakota::Schema::Result::Feature', 'feature_id' );

1;
