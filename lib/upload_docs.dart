import 'package:flutter/material.dart';

class Upload extends StatefulWidget {
  const Upload({Key? key}) : super(key: key);

  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  int _activeCurrentStep = 0;  // Add this state variable

  List<Step> stepList() => [
        const Step(
            title: Text('B/L Documents'),
            content: Center(
              child: Text('Account'),
            )),
        const Step(
            title: Text('TRA Declarations'),
            content: Center(
              child: Text('Address'),
            )),
        const Step(
            title: Text('TRA Assesment'),
            content: Center(
              child: Text('Confirm'),
            )),
        const Step(
            title: Text('Payments'),
            content: Center(
              child: Text('Confirm'),
            )),
        const Step(
            title: Text('Container loaded'),
            content: Center(
              child: Text('Confirm'),
            )),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        title: const Text('Upload Documents',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
      ),
      body: Stepper(
        currentStep: _activeCurrentStep,
        steps: stepList(),
        onStepContinue: () {
          if (_activeCurrentStep < (stepList().length - 1)) {
            setState(() {
              _activeCurrentStep += 1;
            });
          }
        },
        onStepCancel: () {
          if (_activeCurrentStep > 0) {
            setState(() {
              _activeCurrentStep -= 1;
            });
          }
        },
      ),
    );
  }
}