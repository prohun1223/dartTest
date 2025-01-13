import 'package:flutter/material.dart';

void main() => runApp(const LayoutDemoApp());

class LayoutDemoApp extends StatelessWidget {
  const LayoutDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout demo',
      debugShowCheckedModeBanner: false, // Removes the debug banner
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true, // Centers the title in the AppBar
          backgroundColor:
              Colors.green, // Sets the background color of the AppBar to green
          title: const Text('Lab02_Phary Yen'),
        ),
        body: const LayoutDemo(),
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Top Image
          Image.network(
            'https://media.istockphoto.com/id/163132087/photo/mountain-stream.jpg?s=2048x2048&w=is&k=20&c=ESUf89FSR7AbRHy38y_XDqgxaYgQ6Tmack8y4xseF0w=',
            height: 240,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          // Title Section
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: TitleSection(),
          ),
          // Button Section
          const ButtonSection(),
          // Description Section
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. '
              'Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. '
              'A gondola ride from Kandersteg, followed by a half-hour walk through pastures '
              'and pine forest, leads you to the lake, which warms to 20 degrees Celsius in '
              'the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.',
              softWrap: true,
              style: TextStyle(fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Oeschinen Lake Campground',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            Text(
              'Kandersteg, Switzerland',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
        Row(
          children: const [
            Icon(Icons.star, color: Colors.red),
            SizedBox(width: 4),
            Text('41'),
          ],
        ),
      ],
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButton(Icons.call, 'CALL'),
        _buildButton(Icons.near_me, 'ROUTE'),
        _buildButton(Icons.share, 'SHARE'),
      ],
    );
  }

  Column _buildButton(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
