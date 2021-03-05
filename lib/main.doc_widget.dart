// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: prefer_single_quotes

// **************************************************************************
// DocWidgetGenerator
// **************************************************************************

import 'package:doc_widget/doc_widget.dart';

class MyAppDocWidget implements Documentation {
  @override
  String get name => 'MyApp';
  @override
  bool get hasState => false;
  @override
  List<PropertyDoc> get properties => [];
  @override
  String get snippet => '''
''';
}

class AuthPageDocWidget implements Documentation {
  @override
  String get name => 'AuthPage';
  @override
  bool get hasState => true;
  @override
  List<PropertyDoc> get properties => [
        PropertyDoc(
          name: 'key',
          isRequired: false,
          isNamed: true,
          type: 'Key',
        ),
      ];
  @override
  String get snippet => '''
''';
}
