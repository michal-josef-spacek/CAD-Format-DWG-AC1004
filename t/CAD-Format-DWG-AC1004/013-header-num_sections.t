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
is($obj->header->num_sections, 5, 'Number of sections (5 - default).');