import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'common/dependency_injection.dart';
import 'common/navigation/auto_router/app_router.dart';

void main() {
  configureDependencies();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _appRouter = getIt<AppRouter>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // TODO
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),

      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        canvasColor: Colors.transparent,
        textSelectionTheme: const TextSelectionThemeData(
          //TODO
          cursorColor: Colors.black,
          //TODO
          selectionColor: Colors.blue,
          //TODO
          selectionHandleColor: Colors.blue,
        ),
        cupertinoOverrideTheme: const CupertinoThemeData(
          brightness: Brightness.light,
          //TODO
          primaryColor: Colors.blue,
        ),
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
    );
  }
}
