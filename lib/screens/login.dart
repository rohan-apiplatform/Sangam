import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../app_localizations.dart';

class Login extends StatefulWidget {
  String phonenumber;
  Login({required this.phonenumber});
  // Login(  {Key? key,required String? phonenumber }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController? pinCodeController;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    pinCodeController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
        title: Text(
          AppLocalizations.of(context)?.translate('Sangam') ?? "",
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    AppLocalizations.of(context)
                            ?.translate('Enter PinCode Below') ??
                        "",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.green),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                    child: PinCodeTextField(
                      appContext: context,
                      length: 4,
                      textStyle: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      enableActiveFill: false,
                      autoFocus: true,
                      showCursor: true,
                      cursorColor: Colors.black,
                      obscureText: false,
                      hintCharacter: '-',
                      pinTheme: PinTheme(
                        fieldHeight: 60,
                        fieldWidth: 60,
                        borderWidth: 2,
                        borderRadius: BorderRadius.circular(12),
                        shape: PinCodeFieldShape.box,
                        activeColor: Colors.black,
                        inactiveColor: Colors.lightGreen,
                        selectedColor: Colors.black,
                        activeFillColor: Theme.of(context).primaryColor,
                        inactiveFillColor: Colors.green,
                        selectedFillColor: Colors.green,
                      ),
                      controller: pinCodeController,
                      onChanged: (_) => {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                height: 50,
                minWidth: double.infinity,
                color: Colors.green,
                onPressed: () async {},
                child: Text(
                    AppLocalizations.of(context)?.translate('Sign In') ?? "",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
