import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';
import 'package:mocktail/mocktail.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:weather_app/blocs/app_bloc/app_bloc.dart';
import 'package:weather_app/blocs/weather_bloc/weather_bloc.dart';
import 'package:weather_app/common/helpers.dart';
import 'package:weather_app/screens/weather_detail_screen.dart';
import 'package:weather_app/widgets/loading_indicator.dart';
import 'package:weather_app/widgets/weather_list_item.dart';

import '../mocks.dart';
import '../model_data.dart';

void main() {
  late MockWeatherBloc mockWeatherBloc;
  late MockAppBloc mockAppBloc;
  late MockHelper mockHelper;

  setUpAll(() {
    mockWeatherBloc = MockWeatherBloc();
    mockAppBloc = MockAppBloc();
    mockHelper = MockHelper();
    GetIt.I.registerSingleton<Helpers>(mockHelper);
  });

  Widget buildTestableWidget(Widget widget) {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider<WeatherBloc>.value(value: mockWeatherBloc),
          BlocProvider<AppBloc>.value(value: mockAppBloc),
        ],
        child: widget,
      ),
    );
  }

  testWidgets('WeatherDetailScreen displays loading spinner when loading',
      (WidgetTester tester) async {
    when(() => mockWeatherBloc.state).thenReturn(WeatherState(isLoading: true));

    await tester.pumpWidget(buildTestableWidget(const WeatherDetailScreen()));

    expect(find.byType(LoadingSpinner), findsOneWidget);
  });

  testWidgets('WeatherDetailScreen displays weather details when available',
      (WidgetTester tester) async {
    mockNetworkImagesFor(() async {
      final weatherData = ModelData.weatherModel;
      final selectedDay = ModelData.weatherModel.list.first;
      when(() => mockHelper.getWeatherImage(imageCode: any(named: 'imageCode')))
          .thenReturn('');
      when(() => mockWeatherBloc.state).thenReturn(
        WeatherState(
          weatherData: weatherData,
          selectedDay: selectedDay,
          isLoading: false,
        ),
      );
      when(() => mockAppBloc.state).thenReturn(
        AppState(temperatureUnit: TemperatureUnit.metric),
      );
      await tester.pumpWidget(buildTestableWidget(const WeatherDetailScreen()));
      await tester.pumpAndSettle();
      expect(find.text(DateFormat('EEEE').format(selectedDay.dt_txt)),
          findsNWidgets(2));
      expect(find.text(selectedDay.weather.first.description!), findsOneWidget);
      expect(find.text('${selectedDay.main.temp} \u2103'), findsOneWidget);
      expect(find.byType(WeatherListItem), findsWidgets);
    });
  });

  testWidgets('WeatherDetailScreen displays error when there is an error',
      (WidgetTester tester) async {
    when(() => mockWeatherBloc.state).thenReturn(
      WeatherState(error: 'Error message'),
    );

    await tester.pumpWidget(buildTestableWidget(const WeatherDetailScreen()));

    expect(find.text('Error message'), findsOneWidget);
  });
}
