import 'package:easy_nutrition/application.dart';
import 'package:easy_nutrition/signup2H.dart';
import 'package:easy_nutrition/signup2M.dart';
import 'package:easy_nutrition/signup_model.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'customWidgets/app_text_field.dart';
import 'data_class.dart';
import 'home_page.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);



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
      String roleId; //= roleIdController.text.trim();

      SignUpBody signUpBody = SignUpBody(
          name: name, phone: phone, email: email, password: password,
          address: address, birthday: birthday, lastname: lastname, linkedin: linkedin,
          username: username, roleId: int.parse("1")); //roleId: int.parse(roleId));
      var provider = Provider.of<DataClass>(context, listen: false);
      await provider.postData(signUpBody);
      print(provider.isBack);
      if (provider.isBack) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  ApplicationPage()),
        );
      }

      //roleId = "2";
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
                Text("Registremos tus datos",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text("Para empezar, cuéntanos...",
                  style: TextStyle(
                      fontSize: 20,
                      color:Colors.grey[700]),
                ),

                SizedBox(
                  height: 20,
                ),
                //your name
                AppTextField(
                    textController: nameController,
                    hintText: "Nombre",
                    icon: Icons.person,
                ),
                SizedBox(
                  height: 20,
                ),
                //your phone
                AppTextField(
                    textController: lastnameController,
                    hintText: "Apellido",
                    icon: Icons.phone),

                SizedBox(height: 20),

                AppTextField(
                  textController: birthdayController,
                  hintText: "Fecha de nacimiento",
                  icon: Icons.cake,
                ),

                SizedBox(
                  height: 20,
                ),

                Container(
                  height: 60,
                  width: 350,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xC2C2C2B2)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.map,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      CountryWidget(),
                    ],
                  ),
                ),

                SizedBox(height: 20),

                //your phone
                AppTextField(
                    textController: addressController,
                    hintText: "Dirección de domicilio",
                    icon: Icons.maps_home_work),
                SizedBox(
                  height: 20,
                ),

                AppTextField(
                    textController: phoneController,
                    hintText: "Número de celular",
                    icon: Icons.phone),
                SizedBox(
                  height: 20,
                ),


                //your phone
                AppTextField(
                    textController: linkedinController,
                    hintText: "Usuario de Linkedin",
                    icon: Icons.data_usage_sharp),
                SizedBox(
                  height: 20,
                ),
                //your phone
                AppTextField(
                    textController: usernameController,
                    hintText: "Usuario para su cuenta",
                    icon: Icons.account_circle),
                SizedBox(
                  height: 20,
                ),

                //your email
                AppTextField(
                    textController: emailController,
                    hintText: "Correo electrónico",
                    icon: Icons.email),
                const SizedBox(
                  height: 20,
                ),
                //your password
                AppTextField(
                    textController: passwordController,
                    hintText: "Contraseña",
                    icon: Icons.password_sharp,
                    isObscure: true),

                SizedBox(
                  height: 20,
                ),



                /*
                //your phone
                AppTextField(
                    textController: roleIdController,
                    hintText: "id",
                    icon: Icons.phone),


                 */


                SizedBox(
                  height: 20 + 20,
                ),




                Column(
                  children: <Widget>[
                    Text("¿Cuál es tu sexo?",
                      style: TextStyle(
                          fontSize: 24,
                          color:Colors.grey[700]),
                    ),
                    SexWidget(),
                  ],
                ),

                SizedBox(
                  height: 20 + 20,
                ),



                //sign up button
                GestureDetector(
                  onTap: () {
                    _registration();
                  },
                  child: Container(
                    height: 70,
                    width: 300,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 23),
                    margin: const EdgeInsets.only(left: 40, right: 40),
                    child: const Text(
                      "Siguiente",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    decoration: BoxDecoration(
                        //color: Colors.grey[300],
                        color: Color(0xff47FF86),
                        borderRadius: BorderRadius.circular(35),
                        /*
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


                        ]*/),
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
class SignupPage extends StatelessWidget {

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
      body: Form(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("Registremos tus datos",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("Para empezar, cuéntanos...",
                    style: TextStyle(
                        fontSize: 20,
                        color:Colors.grey[700]),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Nombre",
                      labelText: "¿Cuál es tu nombre?",
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
                      hintText: "Apellido",
                      labelText: "¿Y tu apellido?",
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
                ],
              ),

              Column(
                children: <Widget>[
                  Text("¿Cuál es tu sexo?",
                    style: TextStyle(
                        fontSize: 24,
                        color:Colors.grey[700]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //
                    children: <Widget>[
                      MaterialButton(
                        minWidth: 130,
                        height: 50,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage2M()));

                        },
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Color(0xff47FF86),
                            ),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Text(
                          "Hombre",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20
                          ),
                        ),
                      ),
                      SizedBox(width: 20),

                      MaterialButton(
                        minWidth: 130,
                        height: 50,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage2F()));
                        },

                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Color(0xff47FF86),
                            ),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Text(
                          "Mujer",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 20
                          ),
                        ),
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

class CountryWidget extends StatefulWidget {
  @override
  State<CountryWidget> createState() => _CountryWidgetState();
}

