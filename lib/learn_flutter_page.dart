import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  var isSwitched = false;
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn Flutter"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_sharp)),
        actions: [IconButton(onPressed: (){debugPrint("Actions...");}, icon: const Icon(Icons.info_outline))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('./images/einstein.jpeg'),
            const SizedBox(height: 10),
            const Divider(color: Colors.black),
            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.indigoAccent,
              width: double.infinity,
              child: const Center(
                child: Text(
                  "This is a Text Widget",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.orange),
                onPressed: () {
                  debugPrint("Elevated Button");
                },
                child: const Text("Elevated Button")),
            OutlinedButton(
                onPressed: () {
                  debugPrint("Outlined Button");
                },
                child: const Text("Outlined Button")),
            TextButton(
                onPressed: () {
                  debugPrint("Text Button");
                },
                child: const Text("Text Button")),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint("This is the Row");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.yellow,
                  ),
                  Text("Row Widget"),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.yellow,
                  ),
                ],
              ),
            ),
            Switch(
                value: isSwitched,
                onChanged: (newBool) {
                  setState(() {
                    isSwitched = newBool;
                  });
                }),
            Checkbox(
                value: isChecked,
                onChanged: (newBool) {
                  setState(() {
                    isChecked = newBool;
                  });
                }),
            const Image(
              image: NetworkImage(
                  "https://helpx.adobe.com/content/dam/help/en/photoshop/using/convert-color-image-black-white/jcr_content/main-pars/before_and_after/image-before/Landscape-Color.jpg"),
            ),
          ],
        ),
      ),
    );
  }
}
