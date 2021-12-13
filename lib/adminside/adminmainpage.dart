import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sahoolar_bazar/adminside/Check_out.dart';
import 'package:sahoolar_bazar/adminside/addcategry.dart';
import 'package:sahoolar_bazar/adminside/addproducts/showmaincaetgory.dart';
import 'package:sahoolar_bazar/adminside/delete/maincategory.dart';
import 'package:sahoolar_bazar/adminside/update/category%20update/maincategory.dart';
import 'package:sahoolar_bazar/adminside/update/maincategory.dart';
import 'package:sahoolar_bazar/constants/constants.dart';
import 'addproducts/addproductAdminPage.dart';
import 'adminlogin.dart';

class AdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ADMIN AREA'),
        elevation: 0.0,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              auth.signOut().whenComplete(() => Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (c) => AdminLoginPage()),
                  (route) => false));
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => Addcategroies()));
                    },
                    child: Container(
                      width: 160,
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.blue[200],
                            Colors.red[300],
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'ADD SUB CATEGORY',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => ShowAdminMainCategoryPage()));
                  },
                  child: Container(
                    width: 160,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.blue[200],
                          Colors.red[300],
                        ],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'ADD PRODUCTS',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => MainCategory()));
                    },
                    child: Container(
                      width: 160,
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.blue[200],
                            Colors.red[300],
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'UPDATE SUB CATEGORY',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Checkout(),
                      ),
                    );
                  },
                  child: Container(
                    width: 160,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.blue[200],
                          Colors.red[300],
                        ],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Check Out Your Products",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => MainProductCategory()));
                    },
                    child: Container(
                      width: 160,
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.blue[200],
                            Colors.red[300],
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Update Category',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => MainCategoryDelete()));
                  },
                  child: Container(
                    width: 160,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.blue[200],
                          Colors.red[300],
                        ],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Delete Sub Category Product',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection("category")
                        .where("category")
                        .snapshots(),
                    builder: (BuildContext context,
                        AsyncSnapshot<QuerySnapshot> snapshot) {
                      if (snapshot.hasError) {
                        return Text("Something went wrong");
                      }
                      if (!snapshot.hasData) {
                        return Center(child: CircularProgressIndicator());
                      }
                      final data = snapshot.data.docs;
                      return Container(
                        child: Text('Total Products ${data.length}'),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
