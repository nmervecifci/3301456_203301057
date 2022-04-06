import 'package:flutter/material.dart';


void main() {
  runApp(const BenimUygulamam());
  }
      class BenimUygulamam extends StatelessWidget {
        const BenimUygulamam({Key? key}) : super(key: key);
      
        @override
        Widget build(BuildContext context) {
          return MaterialApp(
            home:Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: Colors.white,
                centerTitle: true,
                  title:const  Text('Kitap Tanitimleri',
                      style:TextStyle(color:Colors.black),
                  ),
            ),
              body: KitapSayfasi(),
          ),
          );

        }
      }
      class KitapSayfasi extends StatefulWidget {
        KitapSayfasi({Key? key}) : super(key: key);

  @override
  State<KitapSayfasi> createState() => _KitapSayfasiState();
}

class _KitapSayfasiState extends State<KitapSayfasi> {
         int kitapNo1=1;

         int kitapNo2=2;

         int kitapNo3=3;

        @override
        Widget build(BuildContext context) {
          return Center(
            child:Column(
              children: <Widget>[
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child :TextButton (
                      onPressed:() {
                        setState(() {
                          kitapNo1= kitapNo1+1;
                        });
                        },
                      child: Image.asset('assets/SodaPDF-converted-images ($kitapNo1).jpg')),
                ),
                ),
               const  Text('READ ',
                    style:TextStyle(fontSize: 40,color: Colors.blue),
               ),
                Container(
                  width:150,
                   child:const Divider(
                    height:4,
                    color:Colors.black,
                  ),
                ),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextButton(
                   onPressed: () {
                     setState(() {
                       kitapNo2=kitapNo2+1;
                     });
                   },
                      child:Image.asset('assets/SodaPDF-converted-images ($kitapNo2).jpg')),
                ),
                ),
                const  Text('A ',
                  style:TextStyle(fontSize: 40,color: Colors.blueAccent),
                ),
                Container(
                  width:150,
                  child:const Divider(
                    height:4,
                    color:Colors.black,
                  ),
                ),
                  Expanded(child: Padding(
                  padding: const EdgeInsets.all(12.0),
                    child:TextButton(
                    onPressed: () {
                      setState(() {
                        kitapNo3=kitapNo3+1;
                      });
                     },
                          child: Image.asset('assets/SodaPDF-converted-images ($kitapNo3).jpg')),
                  ),
                  ),
                const  Text('BOOK ',
                  style:TextStyle(fontSize: 40,color: Colors.blue),
                ),
                Container(
                  width:150,
                  child:const Divider(
                    height:4,
                    color:Colors.black,
                  ),
                ),

              ],

            ),
          );
        }
}

