import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            activeColor: AppTheme.primary,
            divisions: 10,
            min: 50,
            max: 400,
            value: _sliderValue,
            onChanged: _sliderEnabled
                ? (value) {
                    _sliderValue = value;
                    setState(() {});
                  }
                : null,
          ),
          Checkbox(
            value: _sliderEnabled,
            onChanged: (value) {
              _sliderEnabled = value ?? true;
              setState(() {});
            },
          ),
          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar slider'),
            value: _sliderEnabled,
            onChanged: (value) => setState(() {
              _sliderEnabled = value ?? true;
            }),
          ),
          Switch(
            value: _sliderEnabled,
            onChanged: (value) => setState(() {
              _sliderEnabled = value;
            }),
          ),
          SwitchListTile.adaptive(
            title: const Text('Habilitar Slider'),
            activeColor: AppTheme.primary,
            value: _sliderEnabled,
            onChanged: (value) => setState(() {
              _sliderEnabled = value;
            }),
          ),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://i0.wp.com/imgs.hipertextual.com/wp-content/uploads/2020/04/hipertextual-mark-ruffalo-abre-puertas-regreso-hulk-universo-marvel-pero-no-pantalla-grande-2020301147.jpg?fit=2150%2C1080&quality=50&strip=all&ssl=1'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
