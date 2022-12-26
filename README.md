# steadycalendar

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

-   https://github.com/seenickcode/fluttercrashcourse-lessons/tree/master/module03-steadycalendar

-   Image sizing
-   https://yesviz.com/viewport/
-   https://developer.android.com/training/multiscreen/screendensities
-   https://developer.apple.com/library/archive/documentation/DeviceInformation/Reference/iOSDeviceCompatibility/Displays/Displays.html
-   https://developer.apple.com/design/human-interface-guidelines/foundations/images#scale-factors/


-   https://supabase.com/docs/guides/getting-started/tutorials/with-flutter     


#### SupabaseAuthState no longer needed to persist auth state, it is handled automatically at initialization
-   https://supabase.com/blog/supabase-flutter-sdk-1-developer-preview
-   https://supabase.com/docs/reference/dart/auth-signinwithoauth
-   https://github.com/phamhieu/supabase-flutter-demo/blob/main/lib/components/auth_state.dart

### Tutorial
-   https://www.sandromaglione.com/techblog/flutter-supabase-authentication-complete-tutorial
-   https://www.nequalsonelifestyle.com/2022/08/10/supabase-flutter-quickstart-new-api/
-   https://www.section.io/engineering-education/using-supabase-as-an-alternative-to-firebase-in-flutter/#step-2---adding-dependencies


### BuildContext can also be represented by "_"

### Module 03
-   https://github.com/seenickcode/fluttercrashcourse-lessons/tree/master/module03-steadycalendar/lesson03

### Generate modle classes
- run following command to generate model classes, you have to do it once or whenever model changes
- also need to do install packages in dependencies json_annotation, and in dev_dependencies
- json_serializable, build_runner

-       flutter packages pub run build_runner build
-   with delete conflicting files using -d or --delete-conflicting-outputs 
-       flutter packages pub run build_runner build --delete-conflicting-outputs


### Add packages
-   Date time converter library, used for conversion of date to string and vice versa.
-   flutter pub add intl