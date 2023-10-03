import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test/connection_controller.dart';

void main() {
  final connectionController = ConnectionController();

  group('Connection Checker', () {
    test(
      'Connected State',
      () {
        final state =
            connectionController.checkConnection(ConnectionState.Connected);
        expect(state, 'Connected');
      },
    );
    test(
      'Disconnected State',
      () {
        final state =
            connectionController.checkConnection(ConnectionState.Disconnected);
        expect(state, 'Disconnected');
      },
    );
    test(
      'Waiting state',
      () {
        final state =
            connectionController.checkConnection(ConnectionState.Waiting);
        expect(state, 'Waiting');
      },
    );
  });
  // test('Connection Checker', () {
  //  final state = connectionController.checkConnection(ConnectionState.Connected);
  //   expect(state,'Connected');

  // },
  // );
}
