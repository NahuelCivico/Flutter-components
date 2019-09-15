import 'package:flutter/material.dart'; 

class SliderPage extends StatefulWidget {
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckBox(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen()
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: "Tamaño de la imagen",
      //divisions: 20,
      min: 100.0,
      max: 400.0,
      value: _valorSlider,
      onChanged: ( _bloquearCheck ) ? null : ( valor ) {
        setState( () {
          _valorSlider = valor;          
        });
      },
    );
  }

  Widget _crearCheckBox() {
    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck,
      onChanged: ( valor ) {
        setState(() {
          _bloquearCheck = valor;       
        });
      },
    );
  }

  Widget _crearSwitch() {
    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck,
      onChanged: ( valor ) {
        setState(() {
          _bloquearCheck = valor;       
        });
      },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://www.region20.com.ar/images/413444_0.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}