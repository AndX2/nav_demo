import 'dart:html';

import 'package:flutter/material.dart';
import 'package:doc_widget/doc_widget.dart';
import 'package:nav_demo/main.doc_widget.dart';

void main() {
  runApp(MyApp());
}

@docWidget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        final path = settings.name;
        switch (path) {
          case '/auth':
            return MaterialPageRoute<void>(builder: (_) => AuthPage());
          default:
            return MaterialPageRoute<void>(builder: (_) => MainPage());
        }
      },
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final webNavigation = ElementPreview(
      document: MyAppDocWidget(),
      previews: [
        WidgetPreview(
          widget: RaisedButton(
            child: Text('Перейти'),
            onPressed: () => Navigator.of(context)
                .pushReplacement(MaterialPageRoute(builder: (_) => AuthPage())),
          ),
          description:
              'Введи путь до страницы авторизации в адресной строке #/auth \nСтраница авторизации имеет постоянный линк /#/auth',
        ),
      ],
    );
    final auth = ElementPreview(
      document: AuthPageDocWidget(),
      previews: [
        WidgetPreview(
          widget: RaisedButton(
            child: Text('Перейти'),
            onPressed: () => Navigator.of(context)
                .pushReplacement(MaterialPageRoute(builder: (_) => AuthPage())),
          ),
          description:
              'Введи путь до страницы авторизации в адресной строке #/auth \nСтраница авторизации имеет постоянный линк /#/auth',
        ),
      ],
    );
    return DocPreview(elements: [webNavigation, auth]);
  }
}

@docWidget
class AuthPage extends StatefulWidget {
  const AuthPage({Key key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  void initState() {
    super.initState();
    window.history.pushState(null, 'Страница авторизации', '#/auth');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('AuthPage'),
      ),
    );
  }
}
