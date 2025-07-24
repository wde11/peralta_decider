import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  Widget _buildQuestionForm() {
    return Column(
      children: [
        Text("Should I",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Padding(padding: const EdgeInsets.only(
          bottom: 10.0,
          left: 30.0,
          right: 30.0

          )
        ),
        TextField(
          decoration: InputDecoration(
            helperText: "Enter a Question",
          ),
        ),
        ElevatedButton(
          onPressed: () {print("Clicked");
          },
          child: Text("Ask"),
        )
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Decider App"),
        backgroundColor: Colors.blueAccent,
        actions: [

          Padding(
            padding: const EdgeInsets.only(right: 28.01),
              child: GestureDetector(
                onTap: (){},
                child: Icon(
                  color: Colors.white,
                  Icons.shopping_bag,
                  size: 39.2,
                )
              ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.00),
              child: GestureDetector(
                onTap: (){},
                child: Icon(
                  color: Colors.white,
                  Icons.history,
                ),
              )
          ),
        ],
      ),
      body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column (
              children: [
                Padding(
                padding: const EdgeInsets.all(0.0),
                child: Text("Decisions Left ##"),
                ),
                Spacer(),
                _buildQuestionForm(),
                Spacer(),
                Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Text('Account Type: Free'),
      )
              ]
            )
          )
      )
    );
  }
}

