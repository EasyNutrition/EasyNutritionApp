import 'package:flutter/material.dart';

class RadioGroupConsulting extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RadioGroupConsultingState();
}

class ConsultingList{
  String name;
  int index;
  ConsultingList({required this.name, required this.index});
}
class _RadioGroupConsultingState extends State<RadioGroupConsulting>{

  String radioItem = 'Nutrición clínica';
  int id = 1;
  List<ConsultingList> cList = [
    ConsultingList(name: "Nutrición clínica", index: 1),
    ConsultingList(name: "Nutrición para aumento de masa muscular", index: 2),
    ConsultingList(name: "Nutrición para bajar de peso", index: 3),
    ConsultingList(name: "Sobrepeso y obesidad", index: 4),
  ];

  Widget build(BuildContext context){
    return Container(
        child:Column(
          children: <Widget> [
            Container(
              child: Column(
                  children:
                  cList.map((data) => RadioListTile(
                    title: Text(data.name),
                    value: data.index,
                    groupValue: id,
                    onChanged: (val){
                      setState(() {
                        radioItem = data.name;
                        id = data.index;
                        print(radioItem);
                      });
                    },)).toList()
              ),
            )
          ],
        )
    );
  }
}