part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const HOME = _Paths.HOME;
  static const WORKOUT = _Paths.WORKOUT;
}

abstract class _Paths {
  static const HOME = '/home';
  static const WORKOUT = '/workout';
}
