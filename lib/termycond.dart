import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Termycond extends StatelessWidget {

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
      body: 
        SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            //height: MediaQuery.of(context).size.height - 50,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("Términos y condiciones",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    //color: Color(0xff47FF86),
                  ),
                ),
                Text("Última actualización: 01 de julio de 2022\nLea estos términos y condiciones detenidamente antes de utilizar Nuestro Servicio.",
                  style: TextStyle(
                    fontSize: 11,
                    //color: Color(0xff47FF86),
                  ),
                ),

                Text("Interpretación y Definiciones",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    //color: Color(0xff47FF86),
                  ),
                ),
                Text("Interpretación",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    //color: Color(0xff47FF86),
                  ),
                ),
                Text("Las palabras cuya letra inicial está en mayúscula tienen significados definidos bajo las siguientes condiciones. Las siguientes definiciones tendrán el mismo significado independientemente de que aparezcan en singular o en plural.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    //color: Color(0xff47FF86),
                  ),
                ),

                Text("Definiciones",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    //color: Color(0xff47FF86),
                  ),
                ),
                Text("A los efectos de estos Términos y Condiciones:\nAplicación significa el programa de software proporcionado por la Compañía descargado por Usted en cualquier dispositivo electrónico, llamado EasyNutrition\nTienda de aplicaciones significa el servicio de distribución digital operado y desarrollado por Apple Inc. (Apple App Store) o Google Inc. (Google Play Store) en el que se ha descargado la Aplicación.\nAfiliado significa una entidad que controla, es controlada o está bajo control común con una parte, donde control significa la propiedad del 50% o más de las acciones, participación accionaria u otros valores con derecho a voto para la elección de directores u otra autoridad administrativa.\nPaís se refiere a: Perú\nLa Compañía (referida como la Compañía, Nosotros, Nos o Nuestro en este Acuerdo) se refiere a EasyNutrition.sac, UPC.\nDispositivo significa cualquier dispositivo que pueda acceder al Servicio, como una computadora, un teléfono celular o una tableta digital.\nServicio se refiere a la Aplicación.\nLos Términos y condiciones (también denominados Términos) significan estos Términos y condiciones que forman el acuerdo completo entre Usted y la Compañía con respecto al uso del Servicio. Este acuerdo de Términos y Condiciones ha sido creado con la ayuda del Generador de Términos y Condiciones Gratis.\nServicio de redes sociales de terceros significa cualquier servicio o contenido (incluidos datos, información, productos o servicios) proporcionado por un tercero que puede mostrarse, incluirse o ponerse a disposición mediante el Servicio.\nUsted se refiere a la persona que accede o utiliza el Servicio, o la empresa u otra entidad legal en nombre de la cual dicha persona accede o utiliza el Servicio, según corresponda.\n"
                  ,textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    //color: Color(0xff47FF86),
                  ),
                ),

                Text("Reconocimiento",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    //color: Color(0xff47FF86),
                  ),
                ),
                Text("Estos son los Términos y Condiciones que rigen el uso de este Servicio y el acuerdo que opera entre Usted y la Compañía. Estos Términos y Condiciones establecen los derechos y obligaciones de todos los usuarios con respecto al uso del Servicio. Su acceso y uso del Servicio está condicionado a Su aceptación y cumplimiento de estos Términos y condiciones. Estos Términos y condiciones se aplican a todos los visitantes, usuarios y otras personas que acceden o utilizan el Servicio. Al acceder o utilizar el Servicio, usted acepta estar sujeto a estos Términos y condiciones. Si no está de acuerdo con alguna parte de estos Términos y condiciones, no podrá acceder al Servicio. Usted declara que es mayor de 18 años. La Compañía no permite que los menores de 18 años utilicen el Servicio. Su acceso y uso del Servicio también está condicionado a Su aceptación y cumplimiento de la Política de Privacidad de la Compañía. Nuestra Política de privacidad describe Nuestras políticas y procedimientos sobre la recopilación, el uso y la divulgación de Su información personal cuando utiliza la Aplicación o el Sitio web y le informa sobre Sus derechos de privacidad y cómo la ley lo protege. Lea atentamente Nuestra Política de Privacidad antes de utilizar Nuestro Servicio.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    //color: Color(0xff47FF86),
                  ),
                ),

                Text("Enlaces a otros sitios web",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    //color: Color(0xff47FF86),
                  ),
                ),
                Text("Nuestro Servicio puede contener enlaces a sitios web o servicios de terceros que no son propiedad ni están controlados por la Compañía. La Compañía no tiene control ni asume ninguna responsabilidad por el contenido, las políticas de privacidad o las prácticas de los sitios web o servicios de terceros. Además, reconoce y acepta que la Compañía no será responsable, directa o indirectamente, de ningún daño o pérdida causados ​​o presuntamente causados ​​por o en relación con el uso o la confianza en dicho contenido, bienes o servicios disponibles en o a través de dichos sitios web o servicios. Le recomendamos encarecidamente que lea los términos y condiciones y las políticas de privacidad de cualquier sitio web o servicio de terceros que visite.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    //color: Color(0xff47FF86),
                  ),
                ),

                Text("Terminación",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    //color: Color(0xff47FF86),
                  ),
                ),
                Text("Podemos rescindir o suspender Su acceso de inmediato, sin previo aviso ni responsabilidad, por cualquier motivo, incluido, entre otros, si incumple estos Términos y condiciones. Tras la rescisión, su derecho a utilizar el Servicio cesará inmediatamente.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    //color: Color(0xff47FF86),
                  ),
                ),

                Text("Limitación de responsabilidad",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    //color: Color(0xff47FF86),
                  ),
                ),
                Text("Sin perjuicio de los daños en los que pueda incurrir, la responsabilidad total de la Compañía y cualquiera de sus proveedores en virtud de cualquier disposición de estos Términos y Su recurso exclusivo por todo lo anterior se limitará al monto que realmente pagó a través del Servicio o 100 USD. si no ha comprado nada a través del Servicio. En la máxima medida permitida por la ley aplicable, en ningún caso la Compañía o sus proveedores serán responsables de daños especiales, incidentales, indirectos o consecuentes (incluidos, entre otros, daños por lucro cesante, pérdida de datos o otra información, por interrupción del negocio, por lesiones personales, pérdida de privacidad que surja o esté relacionada de alguna manera con el uso o la incapacidad de usar el Servicio, software de terceros y/o hardware de terceros utilizado con el Servicio, o de lo contrario en relación con cualquier disposición de estos Términos), incluso si la Compañía o cualquier proveedor ha sido advertido de la posibilidad de tales daños e incluso si el remedio no cumple con su propósito esencial. Algunos estados no permiten la exclusión de garantías implícitas o la limitación de responsabilidad por daños incidentales o consecuentes, lo que significa que algunas de las limitaciones anteriores pueden no aplicarse. En estos estados, la responsabilidad de cada parte se limitará en la mayor medida permitida por la ley.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    //color: Color(0xff47FF86),
                  ),
                ),

                Text("Descargo de responsabilidad TAL CUAL y SEGÚN DISPONIBILIDAD",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    //color: Color(0xff47FF86),
                  ),
                ),
                Text("El Servicio se le proporciona TAL CUAL y SEGÚN DISPONIBILIDAD y con todas las fallas y defectos sin garantía de ningún tipo. En la medida máxima permitida por la ley aplicable, la Compañía, en su propio nombre y en nombre de sus Afiliados y sus respectivos otorgantes de licencias y proveedores de servicios, renuncia expresamente a todas las garantías, ya sean expresas, implícitas, estatutarias o de otro tipo, con respecto a la Servicio, incluidas todas las garantías implícitas de comerciabilidad, idoneidad para un propósito particular, título y no infracción, y garantías que puedan surgir del curso de la negociación, el curso del desempeño, el uso o la práctica comercial. Sin limitación a lo anterior, la Compañía no ofrece ninguna garantía o compromiso, y no hace ninguna representación de que el Servicio cumplirá con Sus requisitos, logrará los resultados previstos, será compatible o funcionará con cualquier otro software, aplicación, sistema o servicio, operará sin interrupción, cumplir con los estándares de rendimiento o confiabilidad o estar libre de errores o que cualquier error o defecto puede o será corregido. Sin limitar lo anterior, ni la Compañía ni ninguno de los proveedores de la compañía hace ninguna representación o garantía de ningún tipo, expresa o implícita: (i) en cuanto a la operación o disponibilidad del Servicio, o la información, contenido y materiales o productos incluido en el mismo; (ii) que el Servicio será ininterrumpido o libre de errores; (iii) en cuanto a la precisión, confiabilidad o actualidad de cualquier información o contenido proporcionado a través del Servicio; o (iv) que el Servicio, sus servidores, el contenido o los correos electrónicos enviados desde o en nombre de la Compañía están libres de virus, secuencias de comandos, troyanos, gusanos, malware, bombas de tiempo u otros componentes dañinos. Algunas jurisdicciones no permiten la exclusión de ciertos tipos de garantías o limitaciones de los derechos legales aplicables de un consumidor, por lo que es posible que algunas o todas las exclusiones y limitaciones anteriores no se apliquen a usted. Pero en tal caso, las exclusiones y limitaciones establecidas en esta sección se aplicarán en la mayor medida exigible según la ley aplicable.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    //color: Color(0xff47FF86),
                  ),
                ),


              ],
            ),
          ),
        ),



    );
  }
}
