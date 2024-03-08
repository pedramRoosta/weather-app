import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/blocs/app_bloc/app_bloc.dart';
import 'package:weather_app/common/constants.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        final bloc = context.read<AppBloc>();
        final isDarkMode = bloc.state.isDarkMode;
        final temperatureUnit = bloc.state.temperatureUnit;
        return ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.3),
              ),
              child: const Text(
                StringConstants.settings,
                style: TextStyle(fontSize: 30),
              ),
            ),
            ListTile(
              leading: const Text(
                'Dark Mode',
                style: TextStyle(fontSize: 16),
              ),
              trailing: Switch.adaptive(
                value: state.isDarkMode,
                onChanged: (bool value) {
                  context
                      .read<AppBloc>()
                      .add(AppEvent.toggleTheme(isDarkMode: !isDarkMode));
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: DropdownButton<TemperatureUnit>(
                isExpanded: true,
                value: temperatureUnit,
                style: Theme.of(context).textTheme.bodyLarge,
                items: TemperatureUnit.values
                    .map(
                      (unit) => DropdownMenuItem(
                        value: unit,
                        child: Text(unit.title),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  context.read<AppBloc>().add(
                        AppEvent.setTemparatureUnit(unit: value!),
                      );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
