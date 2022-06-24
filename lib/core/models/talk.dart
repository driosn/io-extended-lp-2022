import 'package:gdg_events_mobile/core/models/speaker.dart';

class Talk {
  Talk({
    required this.id,
    required this.title,
    required this.description,
    required this.hour,
    required this.date,
    required this.type,
    required this.speaker,
    required this.imageUrl,
  });

  final int id;
  final String title;
  final String description;
  final String hour;
  final DateTime date;
  final String type;
  final Speaker speaker;
  final String imageUrl;

  factory Talk.fromJson(Map<String, dynamic> json) {
    return Talk(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      hour: json['hour'],
      date: json['date'],
      type: json['type'],
      speaker: Speaker.fromJson(json['speaker']),
      imageUrl: json['imageUrl'],
    );
  }
}
