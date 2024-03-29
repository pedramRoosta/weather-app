import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/blocs/weather_bloc/weather_bloc.dart';
import 'package:weather_app/common/helpers.dart';
import 'package:weather_app/models/weather/weather.dart';

class WeatherListItem extends StatelessWidget {
  WeatherListItem({
    required this.weatherItem,
    required this.degreeSymbol,
    super.key,
  });

  final WeatherItem weatherItem;
  final String degreeSymbol;
  final helperService = GetIt.I<Helpers>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<WeatherBloc>().add(
              WeatherEventSelectDay(
                id: weatherItem.dt,
              ),
            );
      },
      child: Container(
        width: 150,
        height: 150,
        margin: const EdgeInsets.only(right: 5),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 159, 153, 237),
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(3),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              DateFormat('EEEE').format(
                weatherItem.dt_txt,
              ),
            ),
            Expanded(
              child: Image.network(
                helperService.getWeatherImage(
                    imageCode: weatherItem.weather[0].icon!),
              ),
            ),
            Text(
              '${weatherItem.main.temp_min}$degreeSymbol / ${weatherItem.main.temp_max} $degreeSymbol',
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
