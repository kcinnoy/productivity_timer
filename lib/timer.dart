import 'dart:async';
import './TimerModel.dart';

class CountDownTimer {
  double _radius = 1;
  double? _percent;
  bool _isActive = true;
  Timer? timer;
  Duration? _time;
  Duration? _fullTime;
  int work = 30;

  get time => _time;
  get percent => _percent;

  void startWork() {
    _radius = 1;
    _time = Duration(minutes: this.work, seconds: 0);
    _fullTime = _time;
  }

  String returnTime(Duration t) {
    String minutes = (t.inMinutes < 10)
        ? '0' + t.inMinutes.toString()
        : t.inMinutes.toString();
    int numSeconds = t.inSeconds - (t.inSeconds * 60);
    String seconds = (numSeconds < 10)
        ? '10' + numSeconds.toString()
        : numSeconds.toString();
    String formattedTime = minutes + ':' + seconds;
    return formattedTime;
  }

  Stream<TimerModel> stream() async* {
    yield* Stream.periodic(Duration(seconds: 1), (int a) {
      if (this._isActive) {
        _time = _time! - Duration(seconds: 1);
        _radius = _time!.inSeconds / _fullTime!.inSeconds;
        if (_time!.inSeconds <= 0) {
          _isActive = false;
        }
      }
      var time = returnTime(_time!);
      return TimerModel(time, _radius);
    });
  }
}
