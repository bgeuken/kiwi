#================
# FILE          : KIWIXMLOEMConfigData.t
#----------------
# PROJECT       : OpenSUSE Build-Service
# COPYRIGHT     : (c) 2012 SUSE LLC
#               :
# AUTHOR        : Robert Schweikert <rjschwei@suse.com
#               :
# BELONGS TO    : Operating System images
#               :
# DESCRIPTION   : Unit test driver for the KIWIXMLOEMConfigData module.
#               :
# STATUS        : Development
#----------------
use strict;
use warnings;
use FindBin;
use Test::Unit::HarnessUnit;

# Location of test cases according to program path
use lib "$FindBin::Bin/lib";

# Location of Kiwi modules relative to test
use lib "$FindBin::Bin/../../modules";

use KIWIGlobals;
our $kiwi   = new KIWILog ();
our $global = new KIWIGlobals($kiwi);

my $runner = Test::Unit::HarnessUnit->new();
$runner->start( 'Test::kiwiXMLOEMConfigData');
