class Helpers {
  static String getWeatherImage({required String imageCode}) {
    return 'http://openweathermap.org/img/wn/$imageCode@2x.png';
  }
}
