import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    final double screenHeight = screenSize.height;
    final double screenWidth = screenSize.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 155,174,209),
        //toolbarHeight: 0,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Color.fromARGB(255, 155,174,209),
        ),
      ),
      body: SafeArea(
        child: LayoutBuilder(builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: Container(
              color: const Color.fromARGB(255, 155,174,209),
              constraints: BoxConstraints(
                minWidth: viewportConstraints.maxWidth,
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(
                      flex: 1,
                    ),
                    //Logo
                    CircleAvatar(
                      radius: screenWidth / 4,
                      backgroundImage: const AssetImage("assets/images/logo.png"),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    //Şifremi Sıfırla Label
                    const Text(
                      "ŞİFREMİ SIFIRLA",
                      style: TextStyle(
                        fontSize: 24,
                        color: Color.fromARGB(255, 31, 4, 99),
                      ),
                    ),
                    const Spacer(
                      flex : 1
                    ),
                    //Info Label
                    const Text(
                      "Lütfen sisteme kayıtlı olan email adresinizi giriniz.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        color: Color.fromARGB(255, 31, 4, 99),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    //Textfield Email
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: screenWidth * 0.8,
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "johndoe@gmail.com",
                          filled: true,
                          fillColor: Color.fromARGB(255, 236, 236, 236),
                          border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(10.0)),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                            const Color.fromARGB(255, 249, 191, 178)),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Mail gönderildi!")));
                              Navigator.of(context).popAndPushNamed("/passwordResetInfoScreen");
                        },
                        child: const Text(
                          "Mail Gönder",
                          style:
                          TextStyle(
                              color: Color.fromARGB(255, 31, 4, 99)
                          ),
                        )
                    ),
                    const Spacer(
                      flex: 4,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Spam kutusunu kontrol etmeyi unutmayınız.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ),
          );
        },
        ),
      ),
    );
  }
}