import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sangam/screens/signup/step_2.dart';

import '../../app_localizations.dart';

class signup1 extends StatefulWidget {
  const signup1({Key? key}) : super(key: key);

  @override
  State<signup1> createState() => _signup1State();
}

class _signup1State extends State<signup1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          AppLocalizations.of(context)?.translate('Sangam') ?? "",
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                textAlign: TextAlign.center,
                "Are you a member of ?",
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
                "Naam Thamizhar Katchi",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
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
          Row(
            children: [Image.network("")],
          ),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 46,
                    color: Colors.green,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Signup2()));
                    },
                    child: const Text('Yes '),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 46,
                    color: Colors.lightGreen,
                    textColor: Colors.white,
                    onPressed: () {},
                    child: const Text('No'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
