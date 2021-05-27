import 'package:flutter/material.dart';

void main() => runApp(MyFormApp());

class MyFormApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telcel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: PaginaInicio(),
); //Fin MaterialApp
} //Fin de widget
} //fin de MyFormApp

class PaginaInicio extends StatefulWidget {
  @override
  _PaginaInicioState createState() {
    return _PaginaInicioState();
  }
} //Fin Statefulwidget

class _PaginaInicioState extends State<PaginaInicio> {
  String _value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text('Publica tu articulo', style: TextStyle(color: Colors.white), ),
        flexibleSpace: Container ( 
              decoration: BoxDecoration ( 
                
                gradient: LinearGradient ( 
                  begin: Alignment.bottomRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.blue[400],
                    Colors.blue[900],
                  ], 
                ), 
              ), 
            ), 
      ), //fin de App Bar

      body: Padding(
        padding: const EdgeInsets.all(1.5), //pading del body espacio blanco

        child: Container(
          //contenedor gris
          color: Colors.grey[50],
          height: 2000,
          width: 2000,
          padding: const EdgeInsets.all(10), //pading del body espacio blanco

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 180,
                width: 278,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(image: NetworkImage("https://raw.githubusercontent.com/cesarmiguelsotoe/Mis_imagenes/main/tuamigokit.jpg"), alignment: Alignment.topCenter),
                  border: Border.all(
                    color: Colors.blue[600],
                    width: 3.0,
                  ), //fin de border
                ), //fin de el decoration box
              ), //fin de el container

              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 5),
                width: 572,

                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Nombre',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue[900],
                        width: 2.0,
                      ), //fin de border side
                    ), //fin de enable border
                    //! Change the Focused Border
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue[400],
                        width: 3.0,
                      ), //fin de bordersize
                    ), //fin de outlineInput border
                  ), //fin de inoutdecoration
                ), //fin de TextField
              ), //fin de container

              Container(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                width: 572,

                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Modelo',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue[900],
                        width: 2.0,
                      ), //fin de border side
                    ), //fin de enable border
                    //! Change the Focused Border
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue[400],
                        width: 3.0,
                      ), //fin de bordersize
                    ), //fin de outlineInput border
                  ), //fin de inputdecoration
                ), //fin de TextField
              ), //fin de container grupo especialidad

              SizedBox(height: 10),

              Container(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                width: 572, //aqui

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Precio',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue[900],
                              width: 2.0,
                            ), //fin de border side
                          ), //fin de enable border
                          //! Change the Focused Border
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue[400],
                              width: 3.0,
                            ), //fin de bordersize
                          ), //fin de outlineInput border
                        ), //fin de inputdecoration
                      ), //fin de TextField
                    ),
                    SizedBox(width: 16),
                    new DropdownButton<String>(
                      style: TextStyle(
                        color: Colors.blue[900]
                      ),
                      items: [
                        DropdownMenuItem<String>(
                          child: Text('Celular'),
                          value: 'one',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('Audifonos'),
                          value: 'two',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('Cargador'),
                          value: 'three',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('Chip'),
                          value: 'four',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('Bocinas'),
                          value: 'five',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('Audifonos bluetooth'),
                          value: 'six',
                        ),
                      ],
                      onChanged: (String value) {
                        setState(() {
                          _value = value;
                        });
                      },
                      hint: Text('Categoria', style: TextStyle(
                        color: Colors.blue[400]
                      ),),
                      value: _value,
                    ), //fin de dropdown
                  ], //fin de widget
                ), //fin de row
              ), //fin de container

              SizedBox(height: 10),

              Container(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                width: 572, //aqui
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Flexible(
                      child: RaisedButton(
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          ;
                        },
                        padding: EdgeInsets.all(0.0),
                        child: SizedBox(
                          
                          child: Center(

                            
                            child: Container(
                              width: 200,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors:[
                                    Colors.blue[900],
                                    Colors.blue[400],
                                    Colors.blue[900],
                                  ],
                                ),
                              ), 
                              
                              child: Text(
                                "PUBLICAR",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 25, color: Colors.white),
                              ),
                            ),
                          ),//center
                        ),
                      ),//
                    ),
                    SizedBox(width: 16),
                    new Flexible(
                      child: RaisedButton(
                        color: Colors.blueGrey,
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          ;
                        },
                        child: SizedBox(
                          child: Center(
                            child: Text(
                              "REINICIAR",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ], //fin de widget
                ), //fin de row
              ), //fin de container colores
            ], //fin de widget2[]
          ), //fin de column
        ), //child container
      ), //fin de body padding
    ); //Fin Scaffold
  } //Fin de Widget
} //Fin _PaginaInicioState