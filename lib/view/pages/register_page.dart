import 'package:dictionary_app/components/commonWidgets/MyButton.dart';
import 'package:dictionary_app/components/utils.dart';
import 'package:dictionary_app/view/pages/login_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

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
                Image.asset("assets/images/1.png"),
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
                  onPress: () {},
                  text: "Register",
                  hPadding: 128,
                ),
                vspace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),
                    InkWell(
                      onTap: (){
                         Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),  
                        ),
                      );
                      },
                      child: Text("LogIn here",style: TextStyle(
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
