class Speaker {
  final int id;
  final String names;
  final String lastName;
  final String motherLastName;
  final String bio;
  final String imageUrl;
  final String facebookUrl;
  final String twitterUrl;
  final String linkedInUrl;
  final String githubUrl;
  final String instagramUrl;

  Speaker({
    required this.id,
    required this.names,
    required this.lastName,
    required this.motherLastName,
    required this.bio,
    required this.imageUrl,
    required this.facebookUrl,
    required this.twitterUrl,
    required this.linkedInUrl,
    required this.githubUrl,
    required this.instagramUrl,
  });

  factory Speaker.fromJson(Map<String, dynamic> map) {
    return Speaker(
      id: map['id'],
      names: map['names'],
      lastName: map['lastName'],
      motherLastName: map['motherLastName'],
      bio: map['bio'],
      imageUrl: map['imageUrl'],
      facebookUrl: map['facebookUrl'],
      twitterUrl: map['twitterUrl'],
      linkedInUrl: map['linkedInUrl'],
      githubUrl: map['githubUrl'],
      instagramUrl: map['instagramUrl'],
    );
  }

  String get completeName => '$names $lastName $motherLastName';
}
