import 'package:flutter/material.dart';

class WeatherForecast extends StatelessWidget {
  const WeatherForecast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text(
          'Weather Forecast',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body: const WeatherForecastMain(),
    );
  }
}

class WeatherForecastMain extends StatelessWidget {
  const WeatherForecastMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: WeatherForecastBody(),
    );
  }
}

class WeatherForecastBody extends StatelessWidget {
  const WeatherForecastBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        _SearchCityNameWidget(),
        SizedBox(height: 20),
        _CityNameWidget(),
        SizedBox(height: 40),
        _TemperatureWidget(),
        SizedBox(height: 40),
        _TemperatureDescriptionWidget(),
        SizedBox(height: 40),
        _DayWeatherForecastWidget(),
      ],
    );
  }
}

class _SearchCityNameWidget extends StatelessWidget {
  const _SearchCityNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Icon(
            Icons.search,
            color: Colors.white,
            size: 18,
          ),
          SizedBox(width: 10),
          Text(
            'Enter City Name',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class _CityNameWidget extends StatelessWidget {
  const _CityNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'Murmansk Oblast, RU',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        SizedBox(height: 8),
        Text(
          'Friday, Mar 20, 202',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ],
    );
  }
}

class _TemperatureWidget extends StatelessWidget {
  const _TemperatureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.wb_sunny, size: 60, color: Colors.white),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '14 °F'.toUpperCase(),
              style: const TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            Text(
              'Light snow'.toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _TemperatureDescriptionWidget extends StatelessWidget {
  const _TemperatureDescriptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.ac_unit, color: Colors.white),
            Icon(Icons.ac_unit, color: Colors.white),
            Icon(Icons.ac_unit, color: Colors.white),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              '5',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              '3',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              '20',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'km/hr',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              '%',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              '%',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}

class _DayWeatherForecastWidget extends StatelessWidget {
  const _DayWeatherForecastWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '7-day weather forecast'.toUpperCase(),
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  width: 170,
                  height: 150,
                  color: Colors.red.shade100,
                  child: Column(
                    children: [
                      Text('Friday'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('6 °F'),
                          Icon(Icons.wb_sunny),
                        ],
                      ),

                    ],
                  ),
                ),
                const SizedBox(width: 5),
                Container(
                  width: 170,
                  height: 150,
                  color: Colors.red.shade100,
                  child: Column(
                    children: [
                      Text('Friday'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('6 °F'),
                          Icon(Icons.wb_sunny),
                        ],
                      ),

                    ],
                  ),
                ),
                const SizedBox(width: 5),
                Container(
                  width: 170,
                  height: 150,
                  color: Colors.red.shade100,
                  child: Column(
                    children: [
                      Text('Friday'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('6 °F'),
                          Icon(Icons.wb_sunny),
                        ],
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
