import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sangam/screens/signup/step_1.dart';

import '../app_localizations.dart';
import 'login.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  AppLocalizations.of(context)?.translate('ntk_katchi') ?? "",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                    color: Colors.green,
                  )),
            ),
            SizedBox(height: 20),
            Text("Trade Union Council",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.lightGreen,
                )),
            SizedBox(height: 20),
            Image.network(
                "https://www.google.com/imgres?imgurl=https%3A%2F%2Fi0.wp.com%2Fwww.naamtamilar.org%2Fwp-content%2Fuploads%2F2018%2F12%2F%25E0%25AE%25A8%25E0%25AE%25BE%25E0%25AE%25AE%25E0%25AF%258D-%25E0%25AE%25A4%25E0%25AE%25AE%25E0%25AE%25BF%25E0%25AE%25B4%25E0%25AE%25B0%25E0%25AF%258D-%25E0%25AE%25A4%25E0%25AF%258A%25E0%25AE%25B4%25E0%25AE%25BF%25E0%25AE%25B2%25E0%25AE%25BE%25E0%25AE%25B3%25E0%25AE%25B0%25E0%25AF%258D-%25E0%25AE%25A8%25E0%25AE%25B2%25E0%25AE%259A%25E0%25AF%258D%25E0%25AE%259A%25E0%25AE%2599%25E0%25AF%258D%25E0%25AE%2595%25E0%25AE%25AE%25E0%25AF%258D-Naam-Tamilar-Labour-Wellfare-AssociationLogo-Thozhirsangam.png%3Fresize%3D394%252C392%26ssl%3D1&imgrefurl=https%3A%2F%2Fwww.naamtamilar.org%2F2020%2F05%2Fntk-logo-seeman-thalaivar-print-images-download%2F&tbnid=U-4_FSTTbWYkTM&vet=12ahUKEwjjvqz_2cT7AhUxj9gFHcGYC_4QMygBegQIARAn..i&docid=fw-FrRl3o6RBcM&w=394&h=392&q=naam%20tamilar%20thzhirsangam&ved=2ahUKEwjjvqz_2cT7AhUxj9gFHcGYC_4QMygBegQIARAn",
                fit: BoxFit.fitWidth),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
              child: MaterialButton(
                minWidth: double.infinity,
                height: 46,
                color: Colors.lightGreen,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Login(
                            phonenumber: '7092676244',
                          )));
                },
                child: Text(
                  AppLocalizations.of(context)?.translate('Sign In') ?? "",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
              child: MaterialButton(
                minWidth: double.infinity,
                height: 46,
                color: Colors.green,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => signup1()));
                },
                child: Text(
                  AppLocalizations.of(context)?.translate('Sign Up') ?? "",
                ),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {},
              child: Text(
                AppLocalizations.of(context)?.translate('changelang') ?? "",
                style: const TextStyle(
                  color: Colors.green,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
