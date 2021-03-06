package DM4P::Connection::Server::Pg;

use strict;
use warnings;

use base qw(DM4P::Connection::Base);

# ------------------------------------------------------------------------------
# Group: Constructor
# ------------------------------------------------------------------------------
# Function: new
#
#   Creates an new DM4P::Connection::Pg Object.
#
# Returns:
#
#   DM4P::Connection::Pg
sub new {
   my $that = shift;
   my $proto = ref($that) || $that;
   my $self = $that->SUPER::new(@_);

   bless($self, $proto);
      
   $self->{'dbi-type'} = 'dbi';
   
   return $self;
}

# ------------------------------------------------------------------------------
# Group: Public
# ------------------------------------------------------------------------------

# Function: connect
#
#   Try to connect to the database.
#
#    Throws DM4P::Exception::Connect on connect error.
#
# Returns:
#
#   DBI Connection Handle.
sub connect {
   my $self = shift;
   
   $self->{'__db_connection'} = DBI->connect($self->dsn, $self->username, $self->password);
   
   if(!$self->{'__db_connection'}) {
      DM4P::Exception::Connect->throw(error => 'Cannot connect to Database');
      return 0;
   }
   
   return $self;
}

# Function: class_type
#
#    Internat Use.
sub class_type { shift; return "Pg"; }

# Function: type
#
#    Returns the Database-Type.
#
# Returns:
#
#   String - Database-Type.
sub type { shift; return "Pg"; }

1;