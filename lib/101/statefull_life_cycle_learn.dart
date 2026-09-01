import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({super.key, required this.message});
  final String message;
  @override
  State<StatefullLifeCycleLearn> createState() =>
      _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState
    extends State<StatefullLifeCycleLearn> {
  String _message = "";
  late final bool _isOdd;
  //kurucu metot anında değer atamsı late olur final statelessda yazılır.

  //initstate çağrıldıktan sonra çağrılır sayfa buil olmdan
  //tekrar çağrılma ihtimali var.
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  //sayfada mainden gelen reguard yenildendiğinde çağrılır
  //üst class dan çağrılır.
  @override
  void didUpdateWidget(covariant StatefullLifeCycleLearn oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  //sayfadan çıktığı andır sayfanın öldğü andır.
  @override
  void dispose() {
    super.dispose();
  }

  //sayfa build olmdan çağrılır.
  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeritem();
  }

  void _computeritem() {
    if (_isOdd) {
      _message += "Tek";
    } else {
      _message += "Çift";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_message)),

      body: widget.message.length.isOdd
          ? TextButton(onPressed: () {}, child: Text(_message))
          : ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 175, 55, 55),
              ),
              child: Text(_message),
            ),
    );
  }
}
