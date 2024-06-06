import 'package:flutter/material.dart';
import 'package:mobileapp_scabies/features/history/models/model/history_model.dart';
import 'package:mobileapp_scabies/features/history/view/history_screen.dart';

class HistoryProvider with ChangeNotifier {
  List<HistoryModel> historyList = [];
}
