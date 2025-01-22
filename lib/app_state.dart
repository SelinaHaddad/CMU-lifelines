import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<int> _longilati = [];
  List<int> get longilati => _longilati;
  set longilati(List<int> value) {
    _longilati = value;
  }

  void addToLongilati(int value) {
    longilati.add(value);
  }

  void removeFromLongilati(int value) {
    longilati.remove(value);
  }

  void removeAtIndexFromLongilati(int index) {
    longilati.removeAt(index);
  }

  void updateLongilatiAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    longilati[index] = updateFn(_longilati[index]);
  }

  void insertAtIndexInLongilati(int index, int value) {
    longilati.insert(index, value);
  }
}
