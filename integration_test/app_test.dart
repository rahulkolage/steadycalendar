import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:steadycalendar/app.dart';
// import 'package:steadycalendar/screens/cal_edit/cal_edit.dart';
import 'package:steadycalendar/screens/cal_pager/cal_pager.dart';
import 'mock_calendar_repository.dart';
import 'mock_splash_state.dart';

const testEnvFile = '.env.test';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('happy path tests', () {
    testWidgets('login and edit calendars', (WidgetTester tester) async {
      final calRepo = MockCalendarRepository();
      final splashState = MockSplashState();

      await runAppWithOptions(
          envFileName: testEnvFile,
          calendarRepository: calRepo,
          splashState: splashState);
      await tester.pumpAndSettle();

      // Tapping button on Intro screen
      // INSTEAD tapping actula google login button we will find Gesture widget
      // and then mock login call
      final getStarted = find.widgetWithText(ElevatedButton, 'Get Started');
      await tester.tap(getStarted);
      await tester.pumpAndSettle();

      expect(find.byType(GestureDetector), findsWidgets);

      await splashState.login();
      await tester.pumpAndSettle();


    });
  });
}
