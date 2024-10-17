typedef TerminateSocketIO = bool;

typedef SocketIOClientMessage = ({
  String roomName,
  Map<String, dynamic> data,
  Map<String, dynamic> headers,
});

typedef Signature = ({
  String signature,
  String issuedAt,
  String nonce,
  String address,
});
