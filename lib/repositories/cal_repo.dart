import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:steadycalendar/models/calendar.dart';
import 'cal_repo_interface.dart';

class CalendarRepository implements CalRepoInterface {
  const CalendarRepository();

  @override
  Future <List<Calendar>> refreshCalendars() async {

    // execute() methodis deprecated, Use async/await or .then instead.
    final resp = await Supabase.instance.client.from('calendars')
    .select('id, name, color, background_slug, calendar_dates (date)');
  
    if(resp.error) {
      throw (resp.error.toString());
    }

    return resp.data.map<Calendar>((e) => Calendar.fromJson(e)).toList();
  }
}