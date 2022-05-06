import 'package:socket_io_client/socket_io_client.dart';

var opt = OptionBuilder()
    .setTransports(['websocket'])
    .setPath("/ws")
    .disableAutoConnect()
    .setQuery({'tenantId': 2, 'protocol': 'sio1'})
    .build();

Socket socket = io('https://test-micros1.play-online.com', opt);

void connectSocket() {
  try {
    socket.connect();

    socket.on(
        "tournament_end",
        (data) => {
              /* data
      {id: 1851, mission_group_id: "2"}
      */
            });
    socket.on(
        "tournament_end",
        (data) => {
              /* data
      {id: 1851, mission_group_id: "2"}
      */
            });
    socket.on('error', (err) => print('Error: $err'));
  } catch (e) {
    print(e.toString());
  }
}
