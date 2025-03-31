

import 'package:flutter/material.dart';
class CurrencyConvMaterialPage extends StatefulWidget {
   const CurrencyConvMaterialPage({super.key});
  @override 
  State<CurrencyConvMaterialPage> createState() => _CurrencyConvMaterialPageState();
    
}
class _CurrencyConvMaterialPageState extends State<CurrencyConvMaterialPage>{
    double result = 0;

  @override
  Widget build(BuildContext context) {
    print('build');
    final TextEditingController textEditingController = TextEditingController();
    return Container(
      
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                result.toString(), 
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0)),
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: textEditingController,
                showCursor: true,
                decoration: InputDecoration(
                  prefixIcon: Padding(padding: EdgeInsets.all(10)),
                  hintText: "Enter Amount in INR"),
              ),
              ElevatedButton(
                onPressed: () {
                  result = double.parse(textEditingController.text)*81;
                },
                child: Text("Convert"),
              )
            ]),
      ),
    );
  }
}
