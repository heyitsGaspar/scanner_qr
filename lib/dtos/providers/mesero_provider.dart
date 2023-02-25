import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:nuevologin/common/globals.dart';
import 'package:nuevologin/dtos/response/mesero_response.dart';

class WaiterProvider extends ChangeNotifier {

  WaiterResponseDto? _waiter = null;

  WaiterResponseDto? get waiter => _waiter;

  Future<void> getByIdWaiter(String id) async {
    try {
      
      final url = "${Globals.apiURL}/api/waiter/$id";
      final response = await http.get(Uri.parse(url));
      print(response.body);

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        _waiter = WaiterResponseDto.fromJson(json["results"]);
        notifyListeners();
      } else {
        throw Exception('Failed to load waiter');
      }
    } catch (e) {
      print(e);
    } 
  }
}

