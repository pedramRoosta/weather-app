import 'package:flutter/material.dart';

abstract class AppConstants {
  static final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'root');
}
