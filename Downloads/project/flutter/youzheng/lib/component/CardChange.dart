import 'package:flutter/material.dart';

class CardChangeView extends StatelessWidget {
  const CardChangeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        const Text(
          "FOR=》AMS",
          style: TextStyle(fontSize: 20),
        ),
        Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "05:00",
                style: TextStyle(fontSize: 28),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text("--3h 05--"),
              ),
              Text("12:00", style: TextStyle(fontSize: 28)),
            ],
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("05:00", style: TextStyle(fontSize: 28)),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text("--3h 05--"),
              ),
              Text("12:00", style: TextStyle(fontSize: 28)),
            ],
          ),
        ),
        Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(
                child: ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 229, 230, 233)),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                  textStyle: MaterialStateProperty.all(const TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(255, 213, 215, 224)))),
              child: const Text(
                "Began to Travel",
                style: TextStyle(color: Color.fromARGB(255, 30, 18, 166)),
              ),
              onPressed: () {},
            ))
          ],
        )
      ]),
    );
  }
}
