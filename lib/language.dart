import 'package:flutter/material.dart';
import 'package:meribilty/onbounding.dart';
import 'package:meribilty/provider/provider.dart';
import 'package:provider/provider.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<LocaleProvider>(context);
    // final locale = provider.locale ?? Locale('en');
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/first.png"), fit: BoxFit.cover)),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Image.asset("assets/Logo.png"),
                ),
                Text(
                  "Select Language",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    child: Container(
                      width: 200,
                      height: 90,
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        child: Text("English".toUpperCase(),
                            style: TextStyle(
                                fontSize: 14, color: Color(0xFF4CE5B1))),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  side: BorderSide(color: Colors.white)),
                            )),
                        onPressed: () {
                          // final provider = Provider.of<LocaleProvider>(context,
                          //     listen: false);

                          // provider.setLocale(locale);

                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OnBoardingPage()));
                        },
                      ),
                    )),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(25),
                  child: Container(
                    width: 330,
                    height: 60,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(width: 3.0, color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OnBoardingPage()));
                      },
                      child: Row(
                        children: [
                          SizedBox(
                            width: 140,
                          ),
                          Container(
                            child: Center(
                              child: const Text(
                                'اردو',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
