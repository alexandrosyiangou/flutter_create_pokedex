import 'package:flutter/material.dart';
import './HomeBloc.dart';
export './HomeBloc.dart';

class HomeBlocProvider extends InheritedWidget{
  final bloc = HomeBloc();

  HomeBlocProvider({Key key, Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(_) => true;

  static HomeBloc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(HomeBlocProvider) as HomeBlocProvider).bloc;
  }
}