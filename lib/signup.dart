import 'package:flutter/material.dart';
import 'package:lgoin_ui/login.dart';

enum Gender {male,female}

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  // This widget is the root of your application.
  bool _obscureText = true;
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Expanded(
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('images/logo.png'),
                      height: 60,
                      width: 60,
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Maintainence',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Rubric Medium',
                            color: Color(0xff2d3142),
                          ),
                        ),
                        Text(
                          'Box',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                            fontFamily: 'Rubic Medium',
                            color: Color(0xfff97038),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Rubic Medium',
                        color: Color(0xff2d3142),
                      ),
                    )),
                const SizedBox(
                  height: 14,
                ),
                const Center(
                    child: Text(
                        'Lorem ipsum dolor sit amet,\n consectetur adipisicing elit',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: "Rubic Regular",
                          color: Color(0xff4c5980),
                        ),
                        textAlign: TextAlign.center)),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20, horizontal: 30),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.person,
                      ),
                      hintText: 'Name',
                      fillColor: const Color(0xfff8f9fa),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                          const BorderSide(color: Color(0xffe4e7e8))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                          const BorderSide(color: Color(0xffe4e7e8))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20, horizontal: 30),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.email,
                      ),
                      hintText: 'Email',
                      fillColor: const Color(0xfff8f9fa),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                          const BorderSide(color: Color(0xffe4e7e8))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                          const BorderSide(color: Color(0xffe4e7e8))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20, horizontal: 30),
                  child: TextFormField(
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.lock,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(_obscureText ? Icons.visibility_off:Icons.visibility ),
                        onPressed: (){
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                      hintText: 'Password',
                      fillColor: const Color(0xfff8f9fa),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                          const BorderSide(color: Color(0xffe4e7e8))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                          const BorderSide(color: Color(0xffe4e7e8))),
                    ),
                  ),
                ),

                Padding(padding: const EdgeInsets.symmetric(
                  vertical: 20,horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[ Expanded(
                    child: RadioListTile<Gender>(
                      title: const Text('Male',
                      style: TextStyle(fontSize: 17,
                      fontWeight: FontWeight.w500),
                      ),
                      value: Gender.male,
                      groupValue: selectedGender ,
                      activeColor: Colors.black,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                      onChanged: ( value ){
                        setState(() {
                          selectedGender = value;
                        });
                      } ,
                    ),
                  ),
                    Expanded(
                      child: RadioListTile<Gender>(
                        title: const Text('Female',
                        style: TextStyle(fontSize: 17,
                        fontWeight: FontWeight.w500),),
                        value: Gender.female,
                        groupValue: selectedGender ,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                        activeColor: Colors.black,
                        onChanged: ( value ){
                          setState(() {
                            selectedGender = value;
                          });
                        } ,
                      ),
                    ),
                ]) ,
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: (){
                    showDialog(context: context, builder: (BuildContext context){
                      return AlertDialog(
                          title: const Text('Alert'),
                          content: const Text('Account Created Successfully!'),
                          actions: <Widget>[
                            ElevatedButton(
                                child: const Text("Close",
                                style:  TextStyle(
                                  color: Colors.black
                                ),),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()),);
                                },
                            ),
                          ],
                      );
                    } ,);
                  },
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        color: const Color(0xfff97038),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                          fontFamily: 'Rubic Medium',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account?',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Rubic Medium',
                        color: Colors.black,
                      ),
                    ),
                   const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()));},
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          fontFamily: 'Rubic Medium',
                          color: Color(0xfff97038),
                        ),
                      ),
                    ),
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
