class AyaOfTheDay {
  final String? text;
  AyaOfTheDay({required this.text});
  factory AyaOfTheDay.fromJSON(Map<String, dynamic> json) {
    return AyaOfTheDay(text: json['data'][0]['text']);
  }
}
