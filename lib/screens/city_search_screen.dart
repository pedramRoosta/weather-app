import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/blocs/city_bloc/city_bloc.dart';
import 'package:weather_app/common/constants.dart';
import 'package:weather_app/services/router.dart';
import 'package:weather_app/widgets/drawer_menu.dart';
import 'package:weather_app/widgets/loading_indicator.dart';

class CitySearchScreen extends StatelessWidget {
  CitySearchScreen({super.key});
  final textFieldctrl = TextEditingController();
  static const _textStyle = TextStyle(fontSize: 25);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: DrawerMenu(),
      ),
      appBar: AppBar(
        title: const Text(StringConstants.citySearch),
      ),
      body: BlocConsumer<CityBloc, CityState>(
        listener: (context, state) {
          if (state.error != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.error!),
              ),
            );
          }
        },
        builder: (context, state) {
          return Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 60),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      StringConstants.searchForCity,
                      style: _textStyle,
                    ),
                    const Text(StringConstants.currentLocationText),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: TextField(
                        controller: textFieldctrl,
                        onSubmitted: (value) {
                          context.read<CityBloc>().add(
                                CityEvent.searchByName(
                                  cityName: textFieldctrl.text,
                                ),
                              );
                        },
                        decoration: InputDecoration(
                          hintText: StringConstants.enterTheCity,
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                key: const Key('searchIconButton'),
                                icon: const Icon(Icons.search),
                                onPressed: () {
                                  if (textFieldctrl.text.isNotEmpty) {
                                    context.read<CityBloc>().add(
                                          CityEvent.searchByName(
                                            cityName: textFieldctrl.text,
                                          ),
                                        );
                                  }
                                },
                              ),
                              IconButton(
                                key: const Key('currentLocationIconButton'),
                                icon: const Icon(Icons.my_location),
                                onPressed: () {
                                  context.read<CityBloc>().add(
                                        const CityEvent
                                            .searchByCurrentLocation(),
                                      );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    if (state.cities != null && state.cities!.isNotEmpty) ...{
                      Expanded(
                        child: ListView.builder(
                          itemCount: state.cities!.length,
                          itemBuilder: (context, index) {
                            final city = state.cities![index];
                            return ListTile(
                              title: Text(city.name),
                              subtitle: Row(
                                children: [
                                  Text('${city.country}, ${city.state ?? ''}'),
                                ],
                              ),
                              onTap: () {
                                context.push(
                                  Routes.weatherDetail.pathWithParams(
                                    pathParams: {
                                      'lat': city.lat.toString(),
                                      'lon': city.lon.toString(),
                                    },
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    } else ...{
                      const Padding(
                        padding: EdgeInsets.only(top: 18.0),
                        child: Text(StringConstants.noCity),
                      ),
                    },
                  ],
                ),
              ),
              if (state.isLoading) const LoadingSpinner()
            ],
          );
        },
      ),
    );
  }
}
