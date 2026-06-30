class NotificationModel {
  final String id;
  final String userId;
  final String title;
  final String body;
  final String type;
  final bool isRead;

  NotificationModel({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
    required this.type,
    required this.isRead,
  });

  factory NotificationModel.fromMap(
      Map<String, dynamic> map,
      String id) {
    return NotificationModel(
      id: id,
      userId: map['userId'],
      title: map['title'],
      body: map['body'],
      type: map['type'],
      isRead: map['isRead'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'title': title,
      'body': body,
      'type': type,
      'isRead': isRead,
      'createdAt':
          DateTime.now(),
    };
  }
}