class _CountryWidgetState extends State<CountryWidget> {
  String dropdownValue = 'País';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      //isExpanded: true,
      borderRadius: BorderRadius.circular(12),
      value: dropdownValue,
      icon: Icon(Icons.arrow_drop_down),
      elevation: 16,
      style: TextStyle(
        color: Color(0xA5292B33),
        fontSize: 18,
      ),

      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>["País", "Afganistán","Albania","Alemania","Andorra","Angola","Antigua y Barbuda","Arabia Saudita","Argelia","Argentina","Armenia","Australia","Austria","Azerbaiyán","Bahamas","Bangladés","Barbados","Baréin","Bélgica","Belice","Benín","Bielorrusia","Birmania","Bolivia","Bosnia y Herzegovina","Botsuana","Brasil","Brunéi","Bulgaria","Burkina Faso","Burundi","Bután","Cabo Verde","Camboya","Camerún","Canadá","Catar","Chad","Chile","China","Chipre","Ciudad del Vaticano","Colombia","Comoras","Corea del Norte","Corea del Sur","Costa de Marfil","Costa Rica","Croacia","Cuba","Dinamarca","Dominica","Ecuador","Egipto","El Salvador","Emiratos Árabes Unidos","Eritrea","Eslovaquia","Eslovenia","España","Estados Unidos","Estonia","Etiopía","Filipinas","Finlandia","Fiyi","Francia","Gabón","Gambia","Georgia","Ghana","Granada","Grecia","Guatemala","Guyana","Guinea","Guinea ecuatorial","Guinea-Bisáu","Haití","Honduras","Hungría","India","Indonesia","Irak","Irán","Irlanda","Islandia","Islas Marshall","Islas Salomón","Israel","Italia","Jamaica","Japón","Jordania","Kazajistán","Kenia","Kirguistán","Kiribati","Kuwait","Laos","Lesoto","Letonia","Líbano","Liberia","Libia","Liechtenstein","Lituania","Luxemburgo","Madagascar","Malasia","Malaui","Maldivas","Malí","Malta","Marruecos","Mauricio","Mauritania","México","Micronesia","Moldavia","Mónaco","Mongolia","Montenegro","Mozambique","Namibia","Nauru","Nepal","Nicaragua","Níger","Nigeria","Noruega","Nueva Zelanda","Omán","Países Bajos","Pakistán","Palaos","Palestina","Panamá","Papúa Nueva Guinea","Paraguay","Perú","Polonia","Portugal","Reino Unido","República Centroafricana","República Checa","República de Macedonia","República del Congo","República Democrática del Congo","República Dominicana","República Sudafricana","Ruanda","Rumanía","Rusia","Samoa","San Cristóbal y Nieves","San Marino","San Vicente y las Granadinas","Santa Lucía","Santo Tomé y Príncipe","Senegal","Serbia","Seychelles","Sierra Leona","Singapur","Siria","Somalia","Sri Lanka","Suazilandia","Sudán","Sudán del Sur","Suecia","Suiza","Surinam","Tailandia","Tanzania","Tayikistán","Timor Oriental","Togo","Tonga","Trinidad y Tobago","Túnez","Turkmenistán","Turquía","Tuvalu","Ucrania","Uganda","Uruguay","Uzbekistán","Vanuatu","Venezuela","Vietnam","Yemen","Yibuti","Zambia","Zimbabue"]
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}


class DateWidget extends StatefulWidget{
  @override
  State<DateWidget> createState() {
    return _DateWidget();
  }
}

class _DateWidget extends State<DateWidget>{
  TextEditingController dateinput = TextEditingController();

  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child:TextField(
          controller: dateinput,
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.calendar_today,),
            labelText: "Selecciona tu fecha de nacimiento",
            labelStyle: TextStyle(fontSize: 18, color: Colors.black),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          readOnly: true,
          onTap: () async {
            DateTime pickedDate = await showDatePicker(
                context: context, initialDate: DateTime.now(),
                firstDate: DateTime(1942),
                lastDate: DateTime(2023)
            ) as DateTime;
            if(pickedDate != null ){
              print(pickedDate);
              String formattedDate = DateFormat('dd/MM/yyyy').format(pickedDate);
              print(formattedDate);
              setState(() {
                dateinput.text = formattedDate;
              });
            }else{
              print("No ha seleccionado una fecha");
            }
          },
        ),

    );
  }
}

enum SingingCharacter { hombre, mujer }

class SexWidget extends StatefulWidget {
  const SexWidget({Key? key}) : super(key: key);

  @override
  State<SexWidget> createState() => _SexWidgetState();
}

class _SexWidgetState extends State<SexWidget> {
  SingingCharacter? _character = SingingCharacter.hombre;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RadioListTile<SingingCharacter>(
          title: const Text('Hombre'),
          value: SingingCharacter.hombre,
          groupValue: _character,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
        ),
        RadioListTile<SingingCharacter>(
          title: const Text('Mujer'),
          value: SingingCharacter.mujer,
          groupValue: _character,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
        ),
      ],
    );
  }
}



