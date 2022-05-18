import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              new BoxShadow(
                color: Colors.black12,
                offset: new Offset(1, 2.0),
                blurRadius: 5,
                spreadRadius: 1,
              )
            ],
          ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.black12,
                      offset: new Offset(1, 2.0),
                      blurRadius: 5,
                      spreadRadius: 1,
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 15,
                    top: 60,
                    right: 15.0,
                    left: 15.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // width: double.infinity,
                      Text(
                        "Sign up",
                        // textAlign: TextAlign.end,
                        style: Theme.of(context).textTheme.display2,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: "Name",
                          labelStyle: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "E-mail",
                          labelStyle: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: FlatButton(
                          onPressed: () {},
                          child: Text("Sign up"),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      )
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
