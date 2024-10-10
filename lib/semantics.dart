import 'package:flutter/material.dart';

class MySemantics extends StatefulWidget {
  const MySemantics({super.key});

  @override
  State<MySemantics> createState() => _MySemanticsState();
}

class _MySemanticsState extends State<MySemantics> {
  // let's make slider value
  double _sliderValue = 0.5;

  void _playMusic() {
    // show a snackbar indicating that music is playing at the selected volume
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.green[200],
        content: Text(
          'Playing Music at ${(_sliderValue * 100).round()}% volume!',
          style: const TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Semantics',
          style: TextStyle(fontSize: 28),
        ),
        backgroundColor: Colors.green[200],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          // center the entire column in the body
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // center vertically
            crossAxisAlignment:
                CrossAxisAlignment.center, // center horizontally

            children: [
              Semantics(
                label: 'Play Music',
                button: true,
                child: ElevatedButton.icon(
                  onPressed: _playMusic,
                  icon: const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 35,
                  ),
                  label: const Text('Play Music'),
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 16),
                      textStyle: const TextStyle(fontSize: 20),
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.green[200]),
                ),
              ),

              const SizedBox(height: 100), // space between button and slider

              Card(
                elevation: 4,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Semantics(
                  label: 'Adjust Volume',
                  value: _sliderValue.toString(),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          'Volume Level',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Slider(
                          value: _sliderValue,
                          thumbColor: Colors.green[400],
                          min: 0.0,
                          max: 1.0,
                          divisions: 10,
                          label: (_sliderValue * 100).round().toString(),
                          activeColor: Colors.green[200],
                          inactiveColor: Colors.blueGrey,
                          onChanged: (double value) {
                            setState(() {
                              _sliderValue = value;
                            });
                          })
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
