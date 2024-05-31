import 'package:flutter/material.dart';
import 'package:naruto_trove/model.dart';
import 'package:naruto_trove/normal_card.dart';

import 'api_handler.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApiHandler apiHandler = ApiHandler();
  late List<CharacterElement> data = [];

  void getData() async {
    data = await apiHandler.getCharacterData();
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter API"),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      // bottomNavigationBar: MaterialButton(
      //   color: Colors.teal,
      //   textColor: Colors.white,
      //   padding: const EdgeInsets.all(20),
      //   onPressed: () {
      //     getData();
      //     print(data.length);
      //   },
      //   child: const Text('Refresh'),
      // ),
      // floatingActionButton: Column(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   children: [
      //     FloatingActionButton(
      //       heroTag: 1,
      //       backgroundColor: Colors.teal,
      //       foregroundColor: Colors.white,
      //       onPressed: () {},
      //       child: const Icon(Icons.search),
      //     ),
      //     const SizedBox(
      //       height: 10,
      //     ),
      //     FloatingActionButton(
      //       heroTag: 2,
      //       backgroundColor: Colors.teal,
      //       foregroundColor: Colors.white,
      //       onPressed: () {},
      //       child: const Icon(Icons.add),
      //     )
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return MySquare(
                  image: '${data[index].images.firstOrNull}',
                  Name: '${data[index].name}',
                  Education: '${data[index].family?.mother}',
                  Qualifications: '${data[index].family?.father}',

                );
                // return ListTile(
                //   onTap: () {},
                //   leading: Text("${data[index].id}"),
                //   title: Text("${data[index].name}"),
                //   subtitle: Image.network(
                //     "${data[index].images.firstOrNull}",
                //     height: 90,
                //     width: 100,
                //   ),
                //   trailing: Text("${data[index].family?.mother}"),
                //   // subtitle: Text("${data[index].total}"),
                //   // trailing: IconButton(
                //   //   icon: const Icon(Icons.delete_outline),
                //   //   onPressed: () {},
                //   // ),
                // );
              },
            )
          ],
        ),
      ),
    );
  }
}