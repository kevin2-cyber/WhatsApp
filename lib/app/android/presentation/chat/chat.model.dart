
class ChatModel {
  String avatar;
  String name;
  String lastMessage;
  DateTime timeStamp;
  int messageNumber;
  int id;

  ChatModel({
    required this.avatar,
    required this.name,
    required this.lastMessage,
    required this.timeStamp,
    required this.messageNumber,
    required this.id
  });

  String get assetName => '$id-0.jpg';
  String get assetPackage => 'shrine_images';

  @override
  String toString() => '$name (id=$id)';

}