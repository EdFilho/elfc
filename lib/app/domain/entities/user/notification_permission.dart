class NotificationPermission {
  late String title;
  late String subTitle;
  late bool isActive;

  NotificationPermission({
    required this.title,
    required this.subTitle,
    required this.isActive,
  });

  NotificationPermission.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subTitle = json['subTitle'];
    isActive = json['isActive'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['subTitle'] = subTitle;
    data['isActive'] = isActive;
    return data;
  }
}
