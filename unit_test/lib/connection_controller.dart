class ConnectionController {
  final state = ConnectionState.Connected;

  checkConnection(state) {
    if (state == ConnectionState.Connected) {
      return 'Connectd';
    } else if (state == ConnectionState.Disconnected) {
      return 'Disconnected';
    } else if (state == ConnectionState.Waiting) {
      return 'Waiting';
    } else {
      return 'None';
    }
  }
}

enum ConnectionState { Connected, Disconnected, Waiting }
