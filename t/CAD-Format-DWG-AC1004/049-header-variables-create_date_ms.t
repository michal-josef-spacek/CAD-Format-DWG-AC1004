use strict;
use warnings;

use CAD::Format::DWG::AC1004;
use File::Object;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/blank')->set;

# Test.
my $obj = CAD::Format::DWG::AC1004->from_file(
	$data_dir->file('BLANK.DWG')->s,
);
is($obj->header->variables->create_date_ms, 60565840, 'Create date miliseconds (60565840).');
