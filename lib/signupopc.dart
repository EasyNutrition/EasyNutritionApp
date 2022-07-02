import 'package:easy_nutrition/signup2H.dart';
import 'package:easy_nutrition/signup2M.dart';
import 'package:easy_nutrition/signup3.dart';
import 'package:easy_nutrition/signup_model.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

import 'application.dart';
import 'customWidgets/app_text_field.dart';
import 'data_class.dart';
import 'home_page.dart';

class SignupOpcPage extends StatelessWidget {
  const SignupOpcPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();
    var addressController = TextEditingController();
    var birthdayController = TextEditingController();
    var lastnameController = TextEditingController();
    var linkedinController = TextEditingController();
    var usernameController = TextEditingController();

    var roleIdController = TextEditingController();


    Future<void> _registration() async {
      String name = nameController.text.trim();
      String phone = phoneController.text.trim();
      String email = emailController.text.trim();
      String password = passwordController.text.trim();
      String address = addressController.text.trim();
      String birthday = birthdayController.text.trim();
      String lastname = lastnameController.text.trim();
      String linkedin = linkedinController.text.trim();
      String username = usernameController.text.trim();
      String roleId = roleIdController.text.trim();

      SignUpBody signUpBody = SignUpBody(
          name: name, phone: phone, email: email, password: password,
          address: address, birthday: birthday, lastname: lastname, linkedin: linkedin,
          username: username, roleId: int.parse(roleId));
      var provider = Provider.of<DataClass>(context, listen: false);
      await provider.postData(signUpBody);
      print(provider.isBack);
      if (provider.isBack) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  HomePage()),
        );
      }
    }

    return Scaffold(
      //backgroundColor: Colors.grey[300],
        appBar: AppBar(

          title: Text("Nutricionista",
            style: TextStyle(
              color: Colors.black87,
            ),
          ),

          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back,
              size: 20,
              color: Colors.black,),
          ),
        ),
        backgroundColor: Colors.white,
        body: Consumer<DataClass>(builder: (context, data, child) {
          return data.loading
              ? Center(
            child: Container(
              child: SpinKitThreeBounce(
                itemBuilder: (BuildContext context, int index) {
                  return DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: index.isEven ? Colors.lightGreen : Colors.green,
                    ),
                  );
                },
              ),
            ),
          )
              : SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 50),

                Column(
                  children: <Widget>[
                    Text("Creemos tu cuenta",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),),
                    SizedBox(height: 20),

                  ],
                ),

                //your email
                AppTextField(
                    textController: emailController,
                    hintText: "Email",
                    icon: Icons.email),
                const SizedBox(
                  height: 20,
                ),
                //your password
                AppTextField(
                    textController: passwordController,
                    hintText: "Password",
                    icon: Icons.password_sharp,
                    isObscure: true),

                SizedBox(
                  height: 20,
                ),

                TextField(
                  decoration: InputDecoration(
                  hintText: "Contraseña",
                  labelText: "Confirma tu contraseña",
                  labelStyle: TextStyle(fontSize: 18, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  ),
                ),

                  SizedBox(
                    height: 20,
                  ),

                //your phone
                AppTextField(
                    textController: roleIdController,
                    hintText: "id",
                    icon: Icons.phone),
                SizedBox(
                  height: 20 + 20,
                ),

                //your phone
                AppTextField(
                    textController: linkedinController,
                    hintText: "Linkedin",
                    icon: Icons.phone),
                SizedBox(
                  height: 20,
                ),
                //your phone
                AppTextField(
                    textController: usernameController,
                    hintText: "Username",
                    icon: Icons.phone),
                SizedBox(
                  height: 20,
                ),

                /*
                //your name
                AppTextField(
                    textController: nameController,
                    hintText: "Name",
                    icon: Icons.person),
                SizedBox(
                  height: 20,
                ),
                //your phone
                AppTextField(
                    textController: lastnameController,
                    hintText: "Lastname",
                    icon: Icons.phone),


                SizedBox(height: 20),
                //your email
                AppTextField(
                    textController: emailController,
                    hintText: "Email",
                    icon: Icons.email),
                const SizedBox(
                  height: 20,
                ),
                //your password
                AppTextField(
                    textController: passwordController,
                    hintText: "Password",
                    icon: Icons.password_sharp,
                    isObscure: true),

                SizedBox(
                  height: 20,
                ),


                //your phone
                AppTextField(
                    textController: phoneController,
                    hintText: "Phone",
                    icon: Icons.phone),
                SizedBox(
                  height: 20,
                ),
                AppTextField(
                    textController: birthdayController,
                    hintText: "Birthday",
                    icon: Icons.phone),

                SizedBox(
                  height: 20,
                ),


                //your phone
                AppTextField(
                    textController: addressController,
                    hintText: "Address",
                    icon: Icons.phone),
                SizedBox(
                  height: 20,
                ),


                //your phone

                //your phone
                AppTextField(
                    textController: linkedinController,
                    hintText: "Linkedin",
                    icon: Icons.phone),
                SizedBox(
                  height: 20,
                ),
                //your phone
                AppTextField(
                    textController: usernameController,
                    hintText: "Username",
                    icon: Icons.phone),
                SizedBox(
                  height: 20,
                ),

                //your phone
                AppTextField(
                    textController: roleIdController,
                    hintText: "id",
                    icon: Icons.phone),
                SizedBox(
                  height: 20 + 20,
                ),

                */

                /*
                Container(
                  padding: EdgeInsets.only(top: 3, left: 3),
                  decoration:
                  BoxDecoration(
                      borderRadius: BorderRadius.circular(50)
                  ),

                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ApplicationPage()));
                    },

                    color: Color(0xff47FF86),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),

                    child: Text(
                      "Registrarme", style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.black87,
                    ),
                    ),
                  ),
                ),

                */

                SizedBox(height: 50),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text("Al continuar, estarás aceptando nuestros",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Términos y Condiciones",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff47FF86),
                          ),
                        ),
                        Text(" y",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        Text(" Políticas de Privacidad",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff47FF86),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),




                //sign up button
                GestureDetector(
                  onTap: () {
                    _registration();
                  },
                  child: Container(
                    height: 70,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 23),
                    margin: const EdgeInsets.only(left: 40, right: 40),
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF74beef),
                      ),
                    ),
                    decoration: BoxDecoration(
                      //color: Colors.grey[300],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(4, 4),
                            blurRadius: 15,
                            spreadRadius: 1,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4, -4),
                            blurRadius: 15,
                            spreadRadius: 1,
                          ),
                        ]),
                  ),
                ),




                SizedBox(
                  height: 10,
                ),
                //tag line

              ],
            ),
          );
        }));
  }
}

