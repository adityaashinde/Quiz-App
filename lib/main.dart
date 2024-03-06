import 'package:flutter/material.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  bool questionScreen = true;
  int questionIndex = 0;
  List<Map> allQuestions = [
    {
      "question": "Who is the Founder of Microsoft?",
      "options": ["Bill Gates", "Jeff Bezos", "Elon Musk", "Steve Jobs"],
      "answerIndex": 0,
    },
    {
      "question": "Founder of Amazon?",
      "options": ["Bill Gates", "Jeff Bezos", "Elon Musk", "Steve Jobs"],
      "answerIndex": 1,
    },
    {
      "question": "Founder of SpaceX?",
      "options": ["Bill Gates", "Jeff Bezos", "Elon Musk", "Steve Jobs"],
      "answerIndex": 2,
    },
    {
      "question": "Founder of Tesla?",
      "options": ["Bill Gates", "Jeff Bezos", "Elon Musk", "Steve Jobs"],
      "answerIndex": 2,
    },
    {
      "question": "Founder of Apple?",
      "options": ["Bill Gates", "Jeff Bezos", "Elon Musk", "Steve Jobs"],
      "answerIndex": 3,
    },
  ];

  Scaffold isQuestionScreen() {
    if (questionScreen == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quizz App",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        backgroundColor: Colors.deepPurple.shade200,
        body: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Question's : ",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "${questionIndex + 1}/${allQuestions.length}",
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 350,
                  height: 50,
                  child: Text(
                    (allQuestions[questionIndex]["question"]),
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),

            // A
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "A. ${allQuestions[questionIndex]["options"][0]}",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            // B
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "B. ${allQuestions[questionIndex]["options"][1]}",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            // C
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "C. ${allQuestions[questionIndex]["options"][2]}",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            // D
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "D. ${allQuestions[questionIndex]["options"][3]}",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        // Next
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          hoverColor: Colors.deepPurple,
          child: const Icon(Icons.arrow_forward),
        ),
      );
    } else {
      return const Scaffold();
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}
