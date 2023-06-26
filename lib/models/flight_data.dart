class Flight {
  final String startCityCode;
  final String startCity;
  final String endCityCode;
  final String endCity;
  final String imageUrl;
  final String date;
  final String time;
  final String flightNo;
  final String ticketPrice;

  Flight({
    required this.startCityCode,
    required this.startCity,
    required this.endCityCode,
    required this.endCity,
    required this.imageUrl,
    required this.date,
    required this.time,
    required this.flightNo,
    required this.ticketPrice,
  });

  factory Flight.fromJson(Map<String, dynamic> json) {
    return Flight(
      startCityCode: json['startCityCode'],
      startCity: json['startCity'],
      endCityCode: json['endCityCode'],
      endCity: json['endCity'],
      imageUrl: json['imageUrl'],
      date: json['date'],
      time: json['time'],
      flightNo: json['flightNo'],
      ticketPrice: json['ticketPrice'],
    );
  }
}