/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'application.dart';

class SignupOpcPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Nutricionista",
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,
            size: 20,
            color: Colors.black,),
        ),
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("Creemos tu cuenta",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),),
                  SizedBox(height: 20),

                ],
              ),
              Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      labelText: "Ingresa tu email",
                      labelStyle: TextStyle(fontSize: 18, color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    obscureText: false,
                    maxLines: 1,
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  TextField(
                    decoration: InputDecoration(
                      hintText: "Contraseña",
                      labelText: "Crea una contraseña",
                      labelStyle: TextStyle(fontSize: 18, color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    obscureText: true,
                    maxLines: 1,
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  TextField(
                    decoration: InputDecoration(
                      hintText: "Contraseña",
                      labelText: "Confirma tu contraseña",
                      labelStyle: TextStyle(fontSize: 18, color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    obscureText: true,
                    maxLines: 1,
                  ),

                  SizedBox(height: 90),

                  Container(
                    padding: EdgeInsets.only(top: 3, left: 3),
                    decoration:
                    BoxDecoration(
                        borderRadius: BorderRadius.circular(50)
                    ),

                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ApplicationPage()));
                      },

                      color: Color(0xff47FF86),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),

                      child: Text(
                        "Registrarme", style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                      ),
                    ),
                  ),

                  SizedBox(height: 50),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("Al continuar, estarás aceptando nuestros",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Términos y Condiciones",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff47FF86),
                            ),
                          ),
                          Text(" y",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Text(" Políticas de Privacidad",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff47FF86),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


 */