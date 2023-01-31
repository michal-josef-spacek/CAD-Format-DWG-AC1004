use strict;
use warnings;

use Test::More 'tests' => 3;
use Test::NoWarnings;

BEGIN {

	# Test.
	use_ok('CAD::Format::DWG::AC1004');
}

# Test.
require_ok('CAD::Format::DWG::AC1004');
