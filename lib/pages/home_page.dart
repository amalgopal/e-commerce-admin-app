import 'package:flutter/material.dart';
import 'package:foodware_admin/pages/add_product_page.dart';
import 'package:get/get.dart';

class PageHome extends StatelessWidget {
  const PageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title:const Text('Foodware Admin',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: ListView.builder(itemCount: 10,
      itemBuilder: (context,index){
        return Card(
          elevation: 10,
          child: ListTile(
            title: Text('prodect name'),
            subtitle:const Text('data'),
            trailing: IconButton(onPressed: (){}, icon:const Icon(Icons.delete,color: Colors.red,)),
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(onPressed: (){
        print('navigate');
        Get.to( PageAddProduct());
       // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const PageAddProduct()));
      },child:const Icon(Icons.add),),
    );
  }
}