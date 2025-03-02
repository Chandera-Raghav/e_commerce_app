import 'package:e_commerce_app/data/local/ui_helper.dart';
import 'package:e_commerce_app/data/local/user_bloc/user_bloc.dart';
import 'package:e_commerce_app/data/local/user_bloc/user_event.dart';
import 'package:e_commerce_app/data/local/user_bloc/user_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController mobilNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPassVisible = false;

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
                      "Sign up",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    mSpacer(mWidth: double.infinity),
                    Text(
                      "Create your account",
                      style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                    )
                  ],
                ),
                Column(
                  children: [
                    TextField(
                      controller: userNameController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: "Username",
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: const BorderSide(color: Colors.lightBlue, width: 2)
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          fillColor: Colors.purple.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.person)),
                    ),
                    mSpacer(mWidth: double.infinity),

                    TextFormField(
                      validator: (value){
                        if(value!.isEmpty){
                          return "Please fill the mobile number";
                        } else if(value.length != 10){
                          return "Please enter the valid number..";
                        } else{
                          return null;
                        }
                      },
                      controller: mobilNumberController,
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      decoration: InputDecoration(
                        hintText: "Phone Number",
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
                            borderSide: BorderSide.none

                        ),
                        fillColor: Colors.purple.withOpacity(0.1),
                        filled: true,
                        prefixIcon: const Icon(Icons.phone_outlined),
                      ),
                    ),
                    mSpacer(mWidth: double.infinity),

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
                          bool? result = validatePassword(value!);
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
            BlocListener<UserBloc, UserState>(listener: (_, state){
              if(state is UserSuccessState){
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Register successfully...")));
                Navigator.pop(context);
              }
              if(state is UserFailedState){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.errorMassage)));
              }
            },
            child:
            Container(
                padding: const EdgeInsets.only(top: 3, left: 3),
                child: ElevatedButton(
                  onPressed: () {
                    if(mKey.currentState!.validate()){
                      String name = userNameController.text;
                      String email = emailController.text;
                      String phoneNum = mobilNumberController.text;
                      String password = passwordController.text;

                      context.read<UserBloc>().add(UserSignUpEvent(bodyParams: {
                        "name": name,
                        "mobile_number": phoneNum,
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
                  child: const Text(
                    "Sign up",
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  ),
                )
            ),
            ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("Login", style: TextStyle(color: Colors.purple),)
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