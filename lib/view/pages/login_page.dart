import 'package:dictionary_app/components/commonWidgets/MyButton.dart';
import 'package:dictionary_app/components/utils.dart';
import 'package:dictionary_app/view/pages/current_page.dart';
import 'package:dictionary_app/view/pages/home_page.dart';
import 'package:dictionary_app/view/pages/register_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
    LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: swhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/2.png"),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                  ),
                  child: MyTextField(
                    label: "Email",
                    height: 50,
                    hint: "",
                    type: TextInputType.emailAddress,
                    controller: emailController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                  ),
                  child: MyTextField(
                    label: "Password",
                    height: 50,
                    hint: "",
                    type: TextInputType.visiblePassword,
                    controller: passwordController,
                  ),
                ),
                vspace,
                MyButton(
                  onPress: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CurrentPage(),  
                      ),
                    );
                  },
                  text: "Login",
                  hPadding: 128,
                ),
                vspace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Dont have a account?"),
                    InkWell(
                      onTap: (){
                         Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterPage(),  
                        ),
                      );
                      },
                      child: Text("Register here",style: TextStyle(
                        decoration: TextDecoration.underline
                      ),),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
