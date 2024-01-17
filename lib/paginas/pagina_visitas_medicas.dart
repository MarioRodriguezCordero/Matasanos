import 'package:flutter/material.dart';

class PaginaVisitasMedicas extends StatelessWidget {
  const PaginaVisitasMedicas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => PaginaVisitasMedicas()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
