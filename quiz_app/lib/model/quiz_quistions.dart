// ignore: camel_case_types
class question {
  String _question;
  String _answer;
  List<String> choices;

  question(this._question, this._answer, this.choices);

  get quest => _question;
  get answer => _answer;
  List get_choices() {
    return choices;
  }
}
