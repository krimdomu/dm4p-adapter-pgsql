package DM4P::SQL::Dialects::Pg::SQL;

use strict;
use warnings;

use base qw(DM4P::SQL::Dialects::Pg DM4P::SQL::Dialects::Base::SQL);

# ------------------------------------------------------------------------------
# Group: Constructor
# ------------------------------------------------------------------------------
# Function: new
#
#   Creates an new DM4P::SQL::Dialects::Pg::SQL Object.
#
# Returns:
#
#   DM4P::SQL::Dialects::Pg::SQL
sub new {
   my $that = shift;
   my $proto = ref($that) || $that;
   my $self = $that->SUPER::new(@_);
   
   bless($self, $proto);
   return $self;
}


1;