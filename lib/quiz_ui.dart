import 'package:flutter/material.dart';

class QuizUI extends StatefulWidget {
  const QuizUI({super.key});

  @override
  State<QuizUI> createState() => _QuizUIState();
}

class _QuizUIState extends State<QuizUI> {
  int questionIndex = 0;
  bool questionScreen = true;
  List<Map> allQuestions = [
    {
      "question": "Flutter is developed by .... ?",
      "options": ["Meta", "Microsoft", "Google", "OpenAI"],
      "answerIndex": 2,
    },
    {
      "question":
          "Which of the following language is used to build flutter app?",
      "options": [
        "Java",
        "Dart",
        "Go",
        "React",
      ],
      "answerIndex": 1,
    },
    {
      "question": "What are the features of Flutter?",
      "options": [
        "Fast development",
        "Huge widget catalog",
        "High-performance",
        "All of the above"
      ],
      "answerIndex": 3,
    },
    {
      "question": "Flutter have mainly .... types of widgets?",
      "options": ["Three", "Two", "One", "Four"],
      "answerIndex": 1,
    },
    {
      "question":
          "Which of the following option is represent a collection of objects in Dart?",
      "options": ["String", "Numbers", "Booleans", "Lists and Maps"],
      "answerIndex": 3,
    },
  ];

  Scaffold isQuestionScreen() {
    if (questionScreen == true) {
      return Scaffold(
        backgroundColor: Colors.deepPurple.shade100,
        appBar: AppBar(
          title: const Text(
            "Quizz App",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple.shade300,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "Question's : ",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "${questionIndex + 1} / ${allQuestions.length}",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 70,
                  width: 400,
                  child: Text(
                    (allQuestions[questionIndex]["question"]),
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
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
              height: 20,
            ),
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
              height: 20,
            ),
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
              height: 18,
            ),
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          hoverColor: Colors.deepPurpleAccent,
          backgroundColor: Colors.deepPurple.shade300,
          child: const Icon(Icons.double_arrow_rounded),
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
