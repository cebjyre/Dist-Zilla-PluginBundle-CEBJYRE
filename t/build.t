use strict;
use warnings;
use Test::More tests => 1;
use Test::DZil;

my $tzil = Builder->from_config(
	{dist_root => 'corpus'},
	{
		add_files => {
			'source/dist.ini' => simple_ini('@CEBJYRE'),
		}
	}
);

ok(1, "The builder didn't explode on the configuration");