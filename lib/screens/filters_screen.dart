import 'package:flutter/material.dart';
import 'package:meals_app/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = "/filters";

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  Widget buildSwithchs(
      {String title, String subtitle, Function switchChange, bool value}) {
    return SwitchListTile(
      title: Text(title),
      value: value,
      subtitle: Text(subtitle),
      onChanged: switchChange,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text('Adjust your meal selection',
                style: Theme.of(context).textTheme.title),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                buildSwithchs(
                    title: "Gluten-free",
                    subtitle: "Only include gluten free dishes",
                    value: _glutenFree,
                    switchChange: (newValue) {
                      setState(() {
                        _glutenFree = newValue;
                      });
                    }),
                buildSwithchs(
                    title: "Lactose-free",
                    subtitle: "Only include lactose free dishes",
                    value: _lactoseFree,
                    switchChange: (newValue) {
                      setState(() {
                        _lactoseFree = newValue;
                      });
                    }),
                buildSwithchs(
                    title: "Vegetarian",
                    subtitle: "Only include vegetarian meals",
                    value: _vegetarian,
                    switchChange: (newValue) {
                      setState(() {
                        _vegetarian = newValue;
                      });
                    }),
                buildSwithchs(
                    title: "Vegan",
                    subtitle: "Only include vegan meals",
                    value: _vegan,
                    switchChange: (newValue) {
                      setState(() {
                        _vegan = newValue;
                      });
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
