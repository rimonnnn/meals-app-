class Meal {
  final String name;
  final String imageUrl;
  final String descrebtion;
  final String time;
  final double rate;

  Meal({
    required this.name,
    required this.imageUrl,
    required this.descrebtion,
    required this.time,
    required this.rate,
  });

  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "descrebtion": descrebtion,
      "imageUrl": imageUrl,
      "time": time,
      "rate": rate,
    };
  }

  factory Meal.fromMap(Map<String, dynamic> map) {
    return Meal(
      name: map["name"],
      imageUrl: map["imageUrl"],
      descrebtion: map["descrebtion"],
      time: map["time"],
      rate: map["rate"],
    );
  }
}
