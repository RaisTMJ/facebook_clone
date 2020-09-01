import 'package:flutter/material.dart';
import 'theme.dart';

class CustomedTheme extends StatefulWidget {
  final Widget child;
  final ThemeKeys initialThemeKeys;
  const CustomedTheme({Key key, this.initialThemeKeys, @required this.child});
  @override
  CustomeThemedState createState() => CustomeThemedState();

  static ThemeData of(BuildContext context) {
    _CustomeThemed inherited = (context.dependOnInheritedWidgetOfExactType<_CustomeThemed>());
    return inherited.data.theme;
  }

  static CustomeThemedState instanceOf(BuildContext context) {
    _CustomeThemed inherited = (context.dependOnInheritedWidgetOfExactType<_CustomeThemed>());
    return inherited.data;
  }
}

class CustomeThemedState extends State<CustomedTheme> {
  ThemeData _theme;
  ThemeData get  theme =>_theme;
  ThemeKeys _themeKey;
  ThemeKeys get themeKey => _themeKey;
  bool get isDart => _themeKey == ThemeKeys.DARK || _themeKey == ThemeKeys.DARKER;

  @override
  void initState(){
    _theme = Themes.getThemeFromKey(widget.initialThemeKeys);
    _themeKey = widget.initialThemeKeys;
    super.initState();
  }

  void changeTheme(ThemeKeys themeKey) {
    setState(() {
      _theme = Themes.getThemeFromKey(themeKey);
      _themeKey = themeKey;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(widget.child);
    print(widget.initialThemeKeys);
    return new _CustomeThemed(data: this, child: widget.child);
  }


}

class _CustomeThemed extends InheritedWidget {
  final CustomeThemedState data;
  _CustomeThemed({this.data, Key key, @required Widget child})  : super(key: key, child: child);
  @override
  bool updateShouldNotify(_CustomeThemed oldWidget) {
    return true;
  }
}
