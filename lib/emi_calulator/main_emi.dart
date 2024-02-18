import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const meetemi());
}

class meetemi extends StatefulWidget {
  const meetemi({Key? key}) : super(key: key);

  @override
  State<meetemi> createState() => _meetemiState();
}

class _meetemiState extends State<meetemi> {
  double loanAmount = 100000.0;
  double interestRate = 10.0;
  double loanTenure = 24.0;
  double emi = 0.0;

  double calculateEMI() {
    double principal = loanAmount;
    double rateOfInterest = interestRate / 100 / 12;
    double numberOfPayments = loanTenure;

    double emi = ((principal *
        rateOfInterest *
        pow(1 + rateOfInterest, numberOfPayments)) /
        (pow(1 + rateOfInterest, numberOfPayments) - 1));

    return emi;
  }

  @override
  Widget build(BuildContext context) {
    ThemeData(useMaterial3: true);

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF1A245C),
          title: const Text(
            'EMI Calculator',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          toolbarHeight: 80,
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 0),
              alignment: Alignment.topCenter,
              height: height,
              width: width,
              decoration: const BoxDecoration(
                color: Colors.indigo,
              ),
              child: Column(
                children: [
                  const Text('Your loan EMI is ',style: TextStyle(
                    color: Colors.white70,
                    fontSize: 15,
                  ),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '\u{20B9} ${emi.toStringAsFixed(2)}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 38,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Text('/Month',style: TextStyle(
                          color: Colors.white70,
                        ),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 100,
              child: Container(
                height: height,
                width: width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 50),
                    const Text(
                      'Loan Amount',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      loanAmount.toStringAsFixed(0),
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Slider(
                      value: loanAmount,
                      min: 0.0,
                      max: 200000.0,
                      activeColor:  const Color(0xFF1A245C),
                      divisions: 100,
                      onChanged: (value) {
                        setState(() {
                          loanAmount = value;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      'Interest Rate:',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      ' ${interestRate.toStringAsFixed(0)}%',
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Slider(
                      value: interestRate,
                      min: 1.0,
                      max: 100.0,
                      activeColor: const Color(0xFF1A245C),
                      onChanged: (value) {
                        setState(() {
                          interestRate = value;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      'Loan Tenure: ',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '${loanTenure.toStringAsFixed(0)} Months',
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Slider(
                      value: loanTenure,
                      min: 6.0,
                      max: 60.0,
                      activeColor: const Color(0xFF1A245C),
                      onChanged: (value) {
                        loanTenure = value;
                        setState(() {});
                      },
                    ),

                    const SizedBox(height: 60),

                    InkWell(
                      onTap: () {
                        emi = calculateEMI();
                        setState(() {});
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: height * 0.05,
                        width: width * 0.4,
                        decoration: const BoxDecoration(
                            color: Color(0xFF1A245C),
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                        child: const Text(
                          'Calculate',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}