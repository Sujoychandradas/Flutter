import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test/connection_controller.dart';

void main() {
  final connectionController = ConnectionController();
  test('Connection Checker', () {
   final state connectionController.checkConnection(ConnectionState.Connected);
    expect(state,);
    
  });
}
