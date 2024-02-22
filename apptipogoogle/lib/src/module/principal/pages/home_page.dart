import 'package:apptipogoogle/shared/widgets/custom_icon_buttons.dart';
import 'package:apptipogoogle/src/module/principal/pages/data_priv.dart';
import 'package:apptipogoogle/src/module/principal/pages/info_personal.dart';
import 'package:apptipogoogle/src/module/principal/pages/prin_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, //Número de Tabs
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,

          //Para tener el icono de 'x' antes del texto de "Cuenta de Google" voy a utilizar el leading,
          //Que si mal no recuerdo, se utiliza para poner un icono al lado izquierdo de un AppBar
          leading: CustomIconButton(
          icon: Icons.close,
          iconSize: 30.0,
          onPressed: () {}, 
          color: Colors.black,
        ),

          //Para el encabezado, se utiliza lo que es un RichText
          //Segun el Text Class de la Página de Flutter, para trabajar con varios estilos
          //una misma oración
          title:  RichText(
            text: const TextSpan(        
              children: <TextSpan>[
              TextSpan(text: 'Cuenta de ', style: TextStyle(color: Colors.black, fontSize: 19.0)),
              TextSpan(text: 'Google', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 19.0)),
                ],
              ),
            ),

          backgroundColor: Colors.grey[300],
          actions: [
            CustomIconButton(
              icon: Icons.help_outline,
              iconSize: 25.0,
              onPressed: () {}, 
              color: const Color.fromRGBO(97, 97, 97, 1),
            ),

            CustomIconButton(
              icon: Icons.search,
              iconSize: 25.0,
              onPressed: () {},
              color:const Color.fromRGBO(97, 97, 97, 1),
            ),

            //En el caso de haber sido un CustomIconButton
            //En el Icon hubiera puesto un icon: Icons.account_rounded_outlined,
            CustomImageButton(
              imagePath: 'assets/pokeball.png',
              iconSize: 25.0,
              onPressed: () {},
            ),
          ],

          bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.blue, //Esta es la linea debajo del texto del Tab
              labelColor: Colors.blue, //Si no me equivoco, con esto deberia de cambiar
              //el color del texto de la Tab seleccionada (activa) 

              // ignore: avoid_print
              onTap: (value) => print('Tab: $value'),
              tabs: const [                
                Tab(
                  child: Text(
                    'Página Principal',
                    style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Información Personal',
                    style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Datos y Privacidad',
                    style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ]),
        ),

        body: const TabBarView(
          children: [
            PrinPage(),
            InfoPersonalPage(),
            DataPrivPage(),
          ],
        ),
      ),
    );
  }
}
