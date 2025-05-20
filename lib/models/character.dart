class Character {
  final String status;
  final String species;
  final String gender;
  final String originName;
  final String locationName;
  final String imageUrl;
  final String name;

  Character({
    required this.status,
    required this.species,
    required this.gender,
    required this.originName,
    required this.locationName,
    required this.imageUrl,
    required this.name,
  });

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      status: json['status'] ?? '',
      species: json['species'] ?? '',
      gender: json['gender'] ?? '',
      originName: json['origin']?['name'] ?? '',
      locationName: json['location']?['name'] ?? '',
      imageUrl: json['image'] ?? '',
      name: json['name'] ?? '',
    );
  }
}
