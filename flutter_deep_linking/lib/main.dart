import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      onGenerateRoute: (RouteSettings setting) {
        print(setting);
        closeWebView();
      }
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Deep Linking'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Launch Safari'),
          onPressed: () async {
            await launch(
              'https://swarman.varpa89.ru/oauth2/authorization/apple',
              forceSafariVC: true,
            );
          },
        ),
      ),
    );
  }
}
