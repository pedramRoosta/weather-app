import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/blocs/app_bloc/app_bloc.dart';
import 'package:weather_app/blocs/weather_bloc/weather_bloc.dart';
import 'package:weather_app/common/constants.dart';
import 'package:weather_app/common/helpers.dart';
import 'package:weather_app/widgets/loading_indicator.dart';
import 'package:weather_app/widgets/weather_list_item.dart';

class WeatherDetailScreen extends StatefulWidget {
  const WeatherDetailScreen({super.key});

  @override
  State<WeatherDetailScreen> createState() => _WeatherDetailScreenState();
}

class _WeatherDetailScreenState extends State<WeatherDetailScreen> {
  Future<void> _pullRefresh() async {
    final weatherBloc = context.read<WeatherBloc>();
    final appBloc = context.read<AppBloc>();
    context.read<WeatherBloc>().add(
          WeatherEventLoadWeather(
            lat: weatherBloc.state.selectedLat ?? 0,
            lon: weatherBloc.state.selectedLon ?? 0,
            temperatureUnit: appBloc.state.temperatureUnit,
          ),
        );
  }

  static const _textStyle = TextStyle(fontSize: 20);
  @override
  Widget build(BuildContext context) {
    final appBloc = context.read<AppBloc>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(StringConstants.weatherDetail),
      ),
      body: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          return Container(
            margin: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.8,
                child: Stack(
                  children: [
                    if (state.weatherData != null && state.selectedDay != null)
                      Column(
                        children: [
                          Expanded(
                            child: RefreshIndicator(
                              onRefresh: _pullRefresh,
                              child: ListView(
                                children: [
                                  Center(
                                    child: Text(
                                      DateFormat('EEEE').format(
                                        state.selectedDay?.dt_txt ??
                                            DateTime.now(),
                                      ),
                                      style: const TextStyle(fontSize: 40),
                                    ),
                                  ),
                                  Text(
                                    state.selectedDay!.weather.first
                                            .description ??
                                        '',
                                    style: const TextStyle(fontSize: 22),
                                  ),
                                  Center(
                                    child: Image.network(
                                      scale: .55,
                                      Helpers.getWeatherImage(
                                        imageCode: state.selectedDay?.weather[0]
                                                .icon! ??
                                            '',
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      '${state.selectedDay!.main.temp?.toString()} ${appBloc.state.temperatureUnit.temperatureUnitSymbol}',
                                      style: const TextStyle(fontSize: 50),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${StringConstants.humidity}: ${state.selectedDay!.main.humidity}%',
                                        style: _textStyle,
                                      ),
                                      Text(
                                        '${StringConstants.pressure}: ${state.selectedDay!.main.pressure} hPa',
                                        style: _textStyle,
                                      ),
                                      Text(
                                        '${StringConstants.wind}: ${state.selectedDay!.wind.speed} Km/h',
                                        style: _textStyle,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 160,
                            width: MediaQuery.of(context).size.width,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: state.weatherData!.list.length,
                              itemBuilder: (context, index) {
                                return WeatherListItem(
                                  weatherItem: state.weatherData!.list[index],
                                  degreeSymbol: appBloc.state.temperatureUnit
                                      .temperatureUnitSymbol,
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    if (state.error != null)
                      Center(
                        child: Column(
                          children: [
                            Text(state.error!),
                          ],
                        ),
                      ),
                    if (state.isLoading) const LoadingSpinner(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
