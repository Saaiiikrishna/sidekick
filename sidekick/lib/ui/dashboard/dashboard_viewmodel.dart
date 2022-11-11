import 'package:stacked/stacked.dart';

class DashboardViewModel extends BaseViewModel {
  // ignore: prefer_final_fields
  String _title = "Authentication";
  String get title => '$_title $_counter';

  int _counter = 0;
  int get counter => _counter;

  void updateCounter() {
    _counter++;
    notifyListeners();
  }
}
