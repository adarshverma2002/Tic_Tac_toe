import 'package:ttt/resources/socket_client.dart';

class SocketMethods{
  final _socketClient = SocketClient.instance.socket!;

  void createRoom(String nickename) {
    if(nickename.isNotEmpty){
      _socketClient.emit('createRoom', {'nickname': nickename,});
    }
  }
}