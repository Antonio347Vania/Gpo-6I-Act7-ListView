import 'package:flutter/material.dart';

void main() => runApp(Soriana());

class Soriana extends StatelessWidget {
  const Soriana({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Soriana",
      home: empleados(),
    );
  }
}//fin clase soriana
class empleados extends StatelessWidget {
  const empleados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Soriana',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: const Icon(Icons.shopping_cart, color: Colors.white),
        actions: [
          IconButton(
            icon: const Icon(Icons.qr_code_scanner, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.person_outline, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.account_circle, color: Colors.white),
            onPressed: () {},
          ),
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 236, 188, 114), // Naranja bajito
                Color.fromARGB(255, 236, 188, 114), // Naranja bajito
              ],
            ),
          ),
        ),
      ),
      body: ListView(
  padding: EdgeInsets.all(10),
  children: [
    // 1. Horarios
    Card(
      elevation: 2,
      child: ListTile(
        tileColor: Colors.orange[100],
        hoverColor: Colors.orange[200],
        leading: Icon(Icons.schedule, color: Colors.orange[800]),
        title: Text('Mis Horarios Semanales', style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('Consulta tus turnos y descansos'),
        trailing: Icon(Icons.chevron_right),
        onTap: () {},
      ),
    ),
    // 2. Nómina
    Card(
      elevation: 2,
      child: ListTile(
        tileColor: Colors.yellow[100],
        hoverColor: Colors.yellow[200],
        leading: Icon(Icons.payments, color: Colors.orange[800]),
        title: Text('Recibos de Nómina', style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('Descarga tus comprobantes de pago'),
        trailing: Icon(Icons.chevron_right),
        onTap: () {},
      ),
    ),
    // 3. NUEVO: Inventario (Cambio por Universidad)
    Card(
      elevation: 2,
      child: ListTile(
        tileColor: Colors.orange[50],
        hoverColor: Colors.orange[100],
        leading: Icon(Icons.inventory_2, color: Colors.orange[800]),
        title: Text('Inventario y Existencias', style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('Verificar stock y claves de productos'),
        trailing: Icon(Icons.chevron_right),
        onTap: () {},
      ),
    ),
    // 4. Beneficios
    Card(
      elevation: 2,
      child: ListTile(
        tileColor: Colors.yellow[50],
        hoverColor: Colors.yellow[100],
        leading: Icon(Icons.card_giftcard, color: Colors.orange[800]),
        title: Text('Mis Beneficios', style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('Cupones y convenios para empleados'),
        trailing: Icon(Icons.chevron_right),
        onTap: () {},
      ),
    ),
    // 5. Avisos
    Card(
      elevation: 2,
      child: ListTile(
        tileColor: Colors.orange[100],
        hoverColor: Colors.orange[200],
        leading: Icon(Icons.campaign, color: Colors.orange[800]),
        title: Text('Avisos de Sucursal', style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('Comunicados importantes del gerente'),
        trailing: Icon(Icons.chevron_right),
        onTap: () {},
      ),
    ),
  ],
)
    );
  }
}