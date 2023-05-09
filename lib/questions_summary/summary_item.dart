import 'package:flutter/material.dart';
import 'package:quiz/questions_summary/question_identifier.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];

    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      QuestionIdentifier(
          questionIndex: itemData['question_index'] as int,
          isCorrectAnswer: isCorrectAnswer),
      const SizedBox(width: 20),
      Expanded(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(itemData['question'] as String,
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 5),
          Text(itemData['user_answer'] as String,
              style:
                  const TextStyle(color: Color.fromARGB(255, 234, 149, 249))),
          const SizedBox(height: 5),
          Text(itemData['correct_answer'] as String,
              style: const TextStyle(color: Color.fromARGB(255, 158, 189, 243)))
        ]),
      )
    ]);
  }
}
