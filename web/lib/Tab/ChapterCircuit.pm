package Tab::ChapterCircuit;
use base 'Tab::DBI';
Tab::ChapterCircuit->table('chapter_circuit');
Tab::ChapterCircuit->columns(Primary => qw/id/);
Tab::ChapterCircuit->columns(Essential => qw/circuit chapter code full_member circuit_membership region/);
Tab::ChapterCircuit->has_a(circuit => "Tab::Circuit");
Tab::ChapterCircuit->has_a(chapter => "Tab::Chapter");
Tab::ChapterCircuit->has_a(region => "Tab::Region");
