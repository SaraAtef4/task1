import 'dart:io';

import 'package:cat_task/cat_task.dart' as cat_task;

void main(List<String> arguments) {
  // take input from user
  print('please enter a sentence');
  String sentence= stdin.readLineSync();
  if (sentence!=null&&sentence.isNotEmpty) {
    // print the result
    String output = reversWords(sentence);
    print(output);
  } else {
    print('there is no input');
  }
}

String reversWords(String sent) {
  // split the sentece into words
  List<String> wordsList = [];
  String word = '';
  String reversedSent = '';
  for (int i = 0; i < sent.length; i++) {
    if (sent[i] != " ") {
      word += sent[i];
    } else {
      wordsList.add(word);
      word = '';
    }
  }
  if (word.isNotEmpty) {
    wordsList.add(word);
  }

  // reverse the sentece
  for (int i = wordsList.length - 1; i >= 0; i--) {
    reversedSent += wordsList[i];
    if (i >0) {
      reversedSent += ' ';
    }
  }
  return reversedSent;
}
