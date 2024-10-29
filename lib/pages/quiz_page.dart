import 'package:flutter/material.dart';
import '../models/quiz_model.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentQuestionIndex = 0;
  int score = 0;
  List<QuizQuestion> questions = [
    QuizQuestion(
      question: "Qual é o principal objetivo de um ataque de phishing?",
      options: [
        "Roubar credenciais",
        "Corromper dados",
        "Desativar sistemas",
        "Fazer backup de dados"
      ],
      correctOptionIndex: 0,
      explanation:
          "O phishing é uma técnica usada para enganar os usuários e roubar suas credenciais.",
    ),
    QuizQuestion(
      question: "Qual medida ajuda a prevenir ataques de ransomware?",
      options: [
        "Utilizar um firewall",
        "Manter backup regular de dados",
        "Desativar senhas",
        "Usar redes públicas"
      ],
      correctOptionIndex: 1,
      explanation:
          "Manter backups regulares de dados é uma das formas mais eficazes de combater ransomware.",
    ),
    // Adicionar mais perguntas conforme necessário
  ];

  void checkAnswer(int selectedOptionIndex) {
    if (selectedOptionIndex ==
        questions[currentQuestionIndex].correctOptionIndex) {
      score++;
    }

    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      _showScore();
    }
  }

  void _showScore() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Resultado'),
        content: Text('Você acertou $score de ${questions.length} perguntas.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              setState(() {
                currentQuestionIndex = 0;
                score = 0;
              });
            },
            child: const Text('Refazer Quiz'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Interativo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              questions[currentQuestionIndex].question,
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 20),
            ...questions[currentQuestionIndex].options.map((option) {
              int index =
                  questions[currentQuestionIndex].options.indexOf(option);
              return ElevatedButton(
                onPressed: () => checkAnswer(index),
                child: Text(option),
              );
            }),
          ],
        ),
      ),
    );
  }
}
