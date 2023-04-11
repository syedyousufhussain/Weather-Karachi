import 'package:demo_application/models/current_weather_model.dart';
import 'package:demo_application/models/hourly_weather_model.dart';

// import '../consts/strings.dart';
import 'package:http/http.dart' as http;

getCurrentWeather() async {
  // var link = "https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$long&appid=$apiKey&units=metric";
  var link = "https://api.openweathermap.org/data/2.5/weather?lat=24.860966&lon=66.990501&appid=c6973cb1f8c6d49dbab4c85958f407f1";
  var res = await http.get(Uri.parse(link));
  if (res.statusCode == 200) {
    var data = currentWeatherDataFromJson(res.body.toString());

    return data;
  }
}

getHourlyWeather() async {
  // var link = "https://api.openweathermap.org/data/2.5/forecast?lat=$lat&lon=$long&appid=$apiKey&units=metric";
  var link="https://api.openweathermap.org/data/2.5/forecast?lat=24.860966&lon=66.990501&appid=c6973cb1f8c6d49dbab4c85958f407f1";
  var res = await http.get(Uri.parse(link));
  if (res.statusCode == 200) {
    var data = hourlyWeatherDataFromJson(res.body.toString());

    return data;
  }
}
