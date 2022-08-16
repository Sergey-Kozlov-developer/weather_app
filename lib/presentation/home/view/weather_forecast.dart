import 'package:flutter/material.dart';
import 'package:weather_app/presentation/home/widgets/bottom_detail.dart';

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
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body: const WeatherForecastBody(),
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
        _CityDetailWidget(),
        SizedBox(height: 40),
        _TemperatureDetailWidget(),
        SizedBox(height: 40),
        _ExtraWeatherDetailWidget(),
        SizedBox(height: 40),
        Text(
          '7-DAY WEATHER FORECAST',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w300,
          ),
        ),
        // SizedBox(height: 15),
        Expanded(child: _BottomDetailWidget()),
      ],
    );
  }
}

class _SearchCityNameWidget extends StatelessWidget {
  const _SearchCityNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 10),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Enter City Name',
          hintStyle: TextStyle(color: Colors.white),
          icon: Icon(Icons.search, color: Colors.white, size: 18),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class _CityDetailWidget extends StatelessWidget {
  const _CityDetailWidget({Key? key}) : super(key: key);

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

class _TemperatureDetailWidget extends StatelessWidget {
  const _TemperatureDetailWidget({Key? key}) : super(key: key);

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

class _ExtraWeatherDetailWidget extends StatelessWidget {
  const _ExtraWeatherDetailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: const [
            Icon(Icons.ac_unit, color: Colors.white),
            Text(
              '5',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'km/hr',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        Column(
          children: const [
            Icon(Icons.ac_unit, color: Colors.white),
            Text(
              '3',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              '%',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        Column(
          children: const [
            Icon(Icons.ac_unit, color: Colors.white),
            Text(
              '20',
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

class _BottomDetailWidget extends StatelessWidget {
  const _BottomDetailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: const [
        BottomDetails(
          textDay: 'Monday',
          textTemperature: '6 °F',
          icon: Icon(Icons.wb_sunny, color: Colors.white, size: 50),
        ),
        BottomDetails(
          textDay: 'Tuesday',
          textTemperature: '15 °F',
          icon: Icon(Icons.wb_sunny, color: Colors.white, size: 50),
        ),
        BottomDetails(
          textDay: 'Wednesday',
          textTemperature: '20 °F',
          icon: Icon(Icons.wb_sunny, color: Colors.white, size: 50),
        ),
        BottomDetails(
          textDay: 'Thursday',
          textTemperature: '17 °F',
          icon: Icon(Icons.wb_sunny, color: Colors.white, size: 50),
        ),
        BottomDetails(
          textDay: 'Friday',
          textTemperature: '10 °F',
          icon: Icon(Icons.wb_sunny, color: Colors.white, size: 50),
        ),
        BottomDetails(
          textDay: 'Saturday',
          textTemperature: '9 °F',
          icon: Icon(Icons.wb_sunny, color: Colors.white, size: 50),
        ),
        BottomDetails(
          textDay: 'Sunday',
          textTemperature: '18 °F',
          icon: Icon(Icons.wb_sunny, color: Colors.white, size: 50),
        ),
      ],
    );
  }
}
