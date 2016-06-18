package Tab::ChangeLog;
use base 'Tab::DBI';
Tab::ChangeLog->table('change_log');
Tab::ChangeLog->columns(Primary => qw/id/);
Tab::ChangeLog->columns(Essential => qw/type tourn school person/);
Tab::ChangeLog->columns(Others => qw/judge entry event new_panel old_panel fine text timestamp/);

Tab::ChangeLog->has_a(person => "Tab::Person");
Tab::ChangeLog->has_a(tourn => "Tab::Tourn");
Tab::ChangeLog->has_a(event => "Tab::Event");
Tab::ChangeLog->has_a(entry => "Tab::Entry");
Tab::ChangeLog->has_a(school => "Tab::School");
Tab::ChangeLog->has_a(judge => "Tab::Judge");
Tab::ChangeLog->has_a(fine => "Tab::SchoolFine");

Tab::ChangeLog->has_a(new_panel => "Tab::Panel");
Tab::ChangeLog->has_a(old_panel => "Tab::Panel");

__PACKAGE__->_register_datetimes( qw/timestamp/);

sub account { 
	my $self = shift;
	return $self->person;
}
