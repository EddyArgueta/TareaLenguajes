import 'package:flutter/material.dart';
import 'package:apptipogoogle/shared/widgets/custom_icon_buttons.dart';

class PrinPage extends StatelessWidget {
  const PrinPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
        Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child:const Row(
          children: [

            //Segun la definicion que nos proporciona la pagina de Flutter acerca de un Expanded: 
            //A widget that expands a child of a Row, Column, or Flex so that the child fills the available space.
            Expanded(
              child: Text(
                'Tu cuenta está protegida ',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),

      Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0), 
        child: Row(
          children: [
            const Expanded(
              child: Text(
                'La Verificación de seguridad revisó tu cuenta y no '
                'encontró acciones recomendadas. ',
                style: TextStyle(fontSize: 14.0), 
              ),
            ),
            CustomIconButton(
              icon: Icons.gpp_good,
              iconSize: 70.0,
              onPressed: () {},
              color: Colors.green,
            ),
          ],
        ),
      ),

      Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: const Row(
          children: [
            Expanded(
              child: Text(
                'Ver Detalles ',
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, 
                //Subrayado (Pensé que iba en ese texto, pero al menos Flutter me enseñó como usarlo para el futuro)
                //decoration: TextDecoration.underline, decorationColor: Color.fromRGBO(19, 100, 223, 1),
                color: Color.fromRGBO(19, 100, 223, 1)), 
              ),
            ),
          ],
        ),
      ),

      const Divider(),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child:const Row(
          children: [
            Expanded(
              child: Text(
                'Verificación de Privacidad ',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),

      Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0), 
        child: Row(
          children: [
            const Expanded(
              child: Text(
                'Elige la configuración de privacidad indicada para ti '
                'con esta guía paso a paso. ',
                style: TextStyle(fontSize: 14.0), 
              ),
            ),
            CustomIconButton(
              icon: Icons.health_and_safety_rounded,
              iconSize: 70.0,
              onPressed: () {},
              color: Colors.blue,
            ),
          ],
        ),
      ),

      Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: const Row(
          children: [
            Expanded(
              child: Text(
                'Realizar la Verificación de Privacidad ',
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, 
                color: Color.fromRGBO(19, 100, 223, 1)), 
              ),
            ),
          ],
        ),
      ),   

      const Divider(),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child:const Row(
          children: [
            Expanded(
              child: Text(
                '¿Buscas otra información? ',
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),

      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0), 
        child: Row(
          children: [
            CustomIconButton(
              icon: Icons.search,
              iconSize: 20.0,
              onPressed: () {},
              color: const Color.fromARGB(255, 53, 52, 52),
            ),

            const Expanded(
              child: Text(
                'Buscar en la cuenta de Google ',
                style: TextStyle(fontSize: 16.0), 
              ),
            ),

            CustomIconButton(
              icon: Icons.arrow_forward_ios_rounded,
              iconSize: 20.0,
              onPressed: () {},
              color: Colors.grey,
            ),
          ],
        ),
      ),

      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0), 
        child: Row(
          children: [
            CustomIconButton(
              icon: Icons.help_outline_rounded,
              iconSize: 20.0,
              onPressed: () {},
              color: const Color.fromARGB(255, 53, 52, 52),
            ),

            const Expanded(
              child: Text(
                'Ver las opciones de ayuda ',
                style: TextStyle(fontSize: 15.0), 
              ),
            ),

            CustomIconButton(
              icon: Icons.arrow_forward_ios_rounded,
              iconSize: 20.0,
              onPressed: () {},
              color: Colors.grey,
            ),
          ],
        ),
      ),

      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0), 
        child: Row(
          children: [
            CustomIconButton(
              icon: Icons.announcement_outlined,
              iconSize: 20.0,
              onPressed: () {},
              color: const Color.fromARGB(255, 53, 52, 52),
            ),

            const Expanded(
              child: Text(
                'Enviar comentarios ',
                style: TextStyle(fontSize: 16.0), 
              ),
            ),

            CustomIconButton(
              icon: Icons.arrow_forward_ios_rounded,
              iconSize: 20.0,
              onPressed: () {},
              color: Colors.grey,
            ),
          ],
        ),
      ),

      const Divider(),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0), 
          child: Row(
            children: [
              Expanded(
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(fontSize: 12.5, color: Colors.black),
                children: [

                  //En Flutter encontré la funcionalidad de un TextSpan
                  //Por definición: An immutable span of text.
                  //A TextSpan object can be styled using its style property. 
                  //The style will be applied to the text and the children.
                  //En otras palabras, ayuda a ponerle estilo a una oración en específico dentro de un texto.
                  TextSpan(
                    text: 'Solo tú puedes ver la configuración. También puedes revisar la configuración '
                        'de Maps, la Búsqueda o cualquier Servicio de Google que uses con frecuencia. '
                        'Google protege la privacidad y la seguridad de tus datos. ',
                  ),

                TextSpan(
                  text: 'Más información ',
                  style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold), 
                ),

                //El WidgetSpan viene a ser lo mismo que el TextSpan, solo que con Iconos
                WidgetSpan(
                  child: Icon(
                    Icons.help_outline_rounded, 
                    size: 16.0, 
                    color: Colors.blue, 
                  ),
                ),

              ],
            ),
          ),
        ),

        CustomIconButton(
          icon: Icons.health_and_safety_rounded,
          iconSize: 60.0,
          onPressed: () {},
          color: Colors.blue,
        ),
      ],
    ),
  ),


    ],
   );
  }
}