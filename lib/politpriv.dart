import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PoliticPriv extends StatelessWidget {

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
              Text("Política de Privacidad",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  //color: Color(0xff47FF86),
                ),
              ),
              Text("Actualizado el 01-07-2022",
                style: TextStyle(
                  fontSize: 11,
                  //color: Color(0xff47FF86),
                ),
              ),
              Text("Esta Política de privacidad describe Nuestras políticas y procedimientos sobre la recopilación, el uso y la divulgación de Su información cuando utiliza el Servicio y le informa sobre Sus derechos de privacidad y cómo la ley lo protege. Usamos sus datos personales para proporcionar y mejorar el Servicio. Al usar el Servicio, acepta la recopilación y el uso de información de acuerdo con esta Política de privacidad. Esta Política de Privacidad ha sido creada con la ayuda del Generador de Políticas de Privacidad.",
                style: TextStyle(
                  fontSize: 14,
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

              Text("Uso de sus datos personales",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  //color: Color(0xff47FF86),
                ),
              ),
              Text("La Compañía puede utilizar los Datos Personales para los siguientes propósitos: Para proporcionar y mantener nuestro Servicio, incluso para monitorear el uso de nuestro Servicio. Para gestionar Su Cuenta: para gestionar Su registro como usuario del Servicio. Los Datos Personales que proporcione pueden darle acceso a diferentes funcionalidades del Servicio que están disponibles para Usted como usuario registrado. Para la ejecución de un contrato: el desarrollo, cumplimiento y realización del contrato de compra de los productos, artículos o servicios que haya adquirido o de cualquier otro contrato con Nosotros a través del Servicio. Para contactarlo: para contactarlo por correo electrónico, llamadas telefónicas, SMS u otras formas equivalentes de comunicación electrónica, como notificaciones push de una aplicación móvil sobre actualizaciones o comunicaciones informativas relacionadas con las funcionalidades, productos o servicios contratados, incluidas las actualizaciones de seguridad, cuando sea necesario o razonable para su implementación. Para brindarle noticias, ofertas especiales e información general sobre otros bienes, servicios y eventos que ofrecemos que son similares a los que ya compró o preguntó, a menos que haya optado por no recibir dicha información. Para gestionar Sus solicitudes: Para atender y gestionar Sus solicitudes hacia Nosotros. Para transferencias comerciales: podemos usar su información para evaluar o realizar una fusión, venta, reestructuración, reorganización, disolución u otra venta o transferencia de algunos o todos nuestros activos, ya sea como una empresa en marcha o como parte de una quiebra, liquidación, o procedimiento similar, en el que los Datos personales que tenemos sobre los usuarios de nuestro Servicio se encuentran entre los activos transferidos. Para otros fines: podemos usar su información para otros fines, como el análisis de datos, la identificación de tendencias de uso, la determinación de la efectividad de nuestra cámara promocional.",
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
