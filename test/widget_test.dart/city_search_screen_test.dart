import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app/blocs/city_bloc/city_bloc.dart';
import 'package:weather_app/common/constants.dart';
import 'package:weather_app/models/city/city.dart';
import 'package:weather_app/screens/city_search_screen.dart';
import 'package:weather_app/widgets/loading_indicator.dart';

class MockCityBloc extends MockBloc<CityEvent, CityState> implements CityBloc {}

void main() {
  late MockCityBloc mockCityBloc;

  setUp(() {
    mockCityBloc = MockCityBloc();
  });

  Widget buildTestableWidget(Widget widget) {
    return MaterialApp(
      home: BlocProvider<CityBloc>(
        create: (context) => mockCityBloc,
        child: widget,
      ),
    );
  }

  testWidgets('CitySearchScreen initializes and displays properly',
      (WidgetTester tester) async {
    when(() => mockCityBloc.state).thenReturn(CityState());

    await tester.pumpWidget(
      buildTestableWidget(
        CitySearchScreen(),
      ),
    );

    expect(find.text(StringConstants.citySearch), findsOneWidget);
    expect(find.text(StringConstants.searchForCity), findsOneWidget);
    expect(find.text(StringConstants.currentLocationText), findsOneWidget);
    expect(find.byType(TextField), findsOneWidget);
    expect(find.byKey(const Key('searchIconButton')), findsOneWidget);
    expect(find.byKey(const Key('currentLocationIconButton')), findsOneWidget);
  });

  testWidgets('CitySearchScreen displays loading spinner when loading',
      (WidgetTester tester) async {
    when(() => mockCityBloc.state).thenReturn(CityState(isLoading: true));

    await tester.pumpWidget(buildTestableWidget(CitySearchScreen()));

    expect(find.byType(LoadingSpinner), findsOneWidget);
  });

  testWidgets('CitySearchScreen displays cities list when available',
      (WidgetTester tester) async {
    final cities = [
      const City(name: 'City1', country: 'Country1', lat: 1.0, lon: 2.0),
      const City(name: 'City2', country: 'Country2', lat: 3.0, lon: 4.0),
    ];

    when(() => mockCityBloc.state)
        .thenReturn(CityState(cities: cities, isLoading: false));

    await tester.pumpWidget(buildTestableWidget(CitySearchScreen()));

    expect(find.text('City1'), findsOneWidget);
    expect(find.text('City2'), findsOneWidget);
    expect(find.byType(ListTile), findsNWidgets(2));
  });
}
