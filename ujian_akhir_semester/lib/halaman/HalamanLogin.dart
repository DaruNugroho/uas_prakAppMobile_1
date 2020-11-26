import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HalamanLogin extends StatefulWidget {
  @override
  _HalamanLoginState createState() => _HalamanLoginState();
}

class _HalamanLoginState extends State<HalamanLogin> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  void validateInput() {
    FormState form = this.formKey.currentState;
    ScaffoldState scaffold = this.scaffoldKey.currentState;

    SnackBar message = SnackBar(
      content: Text('Semua data telah tervalidasi'),
    );

    if (form.validate()) {
      scaffold.showSnackBar(message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        color: Colors.indigo[700],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 70.0,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(120.0),
              child: Image.asset(
                'images/me.jpeg',
                width: 120.0,
                height: 120.0,
              ),
            ),
            Container(
              height: 25.0,
            ),
            Text('Log in',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                    fontFamily: 'Poppins')),
            Container(
              height: 30.0,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
              child: Column(
                children: [
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              prefixIcon: Icon(Icons.email),
                              hintText: 'Email address'),
                          keyboardType: TextInputType.text,
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Email address wajib diisi!';
                            }
                          },
                        ),
                        Container(
                          height: 10.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              prefixIcon: Icon(Icons.lock),
                              hintText: 'Password'),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Password wajib diisi!';
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 10.0,
                  ),
                  FlatButton(
                    color: Colors.teal[500],
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w700),
                    ),
                    textColor: Colors.white,
                    padding:
                        EdgeInsets.symmetric(horizontal: 130.0, vertical: 18.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    splashColor: Colors.teal[700],
                    onPressed: validateInput,
                  ),
                ],
              ),
            ),
            Container(
              height: 15.0,
            ),
            Text(
              'Forgot Password?',
              style: TextStyle(color: Colors.grey, fontFamily: 'Poppins'),
            ),
            Container(
              height: 35.0,
            ),
            Text('Register Here',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins')),
          ],
        ),
      ),
    );
  }
}
