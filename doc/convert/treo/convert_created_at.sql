 alter table tabroom.ballot add created_at datetime;
 alter table tabroom.calendar add created_at datetime;
 alter table tabroom.tourn_change add created_at datetime;
 alter table tabroom.circuit_dues add created_at datetime;
 alter table tabroom.circuit_membership add created_at datetime;
 alter table tabroom.circuit add created_at datetime;
 alter table tabroom.judge_group add created_at datetime;
 alter table tabroom.concession_purchase add created_at datetime;
 alter table tabroom.concession add created_at datetime;
 alter table tabroom.event_double add created_at datetime;
 alter table tabroom.email add created_at datetime;
 alter table tabroom.entry add created_at datetime;
 alter table tabroom.entry_student add created_at datetime;
 alter table tabroom.event add created_at datetime;
 alter table tabroom.file add created_at datetime;
 alter table tabroom.school_fine add created_at datetime;
 alter table tabroom.follower add created_at datetime;
 alter table tabroom.hotel add created_at datetime;
 alter table tabroom.housing add created_at datetime;
 alter table tabroom.housing_slots add created_at datetime;
 alter table tabroom.jpool_judge add created_at datetime;
 alter table tabroom.jpool_round add created_at datetime;
 alter table tabroom.jpool add created_at datetime;
 alter table tabroom.judge_hire add created_at datetime;
 alter table tabroom.judge add created_at datetime;
 alter table tabroom.login add created_at datetime;
 alter table tabroom.person add created_at datetime;
 alter table tabroom.qualifier add created_at datetime;
 alter table tabroom.rating_subset add created_at datetime;
 alter table tabroom.rating_tier add created_at datetime;
 alter table tabroom.rating add created_at datetime;
 alter table tabroom.region add created_at datetime;
 alter table tabroom.result_set add created_at datetime;
 alter table tabroom.result_value add created_at datetime;
 alter table tabroom.result add created_at datetime;
 alter table tabroom.room_strike add created_at datetime;
 alter table tabroom.room add created_at datetime;
 alter table tabroom.round add created_at datetime;
 alter table tabroom.rpool_room add created_at datetime;
 alter table tabroom.rpool_round add created_at datetime;
 alter table tabroom.rpool add created_at datetime;
 alter table tabroom.ballot_value add created_at datetime;
 alter table tabroom.panel add created_at datetime;
 alter table tabroom.account_conflict add created_at datetime;

 alter table tabroom.account_setting add created_at datetime;
 alter table tabroom.circuit_setting add created_at datetime;
 alter table tabroom.entry_setting add created_at datetime;
 alter table tabroom.event_setting add created_at datetime;
 alter table tabroom.jpool_setting add created_at datetime;
 alter table tabroom.judge_group_setting add created_at datetime;
 alter table tabroom.judge_setting add created_at datetime;
 alter table tabroom.round_setting add created_at datetime;
 alter table tabroom.rpool_setting add created_at datetime;
 alter table tabroom.tiebreak_setting add created_at datetime;
 alter table tabroom.tourn_setting add created_at datetime;

 alter table tabroom.site add created_at datetime;
 alter table tabroom.chapter_circuit add created_at datetime;
 alter table tabroom.chapter_judge add created_at datetime;
 alter table tabroom.chapter add created_at datetime;
 alter table tabroom.stats add created_at datetime;
 alter table tabroom.strike_time add created_at datetime;
 alter table tabroom.strike add created_at datetime;
 alter table tabroom.student add created_at datetime;
 alter table tabroom.sweep_event add created_at datetime;
 alter table tabroom.sweep_include add created_at datetime;
 alter table tabroom.sweep_rule add created_at datetime;
 alter table tabroom.sweep_set add created_at datetime;
 alter table tabroom.tiebreak_set add created_at datetime;
 alter table tabroom.tiebreak add created_at datetime;
 alter table tabroom.timeslot add created_at datetime;
 alter table tabroom.tourn_circuit add created_at datetime;
 alter table tabroom.tourn_fee add created_at datetime;
 alter table tabroom.tourn_ignore add created_at datetime;
 alter table tabroom.tourn_site add created_at datetime;
 alter table tabroom.tourn add created_at datetime;
 alter table tabroom.webpage add created_at datetime;

alter table tabroom.ballot add audited_by int;
