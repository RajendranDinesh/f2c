class Farmer {
  final String name;
  final double rating;
  final int time;
  final double distance;

  Farmer(
      {required this.name,
      required this.rating,
      required this.time,
      required this.distance});

  static List<Farmer> farmers = [
    Farmer(name: "Sanjai", rating: 4.8, time: 10, distance: 2),
    Farmer(name: "Dinesh P R", rating: 5, time: 5, distance: 0.1),
    Farmer(name: "Rajendran P", rating: 4.5, time: 60, distance: 45),
  ];

  Map<String, dynamic> toJSON() => {
        'name': name,
        'rating': rating,
        'time': time,
        'distance': distance,
      };

  static Farmer fromJson(Map<String, dynamic> json) => Farmer(
      name: json['name'],
      rating: json['rating'],
      time: json['time'],
      distance: json['distance']);
}
