//import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:mapa/map_marker.dart';
import 'package:geolocator/geolocator.dart';

const MAPBOX_ACESS_TOKER = 'pk.eyJ1IjoicGl0bWFjIiwiYSI6ImNsY3BpeWxuczJhOTEzbnBlaW5vcnNwNzMifQ.ncTzM4bW-jpq-hUFutnR1g';
const MAPBOX_STYLE = 'mapbox/dark-v10';
const MARKER_COLOR = Color.fromARGB(255, 25, 44, 168);

//final _myLocation =LatLng(-12.0362176, -77.0296812);

class AnimatedMarkersMap extends StatefulWidget{
  const AnimatedMarkersMap({super.key});

  @override
  State<AnimatedMarkersMap> createState() => _AnimatedMarkersMapState();
}

class _AnimatedMarkersMapState extends State<AnimatedMarkersMap> {
  LatLng? myPosition;
  final _pageController = PageController();
  bool isDetailsVisible = false;
  String selectedCategory = '';
  Future<Position> determinePosition() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('error');
      }
    }
    return await Geolocator.getCurrentPosition();
  }

  void getCurrentLocation() async {
    Position position = await determinePosition();
    setState(() {
      myPosition = LatLng(position.latitude, position.longitude);
      
    });
  }

  @override
  void initState() {
    getCurrentLocation();
    super.initState();
  }
  List<Marker> _buildMarkers(){
    final _markerList =<Marker>[];
    for(int i = 0; i<mapMarkers.length;i++){
      final mapItem = mapMarkers[i];
      if(selectedCategory.isEmpty || mapItem.categoria == selectedCategory) {
      _markerList.add(
        Marker(
          height: 50 ,
          width: 50,
          point: mapItem.location,
          builder:(_){
            return GestureDetector(
              onTap: (){
                setState(() {
                  isDetailsVisible = true;
                });
                print('selected: ${mapItem.title}');
                _pageController.animateToPage(i,duration: const Duration(milliseconds:100),curve: Curves.bounceIn);
              },
              child: Image.asset('img_tiendas.png'),
            );
          },
        ),
      );
      }
    }
    return _markerList;
  }
 
 
  
  @override
  Widget build(BuildContext context) {
    final  _markers =_buildMarkers();
    return Scaffold(
      drawer:  Drawer(  // DRAWER
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text('MENU'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ), 
            ),
            ListTile(
              title: DropdownButton<String>(
                value: selectedCategory,
                items: const [
                  DropdownMenuItem<String>(
                    value: '', // Valor vacío para mostrar todas las categorías
                    child: Text('Todas las categorías'),
                    ),
                  DropdownMenuItem<String>(
                    value: 'Moda',
                    child: Text('Moda'),
                    ),
                  DropdownMenuItem<String>(
                    value: 'Electrónica',
                    child: Text('Electrónica'),
                    ),
                  DropdownMenuItem<String>(
                    value: 'Alimentos',
                    child: Text('Alimentos'),
                    ),
                  DropdownMenuItem<String>(
                    value: 'Deportes',
                    child: Text('Deportes'),
                    ),
                  DropdownMenuItem<String>(
                    value: 'Hogar',
                    child: Text('Hogar'),
                    ),
                ], 
                onChanged: (String? newValue) {
                   setState(() {
                    selectedCategory = newValue ?? ''; // Actualiza la categoría seleccionada
                    Navigator.pop(context); // Cierra el Drawer
                    isDetailsVisible = false;
                   });
                }
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('TAINID'),
        backgroundColor: Colors.blueAccent,
        
      ),
      body: Stack(
    children: [   
       myPosition == null
      ? const CircularProgressIndicator()
      : FlutterMap(
          options: MapOptions(
            minZoom: 5,
            maxZoom: 16,
            zoom: 13,
            center: myPosition,
          ),
          nonRotatedChildren: [
            TileLayer(
              urlTemplate:
              'https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}',
              additionalOptions: const {
                'accessToken': MAPBOX_ACESS_TOKER,
                'id': 'mapbox/streets-v12'    //cambiar diseño del mapa
              },
            ),
              MarkerLayer(
                markers: _markers,
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point: myPosition!,
                    builder: (context) {
                      return const Icon(
                        Icons.person_pin,
                        color: Colors.blueAccent,
                        size: 40,
                      );
                    },
                  )
                ],
              ),
            ],
        ),
        if (isDetailsVisible==true)
          Positioned(
            left: 0,
            right: 0,
            bottom: 30,
            height: MediaQuery.of(context).size.height * 0.4,
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: mapMarkers.length,
                    itemBuilder: (context, index) {
                      final item =mapMarkers[index];
                      return _MapItemDetails(
                        mapMarkert: item
                      );
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      isDetailsVisible = false;
                    });
                  },
                  child: Text('Cerrar Detalles'),
                ),
              ],
            ),
          ),
      ],
     ),
    );
  }  
}




class _MapItemDetails extends StatelessWidget {
  const _MapItemDetails({
    Key? key,
    required  this.mapMarkert ,
    }) : super(key:key);
    final MapMarkert mapMarkert;
    
  @override
  Widget build(BuildContext context) {
    final _styleTitle = TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold);
    final _styleAddress =TextStyle(color: Colors.grey[800], fontSize: 14);
    final _styleCalifi= TextStyle(color: Colors.green, fontSize: 14);
    
    
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
        margin: EdgeInsets.zero,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Image.asset(mapMarkert.image),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children:[
                        Text(
                          mapMarkert.title,
                          style: _styleTitle,
                          textAlign: TextAlign.center,
                        ), 
                        const SizedBox(height: 10),
                        Text(
                          mapMarkert.calificacion,
                          style: _styleCalifi,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          mapMarkert.promocion,
                          style: _styleAddress,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          mapMarkert.horas,
                          style: _styleAddress,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          mapMarkert.address,
                          style: _styleAddress,
                          textAlign: TextAlign.center,
                        ),
                      ] ,
                    ), 
                  ), 
                ],
              )
            ),
            MaterialButton( //barra de llamada 
              padding:  EdgeInsets.zero,
              onPressed: () => null,
              color: MARKER_COLOR,
              elevation: 6,
              /*child: const Text(
                'CALL',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),*/
            )
          ],
        ),
      ),
    );
  }
}