import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyStepper createState() => _MyStepper();
}

class _MyStepper extends State<MyApp> {
  int _currentStep = 0;
  List<Step> _mySteps = [
    Step(title: Text('Paso 1'), content: Text('Aprender Dart')),
    Step(title: Text('Paso 2'), content: Text('Aprender Flutter')),
    Step(title: Text('Paso 3'), content: Text('Aprender Desarrollar App')),
    Step(title: Text('Paso 4'), content: Text('Publicar App')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Stepper'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Container(
        child: Stepper(
          currentStep: _currentStep,
          steps: _mySteps,
          type: StepperType.horizontal,
          onStepContinue: () {
            if(_currentStep < _mySteps.length - 1)
              _currentStep += 1;
            else
              _currentStep = 0;
            setState(() {});
          },
          onStepCancel: () {
            if(_currentStep > 0)
              _currentStep -= 1;
            setState(() {});
          },
          onStepTapped: (step) {
            _currentStep = step;
            setState(() {});
          },
        ),
      ),
    );
  }
}