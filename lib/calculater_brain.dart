import 'dart:math';

class CalculaterBrain {
  CalculaterBrain({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.0) {
      return 'Normal';
    } else {
      return 'underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'you have an overweight you should exercise more';
    } else if (_bmi > 18.0) {
      return 'you have a normal body . good job';
    } else {
      return 'you have a lower than normal you should eat more';
    }
  }
}
