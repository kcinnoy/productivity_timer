import 'dart:async';
import './timermodel.dart';

class CountDownTimer {
  double _radius = 1;
  bool _isActive = true;
  Timer? timer;
  Duration? _time;
  Duration? _fullTime;
}
