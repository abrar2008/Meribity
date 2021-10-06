import 'package:flutter/material.dart';
import 'package:meribilty/home.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScren extends StatefulWidget {
  const OtpScren({Key? key}) : super(key: key);

  @override
  _OtpScrenState createState() => _OtpScrenState();
}

class _OtpScrenState extends State<OtpScren> {
  Future<String?> validateOtp(String otp) async {
    await Future.delayed(Duration(milliseconds: 2000));
    if (otp == "123456") {
      return null;
    } else {
      return "The entered Otp is wrong";
    }
  }

  void moveToNextScreen(context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => SuccessfulOtpScreen()));
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();

    String currentText = "";
    final formKey = GlobalKey<FormState>();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF4CE5B1),
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: Color(0xFF4CE5B1),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      width: double.infinity,
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            child: Text(
                              "Phone Verification",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: double.infinity,
                            child: Text(
                              "Enter your OTP code here",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //
                  ],
                ),
              ),
              //
              SizedBox(
                height: 50,
              ),
              Container(
                color: Colors.white,
                child: Form(
                  key: formKey,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 30),
                      child: PinCodeTextField(
                        appContext: context,
                        pastedTextStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        length: 4,
                        obscureText: true,
                        obscuringCharacter: '*',

                        blinkWhenObscuring: true,
                        animationType: AnimationType.fade,
                        validator: (v) {
                          if (v!.length < 3) {
                            return "I'm from validator";
                          } else {
                            return null;
                          }
                        },
                        pinTheme: PinTheme(
                          selectedFillColor: Colors.white,
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(5),
                          fieldHeight: 50,
                          fieldWidth: 40,
                          activeFillColor: Colors.white,
                        ),
                        cursorColor: Colors.black,
                        animationDuration: Duration(milliseconds: 300),

                        controller: textEditingController,
                        keyboardType: TextInputType.number,
                        boxShadows: [
                          BoxShadow(
                            offset: Offset(0, 1),
                            color: Colors.black12,
                            blurRadius: 10,
                          )
                        ],
                        onCompleted: (v) {
                          print("Completed");
                        },
                        // onTap: () {
                        //   print("Pressed");
                        // },
                        onChanged: (value) {
                          print(value);
                          setState(() {
                            currentText = value;
                          });
                        },
                        beforeTextPaste: (text) {
                          print("Allowing to paste $text");

                          return true;
                        },
                      )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Container(
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Text("verify now ".toUpperCase(),
                          style: TextStyle(fontSize: 14)),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF4CE5B1)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                side: BorderSide(color: Color(0xFF4CE5B1))),
                          )),
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                    )),
              ),
            ],
          ),
        ));
  }
}

class SuccessfulOtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            "Otp verification successful",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
