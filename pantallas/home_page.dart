import 'dart:convert';

import 'package:deportesapp/pantallasdeApp/equipos.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Página Principal'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Equipos'),
              Tab(text: 'Novedades'),
              Tab(text: 'Eventos en Vivo'),
              Tab(text: 'Deportes'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Equipos(),
            _buildTabContent('Novedades'),
            _buildTabContent('Eventos en Vivo'),
            _buildTabContent('Deportes'),
          ],
        ),
      ),
    );
  }

  Widget _buildTabContent(String tabName) {

    return Center(
      child: Text(
        'Contenido de la pestaña $tabName',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}






class NovedadesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Novedades', style: TextStyle(fontSize: 24)),
    );
  }
}

class EventosEnVivoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Eventos en Vivo', style: TextStyle(fontSize: 24)),
    );
  }
}

class DeportesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Deportes', style: TextStyle(fontSize: 24)),
    );
  }
}





