class CodingJokes {
  final String setup;
  final String delivery;
  CodingJokes({this.setup, this.delivery});
  factory CodingJokes.fromJson(Map<String, dynamic> json) {
    return CodingJokes(setup: json["setup"], delivery: json["delivery"]);
  }
}
