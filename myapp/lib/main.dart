import 'package:myapp/data/lib.dart';

void main() => runApp(MyApp());

// class MyAppKeys {
//   static final navigatorKey = new GlobalKey<NavigatorState>();
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        buttonTheme: ButtonThemeData(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          padding: EdgeInsets.zero,
          minWidth: 20.0,
          // color: Colors.transparent,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          // focusColor:

          // splashColor: Colors.transparent,
          // highlightColor: Colors.transparent,
        ),
      ),
      // navigatorKey: MyAppKeys.navigatorKey,
      home: HomeScreen(),
      initialRoute: '/login_screen',
      onGenerateRoute: _getRoute,
      // home: LoadingScreen(),
    );
  }

  Route _getRoute(RouteSettings settings) {
    if (settings.name != '/login_screen') {
      return null;
    }

    return MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) => LoginScreen(),
      fullscreenDialog: true,
    );
  }
}
