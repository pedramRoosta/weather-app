import 'package:weather_app/models/weather/weather.dart';

abstract class ModelData {
  static final weatherModel = WeatherModel(
    cod: '200',
    message: 0,
    cnt: 1,
    list: [
      WeatherItem(
        dt: 1633024800,
        main: Main(
          temp: 293.15,
          feels_like: 292.91,
          temp_min: 293.15,
          temp_max: 293.15,
          pressure: 1016,
          humidity: 77,
          tempKf: 0,
        ),
        weather: [
          Weather(
            id: 802,
            main: 'Clouds',
            description: 'scattered clouds',
            icon: '03d',
          ),
        ],
        wind: Wind(
          speed: 2.68,
          deg: 187,
          gust: 2.81,
        ),
        visibility: 10000,
        dt_txt: DateTime.now(),
      ),
    ],
  );
}
