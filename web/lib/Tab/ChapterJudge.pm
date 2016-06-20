package Tab::ChapterJudge;
use base 'Tab::DBI';
Tab::ChapterJudge->table('chapter_judge');
Tab::ChapterJudge->columns(Primary => qw/id/);
Tab::ChapterJudge->columns(Essential => qw/first middle last gender chapter retired notes diet
							cell email person person_request notes_timestamp timestamp/);

Tab::ChapterJudge->has_a(chapter => 'Tab::Chapter');
Tab::ChapterJudge->has_a(person => 'Tab::Person');
Tab::ChapterJudge->has_a(person_request => 'Tab::Person');
Tab::ChapterJudge->has_many(judges => 'Tab::Judge', 'chapter_judge');

__PACKAGE__->_register_datetimes( qw/timestamp notes_timestamp/);

sub judge {
	my ($self, $tourn) = @_;
	my @judges = Tab::Judge->search_by_chapter_judge_and_tourn($self->id, $tourn->id);
	return shift @judges;
}
