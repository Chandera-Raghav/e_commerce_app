import 'package:e_commerce_app/data/local/ui_helper.dart';
import 'package:e_commerce_app/data/local/user_bloc/user_login_bloc.dart';
import 'package:e_commerce_app/data/local/user_bloc/user_login_state.dart';
import 'package:e_commerce_app/ui/app_security_page/sign_up_page.dart';
import 'package:e_commerce_app/ui/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/local/user_bloc/user_login_event.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPassVisible = false;
  bool isLoading = false;
  GlobalKey<FormState> mKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: mKey,
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                children: [
                  mSpacer(mWidth: double.infinity),
                  const Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  mSpacer(mWidth: double.infinity),
                  Text(
                    "Sing In User",
                    style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                  )
                ],
              ),
              Column(
                children: [

                  TextFormField(

                    validator: (value){
                      if(value!.isEmpty){
                        return "Please fill the E-mail address";
                      } else if(!isEmailValid(email: value)){
                        return "please enter the valid E-mail address";
                      }else{
                        return null;
                      }
                    },
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: "Email",
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: const BorderSide(color: Colors.redAccent, width: 2)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: const BorderSide(color: Colors.lightBlue, width: 2)
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide.none),
                        fillColor: Colors.purple.withOpacity(0.1),
                        filled: true,
                        prefixIcon: const Icon(Icons.email)),
                  ),
                  mSpacer(mWidth: double.infinity),
                  TextFormField(
                    controller: passwordController,
                    obscureText: !isPassVisible,
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value){
                      if(value!.isEmpty){
                        return "Please enter password";
                      }else{
                        bool? result = validatePassword(value);
                        if(result!){
                          return null;
                        }else{
                          return "Password should contain Capital, small letter, Number & Special";
                        }
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "Password",

                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: const BorderSide(color: Colors.lightBlue, width: 2)
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide.none),
                        fillColor: Colors.purple.withOpacity(0.1),
                        filled: true,

                        prefixIcon: const Icon(Icons.password),
                        suffixIcon: InkWell(
                            onTap: (){
                              isPassVisible = !isPassVisible;
                              setState(() {});
                            },
                            child: Icon(isPassVisible ? Icons.remove_red_eye_outlined : Icons.visibility_off_outlined))
                    ),

                  ),
                ],
              ),
              StatefulBuilder(
                builder: (context, ss) {
                  return BlocListener<UserLogInBloc, UserLogInState>(listener: (_, state) async {
                    if(state is UserLogInLoadingState){
                      isLoading = true;
                      ss((){});
                    }
                    if(state is UserLogInFailedState){
                      isLoading = false;
                      ss((){});
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.errorMassage)));
                    }
                    if(state is UserLogInSuccessState){
                      isLoading = false;
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Login successfully...")));
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                    }

                  },
                    child:
                    Container(
                        padding: const EdgeInsets.only(top: 3, left: 3),
                        child: ElevatedButton(
                          onPressed: () {
                            if(mKey.currentState!.validate()){
                              String email = emailController.text;
                              String password = passwordController.text;

                              context.read<UserLogInBloc>().add(UserSignInEvent(bodyParams: {
                                "email": email,
                                "password": password
                              }));
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            backgroundColor: Colors.purple,
                          ),
                          child: isLoading ? const Row(mainAxisAlignment: MainAxisAlignment.center, children: [CircularProgressIndicator(), SizedBox(width: 11), Text(
                            "Signing In...",
                            style: TextStyle(fontSize: 22, color: Colors.black),
                          )],) : const Text(
                            "Sign In",
                            style: TextStyle(fontSize: 22, color: Colors.black),
                          ),
                        )
                    ),
                  );
                }
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Dont have an account? "),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupPage()));
                      },
                      child: const Text("Sing up ", style: TextStyle(color: Colors.purple),)
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}