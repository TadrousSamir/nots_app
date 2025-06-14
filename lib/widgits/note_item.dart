import 'package:flutter/material.dart';

class NoteItem  extends StatelessWidget {
  const NoteItem ({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context,index){
      return Container(
        margin:const EdgeInsets.only(bottom: 16,) ,
            padding: const EdgeInsets.only(left: 16,top: 24,bottom: 24,),
            decoration: BoxDecoration(
              color:const Color(0xffFFCC80),
              borderRadius: BorderRadius.circular(16)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title: Text("Flutter Tips",style: TextStyle(color: Colors.black,fontSize: 24),),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Text("Tadroous Samir Hanna Ghaly",style: TextStyle(color: Colors.black.withOpacity(.5),fontSize: 18)),
                  ),
                  trailing: IconButton(onPressed: (){}, icon:const Icon(Icons.delete,size: 30,),color: Colors.black,),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Text("May 21, 2022",style: TextStyle(color: Colors.black.withOpacity(.5)),),
                )
              ],
            ),
          );
    });



  }
}
