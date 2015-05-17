/* Author: Vincent Yuan
*  Date: Jan 3, 2015
*  Purpose: Main GPS function node
*  Function: Collect, parse NMEA data, create twist message, r, theta
*/

//Standard Headers
#include <math.h>
#include <iostream> //for cout, rather that using stdio
//#include <gmp.h> //high precision

//Constants
#define EARTH_RADIUS 6371000 //In meters
#define SHIFT 1
#define PI 3.14159265

using namespace std;

struct waypoint {
  double lon;
  double lat;
  waypoint(double x, double y){
    lon = x*SHIFT;
    lat = y*SHIFT;
  }
};

// Variables
waypoint CurrentWaypoint (49.261216,-123.249702);
waypoint TargetWaypoint (49.262041,-123.250370);

double createDistance ();

int main (int argc, char **argv){
    cout.precision(15);
    cout << "TLON:" << fixed << TargetWaypoint.lon << endl;
    cout << "TLAT:" << fixed << TargetWaypoint.lat << endl;
    cout << "CLON:" << fixed << CurrentWaypoint.lon << endl;
    cout << "CLAT:" << fixed << CurrentWaypoint.lat << endl;
    double d = createDistance ();


    cout << "Distance : " << d << "meters" << endl;

    return 0;
}



double createDistance (void){
	/*
	Input Parameter: pointer to store distance
	Output: void (use pointer)
	Purpose: calculates distance from target waypoints
	Link:http://stackoverflow.com/questions/19412462/getting-distance-between-two-points-based-on-latitude-longitude-python
  http://www.movable-type.co.uk/scripts/latlong.html
  */
  int lat1r, lon1r, lat2r, lon2r, u, v;
  lat1r = (CurrentWaypoint.lat)*(PI/180);
  lon1r = (CurrentWaypoint.lon)*(PI/180);
  lat2r = (TargetWaypoint.lat)*(PI/180);
  lon2r = (TargetWaypoint.lon)*(PI/180);
  u = sin((lat2r - lat1r)/2.0);
  v = sin((lon2r - lon1r)/2.0);
  double d = 2.0 * EARTH_RADIUS * asin(sqrt(u * u + cos(lat1r) * cos(lat2r) * v * v))/SHIFT;
  cout << d << endl;

  double toRad = PI / 180;

	double lat1 = CurrentWaypoint.lat * toRad;
	double lon1 = CurrentWaypoint.lon * toRad;
	double lat2 = TargetWaypoint.lat * toRad;
	double lon2 = TargetWaypoint.lon * toRad;
	//from http://www.movable-type.co.uk/scripts/latlong.html, Distance formula (using haversine)
	double a = sin((lat2 - lat1) / 2)*sin((lat2 - lat1) / 2) + cos(lat1) * cos(lat2) * sin((lon2 - lon1) / 2)*sin((lon2 - lon1) / 2);
	double c = 2 * atan2(sqrt(a), sqrt(1 - a));
	 d = 6371000 * c;
	cout <<"Nick's code: " <<  d << endl;

  double dlon = (double)((TargetWaypoint).lon - (CurrentWaypoint).lon)*(M_PI/180);
  double dlat = (double)((TargetWaypoint).lat - (CurrentWaypoint).lat)*(M_PI/180);
  double tarLatRad = TargetWaypoint.lat*(M_PI/180);
  double curLatRad = CurrentWaypoint.lat*(M_PI/180);

   a = (double)sin(dlat/2)*sin(dlat/2) + cos(curLatRad) * cos(tarLatRad) * sin(dlon/2) * sin(dlon/2);

   c = (double)(2 * atan2(sqrt(a), sqrt(1-a)));

  d = (double)EARTH_RADIUS * c;
  cout << d << endl;
  return d;
}

/*
double lat1r, lon1r, lat2r, lon2r, u, v;
lat1r = (CurrentWaypoint.lat)*(M_PI/180.0);
lon1r = (CurrentWaypoint.lon)*(M_PI/180.0);
lat2r = (TargetWaypoint.lat)*(M_PI/180.0);
lon2r = (TargetWaypoint.lon)*(M_PI/180.0);
u = sin((lat2r - lat1r)/2.0);
v = sin((lon2r - lon1r)/2.0);
double d = (double) 2.0 * EARTH_RADIUS * asin(sqrt(u * u + cos(lat1r) * cos(lat2r) * v * v));
cout << d << endl;


double dlon = (double)((TargetWaypoint).lon - (CurrentWaypoint).lon)*(M_PI/180);
double dlat = (double)((TargetWaypoint).lat - (CurrentWaypoint).lat)*(M_PI/180);
double tarLatRad = TargetWaypoint.lat*(M_PI/180);
double curLatRad = CurrentWaypoint.lat*(M_PI/180);

double a = (double)sin(dlat/2)*sin(dlat/2) + cos(curLatRad) * cos(tarLatRad) * sin(dlon/2) * sin(dlon/2);

double c = (double)(2 * atan2(sqrt(a), sqrt(1-a)));

d = (double)EARTH_RADIUS * c;
cout << d << endl;
return d;
*/
