import 'dart:async';
import 'package:flutter/material.dart';

class CheckboxStreamExample extends StatefulWidget {
  const CheckboxStreamExample({super.key});

  @override
  CheckboxStreamExampleState createState() => CheckboxStreamExampleState();
}

class CheckboxStreamExampleState extends State<CheckboxStreamExample> {
  // Create a StreamController for boolean values
  final StreamController<bool> _controller = StreamController<bool>();

  // Initial value for the checkbox
  bool _isChecked = false;

  @override
  void initState() {
    super.initState();

    // Initialize the stream with the initial value
    _controller.add(_isChecked);
  }

  @override
  void dispose() {
    // Close the controller when the widget is disposed
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox Stream Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          StatefulBuilder(
            builder: (context, setState) {
              return Checkbox(
                value: _isChecked,
                onChanged: (bool? newValue) {
                  if (newValue != null) {
                    setState(() {
                      _isChecked = newValue;
                    });
                    _controller.add(newValue);
                  }
                },
              );
            },
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CheckboxStreamBuilderExample()));
              },
              child: Text("Move to streambuilder")),
        ],
      ),
    );
  }
}

class CheckboxStreamBuilderExample extends StatefulWidget {
  @override
  _CheckboxStreamBuilderExampleState createState() =>
      _CheckboxStreamBuilderExampleState();
}

class _CheckboxStreamBuilderExampleState
    extends State<CheckboxStreamBuilderExample> {
  // Create a StreamController for boolean values
  final StreamController<bool> _controller = StreamController<bool>();

  // Initial value for the checkbox
  bool _isChecked = false;

  @override
  void initState() {
    super.initState();

    // Initialize the stream with the initial value
    _controller.add(_isChecked);
  }

  @override
  void dispose() {
    // Close the controller when the widget is disposed
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Checkbox with StreamBuilder')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            StreamBuilder<bool>(
              stream: _controller.stream,
              initialData: _isChecked,
              builder: (context, snapshot) {
                // Ensure that snapshot has data before using it
                if (!snapshot.hasData) {
                  return CircularProgressIndicator();
                }

                return Checkbox(
                  value: snapshot.data,
                  onChanged: (bool? newValue) {
                    if (newValue != null) {
                      _controller.add(newValue);
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
