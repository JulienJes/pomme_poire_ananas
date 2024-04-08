import 'package:flutter/material.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyList();

  void setState(Null Function() param0) {}
}

class _MyList extends State<MyList> {
  int _line = 0;

  void _addLine() {
    setState(() {
      _line++;
    });
  }

  bool isPrime(number) {
    if (number < 2) return false;
    for (var i = 2; i * i <= number; i++) {
      if (number % i == 0) return false;
    }
    return true;
  }

  bool isEven(number) => number % 2 == 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Ligne $_line, Type : ${isPrime(_line) ? 'Nombre premier' : isEven(_line) ? 'Pair' : 'Impair'}'),
      ),
      body: ListView.builder(
        itemCount: _line,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Row(
              children: <Widget>[
                isPrime(index)
                    ? Image.asset('images/ananas.png', height: 40)
                    : isEven(index)
                        ? Image.asset('images/poire.png', height: 40)
                        : Image.asset('images/pomme.png', height: 40),
                Text('$index',
                    style: const TextStyle(
                      color: Colors.white,
                    )),
              ],
            ),
            tileColor: isEven(index) ? Colors.indigo : Colors.cyan,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addLine,
        tooltip: 'Add line',
        backgroundColor: _line == 0
            ? Colors.orange
            : (isEven(_line) ? Colors.indigo : Colors.cyan),
        child: const Text(
          '+',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
