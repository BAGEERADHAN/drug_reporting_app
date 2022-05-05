import 'package:flutter/material.dart';
import 'package:date_field/date_field.dart';
import 'package:checkmark/checkmark.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Form Validation Demo';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Formre(),
      ),
    );
  }
}

class Formre extends StatefulWidget {
  @override
  _FormreState createState() => _FormreState();
}

class _FormreState extends State<Formre> {
  bool loading = false;

  final _formkey = GlobalKey<FormState>();
  final _tc1 = TextEditingController();
  final _tc2 = TextEditingController();
  DateTime? selectedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              child: Image(
            image: AssetImage(
              "images/Forge.png",
            ),
            fit: BoxFit.fill,
          )),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              height: 700,
              width: 500,
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
              child: Form(
                key: _formkey,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Drug Reporting ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        ' NOTE: If you witness an event that may lead to immediate threat to human health or safety, you should report it to your local police or law enforcement authority.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Container(
                        width: 400,
                        child: Text(
                          "Date and Time Witnessed",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      DateTimeField(
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              labelStyle: TextStyle(
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(254, 137, 58, 1),
                                    width: 5,
                                  )),
                              contentPadding: EdgeInsets.fromLTRB(15, 5, 5, 5),
                              filled: true,
                              hintStyle: TextStyle(
                                color: Colors.white,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(115, 141, 208, 1),
                                    width: 2,
                                  ))),
                          selectedDate: selectedDate,
                          onDateSelected: (DateTime value) {
                            setState(() {
                              selectedDate = value;
                            });
                          }),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: 400,
                        child: Text(
                          'Place',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        controller: _tc1,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(254, 137, 58, 1),
                                  width: 5,
                                )),
                            contentPadding: EdgeInsets.fromLTRB(15, 5, 5, 5),
                            filled: true,
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(115, 141, 208, 1),
                                  width: 2,
                                ))),
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        onChanged: (val) {
                          setState(() {
                            print(_tc1);
                          });
                        },
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: 400,
                        child: Text(
                          'Description*',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        maxLines: 5,
                        controller: _tc1,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(254, 137, 58, 1),
                                  width: 5,
                                )),
                            contentPadding: EdgeInsets.fromLTRB(15, 5, 5, 5),
                            filled: true,
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(115, 141, 208, 1),
                                  width: 2,
                                ))),
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        onChanged: (val) {
                          setState(() {
                            print(_tc1);
                          });
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 400,
                        child: Row(
                          children: [],
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {},
                        child: Container(
                          height: 40,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 49, 85, 179),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Text(
                            'Submit',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                        ),
                      ),
                      SizedBox(height: 15),
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '......',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(243, 244, 246, 1),
    );
  }
}
