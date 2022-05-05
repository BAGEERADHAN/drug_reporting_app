import 'package:flutter/material.dart';

class next extends StatefulWidget {
  const next({Key? key}) : super(key: key);

  @override
  _nextState createState() => _nextState();
}

class _nextState extends State<next> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  "Services",
                  style: TextStyle(color: Color.fromARGB(255, 49, 85, 179)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  "FAQs",
                  style: TextStyle(color: Color.fromARGB(255, 49, 85, 179)),
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color.fromARGB(255, 49, 85, 179),
        ),
        backgroundColor: Color.fromRGBO(243, 244, 246, 1),
        title: Text(''),
        shadowColor: Color.fromARGB(0, 105, 61, 61),
      ),
      body: Stack(
        children: [
          Container(
              height: MediaQuery.of(context).size.height,
              child: Image(
                image: AssetImage(
                  "images/f2.png",
                ),
                fit: BoxFit.fitHeight,
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
                      height: 70,
                    ),
                    Container(
                      width: 400,
                      child: Text(
                        'Description',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      maxLines: 5,
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
                        setState(() {});
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(height: 20),
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
                  ],
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
