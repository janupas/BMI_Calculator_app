import 'package:flutter/material.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        FirstScreen.routeName: (context) => const FirstScreen(),
        SecondScreen.routeName: (context) => const SecondScreen(),
      },
      theme: ThemeData(fontFamily: 'Manrope'),
      color: Colors.blueGrey[800],
    );
  }
}

// First screen
class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  static const routeName = '/';

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

// Gender enum
enum Gender { male, female }

class _FirstScreenState extends State<FirstScreen> {
  Gender gender = Gender.male;
  double height = 0.0;
  double bmi = 0.0;
  int weight = 50;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'BMI CALCULATOR',
            style: TextStyle(fontSize: 22),
          ),
        ),
        backgroundColor: const Color(0xff1d2136),
      ),
      body: Container(
        color: const Color(0xff1d2136),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: SizedBox(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      gender = Gender.male;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(6),
                                      ),
                                      color: gender == Gender.male
                                          ? const Color(0xff323244)
                                          : const Color(0xff24263b),
                                    ),
                                    height: 200,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          Icons.male,
                                          color: Colors.white,
                                          size: 80,
                                        ),
                                        Text(
                                          'MALE',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 18),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      gender = Gender.female;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(6),
                                      ),
                                      color: gender == Gender.female
                                          ? const Color(0xff323244)
                                          : const Color(0xff24263b),
                                    ),
                                    height: 200,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          Icons.male,
                                          color: Colors.white,
                                          size: 80,
                                        ),
                                        Text(
                                          'FEMALE',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 18),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(6),
                            ),
                            color: Color(0xff323244),
                          ),
                          height: 200,
                          width: double.infinity,
                          margin: const EdgeInsets.only(top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Text(
                                'HIEGHT',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '${height.toInt()}',
                                    style: const TextStyle(
                                        fontSize: 40,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    'cm',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Slider(
                                min: 0.0,
                                max: 300.0,
                                value: height,
                                onChanged: (value) {
                                  setState(() {
                                    height = value;
                                  });
                                },
                                inactiveColor: Colors.white,
                                activeColor: const Color(0xffe83d66),
                                thumbColor: const Color(0xffe83d66),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(6),
                                    ),
                                    color: Color(0xff323244),
                                  ),
                                  height: 250,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        'WEIGHT',
                                        style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Text(
                                        '$weight',
                                        style: const TextStyle(
                                          fontSize: 40,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.all(5),
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(50),
                                                ),
                                                color: Color(0xff5d5f6e),
                                              ),
                                              child: IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    weight -= 1;
                                                  });
                                                },
                                                icon: const Icon(
                                                  Icons.remove,
                                                ),
                                                color: Colors.white,
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.all(5),
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(50),
                                                ),
                                                color: Color(0xff5d5f6e),
                                              ),
                                              child: IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    weight += 1;
                                                  });
                                                },
                                                icon: const Icon(
                                                  Icons.add,
                                                ),
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(6),
                                    ),
                                    color: Color(0xff323244),
                                  ),
                                  height: 250,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        'AGE',
                                        style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Text(
                                        '$age',
                                        style: const TextStyle(
                                          fontSize: 40,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.all(5),
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(50),
                                                ),
                                                color: Color(0xff5d5f6e),
                                              ),
                                              child: IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    age -= 1;
                                                  });
                                                },
                                                icon: const Icon(
                                                  Icons.remove,
                                                ),
                                                color: Colors.white,
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.all(5),
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(50),
                                                ),
                                                color: Color(0xff5d5f6e),
                                              ),
                                              child: IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    age += 1;
                                                  });
                                                },
                                                icon: const Icon(
                                                  Icons.add,
                                                ),
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 70,
              width: double.infinity,
              color: Colors.white,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffe83d66),
                ),
                onPressed: () {
                  setState(() {
                    bmi = weight / ((height / 100) * (height / 100));
                    Navigator.pushNamed(
                      context,
                      SecondScreen.routeName,
                      arguments: SecondScreenArguments(bmi.toStringAsFixed(1)),
                    );
                  });
                },
                child: const Text(
                  'CALCULATE',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreenArguments {
  final String bmi;

  const SecondScreenArguments(this.bmi);
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  static const routeName = '/bmi';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as SecondScreenArguments;

    String status = '';
    String description = '';

    if (double.parse(args.bmi) > 25) {
      status = 'OVER WEIGHT';
      description = "Your BMI indicates that you may be overweight.";
    }

    if (double.parse(args.bmi) < 18.5) {
      status = 'UNDER WEIGHT';
      description = "Your BMI indicates that you may be underweight.";
    }

    if (double.parse(args.bmi) >= 18.5 && double.parse(args.bmi) <= 24.9) {
      status = 'NORMAL';
      description = 'Your BMI is normal, Enjoy.';
    }

    return Scaffold(
      body: Container(
        color: const Color(0xff1d2136),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: 100,
                    child: const Text(
                      'Your Result',
                      style: TextStyle(
                          fontSize: 38,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color(0xff323244),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 100),
                              child: Text(
                                status,
                                style: TextStyle(
                                  color: Colors.green[500],
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Text(
                              args.bmi,
                              style: const TextStyle(
                                  fontSize: 70,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 100),
                                child: Center(
                                  child: Text(
                                    description,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 70,
              width: double.infinity,
              color: Colors.white,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffe83d66),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'RE-CALCULATE',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
