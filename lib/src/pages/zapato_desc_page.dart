import 'package:flutter/material.dart';

import '../widgets/custom_widgets.dart';

class ZapatoDescPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            const ZapatoSizePage(fullScreen: true),
            Positioned(
                top: 50,
                left: 15,
                child: FloatingActionButton(
                  backgroundColor: Colors.transparent,
                  onPressed: () {},
                  // ignore: sort_child_properties_last
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 35,
                  ),
                  elevation: 0,
                  highlightElevation: 0,
                ))
          ],
        ),
        Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const ZapatosDescripcionPage(
                  titulo: 'Nike Air Max 720',
                  descripcion:
                      "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                ),
                _MontoBuyNow(),
                _ColoresYmas(),
                _BotonesLikesCartSettings()
              ],
            ),
          ),
        ),
      ],
    ));
  }
}

class _BotonesLikesCartSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const _BotonSombreado(
              Icon(Icons.favorite, color: Colors.red, size: 25)),
          _BotonSombreado(Icon(Icons.add_shopping_cart,
              color: Colors.grey.withOpacity(0.8), size: 25)),
          _BotonSombreado(Icon(Icons.settings,
              color: Colors.grey.withOpacity(0.8), size: 25)),
        ],
      ),
    );
  }
}

class _BotonSombreado extends StatelessWidget {
  final Icon icon;

  const _BotonSombreado(this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                spreadRadius: -5,
                blurRadius: 20,
                offset: Offset(0, 10))
          ]),
      child: icon,
    );
  }
}

class _ColoresYmas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        children: [
          Expanded(
              child: Stack(
            children: const [
              Positioned(left: 90, child: _BotonColor(Color(0xffC6D642))),
              Positioned(left: 60, child: _BotonColor(Color(0xffFFAD29))),
              Positioned(left: 30, child: _BotonColor(Color(0xff2099f1))),
              _BotonColor(Color(0xff364d56)),
            ],
          )),
          // const Spacer(),
          const BotonNaranja(
            texto: 'More related items',
            alto: 30,
            ancho: 140,
            color: Color(0xffFFC675),
          )
        ],
      ),
    );
  }
}

class _BotonColor extends StatelessWidget {
  final Color color;

  const _BotonColor(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 38,
      height: 38,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}

class _MontoBuyNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        margin: const EdgeInsets.only(top: 30, bottom: 20),
        child: Row(
          children: const [
            Text(
              '\$180.0',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            BotonNaranja(
              texto: 'Buy Now',
              ancho: 120,
              alto: 35,
            )
          ],
        ),
      ),
    );
  }
}
