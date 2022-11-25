import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup2 extends StatefulWidget {
  const Signup2({Key? key}) : super(key: key);

  @override
  State<Signup2> createState() => _Signup2State();
}

class _Signup2State extends State<Signup2> {
  TextEditingController? memberid;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Sangam"),
      ),
      body: Column(children: [
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              "Your Membership",
              style: TextStyle(
                color: Colors.green,
                fontSize: 15,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              "Enter the ID Number",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              "Step - 1",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextFormField(
            cursorColor: Colors.green,
            controller: memberid,
            decoration: InputDecoration(
              hoverColor: Colors.green,
              focusColor: Colors.green,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              hintText: 'N.T.K Member Id',
              labelText: 'N.T.K Member Id',
              labelStyle: TextStyle(
                color: Colors.lightGreen,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: MaterialButton(
              minWidth: double.infinity,
              height: 46,
              color: Colors.green,
              textColor: Colors.white,
              onPressed: () {},
              child: const Text('Continue '),
            ),
          ),
        )
      ]),
    );
  }
}
