import 'dart:async';
class Model {

  int _counter = 0;
  StreamController<int> _streamController = StreamController<int>();

  Stream<int> get counterUpdates => _streamController.stream;

  void incrementCounter() {
    _counter++;
    _streamController.add(_counter);
  }
}