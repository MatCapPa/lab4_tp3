import 'package:flutter/material.dart';

class AlbumSingleScreen extends StatelessWidget {
  const AlbumSingleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final size = MediaQuery.of(context).size;
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Album'),
        elevation: 10,
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: size.height * 0.62,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Image.network(args['imagen']),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: double.infinity,
              height: size.height * 0.10,
              child: Center(
                child: Text(
                  args['titulo'],
                  style: const TextStyle(
                    fontSize: 24,
                    
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: double.infinity,
              height: size.height * 0.10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: size.width * 0.7,
                    height: size.height * 1,
                    //color:  Colors.red,
                    child: Center(
                      child: Text(
                        'Cantidad de canciones: ${args['nro']}',
                        style: const TextStyle(
                          fontSize: 24,
                          
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.3,
                    height: size.height * 1,
                    child: Center(
                      child: Text(
                        args['release_date'],
                        style: const TextStyle(
                          fontSize: 18,
                          
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}