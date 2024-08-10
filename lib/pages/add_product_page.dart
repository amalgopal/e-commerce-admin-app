import 'package:flutter/material.dart';
import 'package:foodware_admin/widgets/drop_down_btn.dart';

class PageAddProduct extends StatelessWidget {
  const PageAddProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon:const Icon(Icons.arrow_back_ios_new_rounded)),
        title:const Text('Add Product'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin:const EdgeInsets.all(10) ,
          child: Column(
            children: [
             const Text('Add New Product',style: TextStyle(fontSize: 30,),),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                label:const Text('Product Name'),
                hintText: 'Enter Your Product Name'
              ),
            ),
           const SizedBox(height: 10,),
             TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                label:const Text('Product Description'),
                hintText: 'Enter Your Product Description',
              ),
              maxLines: 4,
            ),
           const SizedBox(height: 20,),
             TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                label:const Text('Image Url'),
                hintText: 'Enter Your Image Url'
              ),
            ),
           const SizedBox(height: 20,),
             TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                label:const Text('Product Price'),
                hintText: 'Enter Your Product Price'
              ),
            ),
           const SizedBox(height: 20,),
          const  Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(child: DropDownBtn()),
                Flexible(child: DropDownBtn()),
              ],
            ),
            const SizedBox(height: 20,),
            const Text('Offer Product'),
            const SizedBox(height: 20,),
           const DropDownBtn()
            ],
          ),
        ),
      ) ,
    );
  }
}

