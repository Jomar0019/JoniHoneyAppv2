import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          _searchBar(),

          SizedBox(height: 20),

          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(height: 12),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Color(0xff1d1617).withOpacity(.11),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(12),
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          "assets/images/HCH.png",
                          fit: BoxFit.cover,
                        ),
                      ),

                      SizedBox(width: 12),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "His Cold Heart",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Sample Summary",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(fontSize: 14, color: Colors.black54),
                            ),

                            Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.visibility_rounded, size: 18, color: Colors.black54,),
                                    SizedBox(width: 6),
                                    Text('10K', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),),
                                  ],
                                ),

                                SizedBox(width: 20),

                                Row(
                                  children: [
                                    Icon(Icons.comment_rounded, size: 18, color: Colors.black54,),
                                    SizedBox(width: 6),
                                    Text('2.3K', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),),
                                  ],
                                ),

                                SizedBox(width: 20),

                                Row(
                                  children: [
                                    Icon(Icons.list_rounded, size: 18, color: Colors.black54,),
                                    SizedBox(width: 6),
                                    Text('32', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Container _searchBar() {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xff1d1617).withValues(alpha: .10),
            blurRadius: 6,
            spreadRadius: 0,
          ),
        ],
        borderRadius: BorderRadius.circular(0),
      ),

      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12),
            child: Icon(Icons.search_rounded, size: 32),
          ),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}