import 'package:flutter/material.dart';
import 'package:interview_task/components/custom_textfield.dart';
import 'package:interview_task/provider/home_provider.dart';
import 'package:interview_task/screens/home_screen/widgets/custom_home_gridview.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<HomeScreenProvider>(
        builder: (context, homeScreenProvider, child) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Home Page',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 23),
                      ),
                      Icon(Icons.notifications)
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // search box design
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Theme.of(context).colorScheme.inversePrimary,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Search',
                            style: TextStyle(
                              color:
                                  Theme.of(context).colorScheme.inversePrimary,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HomeGridView(
                        color: Colors.amber,
                        icon: Icons.category_rounded,
                        title: 'Category',
                      ),
                      HomeGridView(
                        color: Colors.teal,
                        icon: Icons.play_circle,
                        title: 'Class',
                      ),
                      HomeGridView(
                        color: Colors.blue,
                        icon: Icons.book,
                        title: 'Fee Course',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HomeGridView(
                        color: Colors.pink.shade400,
                        icon: Icons.store,
                        title: 'Bookstore',
                      ),
                      HomeGridView(
                        color: Colors.deepPurple.shade400,
                        icon: Icons.card_giftcard_outlined,
                        title: 'Live Course',
                      ),
                      HomeGridView(
                        color: Colors.green,
                        icon: Icons.curtains_sharp,
                        title: 'Leaderboard',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Recomented Course',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19),
                      ),
                      Text(
                        'more',
                        style: TextStyle(
                            fontSize: 12,
                            color:
                                Theme.of(context).colorScheme.inversePrimary),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  CustomTextField(
                    hintText: 'Data',
                    obscureText: false,
                    controller: homeScreenProvider.detailsController,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  TextButton(
                    onPressed: () {
                     homeScreenProvider = Provider.of<HomeScreenProvider>(context, listen: false);
                      homeScreenProvider.detailsController.text.isEmpty
                      ? null 
                      : homeScreenProvider.dataSubmit(homeScreenProvider.detailsController.text.trim());
                      print(homeScreenProvider.newList);
                    }, child: Text('Submit',style: TextStyle(
                      color: const Color.fromARGB(255, 98, 102, 104)
                    ),)),

                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: homeScreenProvider.newList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Text(homeScreenProvider.newList[index]),
                        trailing: IconButton(
                          onPressed: (){
                            homeScreenProvider.removeFromList(index);
                          },
                          icon: Icon(Icons.delete,
                          color: Colors.red,),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
