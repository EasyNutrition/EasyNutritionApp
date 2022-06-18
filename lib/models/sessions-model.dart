class Sessions {
  final String startAt;
  final String endAt;
  final String link;
  final int userId;

  Sessions(
      {required this.startAt,
      required this.endAt,
      required this.link,
      required this.userId});
  factory Sessions.fromJson(Map<String, dynamic> json) {
    return Sessions(
      startAt: json['startAt'],
      endAt: json['endAt'],
      link: json['link'],
      userId: json['userId'],
    );
  }
}
