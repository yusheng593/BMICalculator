import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return '太重了';
    } else if (_bmi > 18.5) {
      return '剛剛好';
    } else {
      return '太瘦了';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return '除非你體脂肪偏低，否則你該減重了！';
    } else if (_bmi > 18.5) {
      return '不錯，請繼續保持。但如果你沒有運動習慣那就趕快動起來吧！';
    } else {
      return '你需要增加點體重，試著多攝取蛋白質並進行重量訓練。';
    }
  }
}
