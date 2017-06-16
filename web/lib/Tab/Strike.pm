package Tab::Strike;
use base 'Tab::DBI';
Tab::Strike->table('strike');
Tab::Strike->columns(Primary => qw/id/); 
Tab::Strike->columns(Essential => qw/type start end registrant conflictee 
							tourn judge event entry school district region timeslot strike_timeslot 
							entered_by timestamp/);

Tab::Strike->has_a(tourn => 'Tab::Tourn');
Tab::Strike->has_a(judge => 'Tab::Judge');
Tab::Strike->has_a(event => 'Tab::Event');
Tab::Strike->has_a(entry => 'Tab::Entry');

Tab::Strike->has_a(school => 'Tab::School');
Tab::Strike->has_a(region => 'Tab::Region');
Tab::Strike->has_a(district => 'Tab::District');
Tab::Strike->has_a(timeslot => 'Tab::Timeslot');
Tab::Strike->has_a(strike_timeslot => 'Tab::StrikeTimeslot');
Tab::Strike->has_a(entered_by => 'Tab::Person');

__PACKAGE__->_register_datetimes( qw/start end timestamp/);

sub name { 

	# Wow this really shouldn't live HERE of all places -- CLP 6.16.17

	my $self = shift;
	my $tz = $self->tourn->tz if $self->tourn;
	$tz = "UTC" unless $tz;
	return "No prelims in ".$self->event->name if $self->type eq "elim";

	if ($self->registrant) { 
		return "No Rounds: ".$self->event->name if $self->type eq "event";
		return "Strike: ".$self->school->short_name if $self->type eq "school";
		return "Strike: ".$self->entry->event->abbr." ".$self->entry->code if $self->type eq "entry";
		return "Strike: ".$self->region->name." (".$self->region->code.")" if $self->type eq "region";

		return "Conflict: ".$self->entry->event->abbr." ".$self->entry->code." ".$self->entry->school->short_name 
			if $self->entry && $self->type eq "conflict";

		return "Conflict: ".$self->school->short_name 
			if $self->school && $self->type eq "conflict";

	} else { 
		return "Tab Strike: ".$self->event->name if $self->type eq "event";

		return "Tab Strike: ".$self->school->short_name if $self->type eq "school";

		return "Tab Strike: ".$self->entry->event->abbr." ".$self->entry->code." ".$self->entry->school->short_name 
			if $self->type eq "entry";

		return "Tab Strike: ".$self->region->name." (".$self->region->code.")" if $self->type eq "region";
		return "Tab Strike: ".$self->district->name." (".$self->district->code.")" if $self->type eq "district";
	}



	return "Out ". Tab::niceshortdayt($self->start->set_time_zone($tz))
			." to ".  Tab::niceshortdayt($self->end->set_time_zone($tz)) if $self->type eq "time" && $self->start->day != $self->end->day;

	return "Out ".  Tab::niceshortdayt($self->start->set_time_zone($tz))
			." to ".  Tab::nicetime($self->end->set_time_zone($tz)) if $self->type eq "time" && $self->start->day == $self->end->day;
}


