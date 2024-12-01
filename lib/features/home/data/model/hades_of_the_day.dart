class HadesOfTheDay {
  final String? text;
  HadesOfTheDay({required this.text});
  factory HadesOfTheDay.fromJSON(Map<String, dynamic> json) {
    return HadesOfTheDay(text: json['data']['contents']['arab']);
  }
}
