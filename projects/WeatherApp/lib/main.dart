import 'package:flutter/material.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Weather'),
          centerTitle: true,
          leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
          iconTheme: const IconThemeData(color: Colors.black54),
          actions: [
            IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
          ],
        ),
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        _headerImage(),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                _weatherDescription(),
                SizedBox(height: 28),
                _temperature(),
                SizedBox(height: 28),
                _temperatureForecast(),
                SizedBox(height: 28),
                _futerRaiting(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Image _headerImage() {
  return Image(
    image: NetworkImage(
      'https://www.sciencelearn.org.nz/_next/image?url=https%3A%2F%2Fwww.datocms-assets.com%2F117510%2F1722377419-clouds_and_the_weather.jpg%3Fw%3D720%26h%3D360%26fit%3Dcrop%26crop%3Dfaces%2Centropy&w=3840&q=85',
    ),
    fit: BoxFit.cover,
  );
}

Column _weatherDescription() {
  return Column(
    children: <Widget>[
      Text(
        'Thesday - May 22',
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 8),
      Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        style: TextStyle(fontSize: 14, color: Colors.black54),
      ),
    ],
  );
}

Row _temperature() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const <Widget>[
      Icon(Icons.wb_sunny, color: Colors.orange, size: 40),
      SizedBox(width: 16),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '25°C Clear',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            'Almaty, Kazakhstan',
            style: TextStyle(fontSize: 14, color: Colors.black54),
          ),
        ],
      ),
    ],
  );
}

Wrap _temperatureForecast() {
  return Wrap(
    spacing: 12,
    runSpacing: 12,

    children: List.generate(7, (index) {
      return Chip(
        backgroundColor: Colors.blue[50],
        side: BorderSide(color: Colors.blue[200]!),
        label: Column(
          children: [Text('Day ${index + 1}'), Text('${20 + index}°C')],
        ),
        avatar: Icon(Icons.wb_sunny, color: Colors.orange, size: 28),
      );
    }),
  );
}

Row _futerRaiting() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        'Info with openweathermap.org:',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: Colors.black54,
        ),
      ),
      Row(
        children: [
          Icon(Icons.star, color: Colors.yellow[600], size: 24),
          Icon(Icons.star, color: Colors.yellow[600], size: 24),
          Icon(Icons.star, color: Colors.yellow[600], size: 24),
          Icon(Icons.star_half, color: Colors.yellow[600], size: 24),
          Icon(Icons.star_border, color: Colors.yellow[600], size: 24),
        ],
      ),
    ],
  );
}
