import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Upload extends StatelessWidget {
  const Upload({Key? key}) : super(key: key);
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
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        title: Text('Upload Documents',
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
        onStepContinue: (){
          if ( _activeCurrentStep < (stepList().length -1)) {
            setState ````````````````````
          }
        },
        ),
    );
  }
}
