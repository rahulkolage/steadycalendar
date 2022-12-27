import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import '/repositories/cal_repo_interface.dart';
import '/models/calendar.dart';

class SessionProvider extends ChangeNotifier {
  List<Calendar> _cals = [];
  // getter to get calendars, so it can't be set from extarnally
  List<Calendar> get cals => _cals;
  CalRepoInterface calRepo;

  SessionProvider(this.calRepo);

  refreshCalendars() async {
    _cals = await calRepo.refreshCalendars();

    notifyListeners();
  }
}
