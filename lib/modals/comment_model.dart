class Comments {
  final String id;
  final String userFullName;
  final String userId;
  final int score;
  final String chargeStationId;
  final String text;
  final String createdAt;
  final String updatedAt;

  Comments({
    required this.id,
    required this.userFullName,
    required this.userId,
    required this.score,
    required this.chargeStationId,
    required this.text,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Comments.fromJson(Map<String, dynamic> json) {
    return Comments(
      id: json['_id'],
      userFullName: json['userFullName'],
      userId: json['userId'],
      score: json['score'],
      chargeStationId: json['chargeStationId'],
      text: json['text'] ?? "",
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }
}
