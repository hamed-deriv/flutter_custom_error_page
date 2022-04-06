import 'package:flutter/material.dart';

import 'package:flutter_custom_error_page/custom_error.dart';
import 'package:flutter_custom_error_page/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      builder: (BuildContext context, Widget? child) {
        ErrorWidget.builder =
            (FlutterErrorDetails details) => CustomError(errorDetails: details);

        return child ?? const SizedBox.shrink();
      },
      home: const HomePage(title: 'Custom Error Page'),
    );
  }
}
