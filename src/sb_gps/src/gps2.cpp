/* Author: Vincent Yuan
*  Date: Jan 3, 2015
*  Purpose: Main GPS function node
*  Function: Collect, parse NMEA data, create twist message, r, theta
*/ 

//Standard Headers
#include <stlib.h> 
#include <math.h> 
#include <iostream> //for cout, rather that using stdio
#include <sstream>  
#include "ros/ros.h" //for ros system
#include "std_msgs/string.h" 

//Constants
#define TRUE 1 
#define FALSE 0 
#define EARTH_RADIUS 6378.137 //In KM 

using namepsace std; 

struct twist{
double x; 
double y; 
double dx; 
double dy;
} 

struct waypoint {
double lon_x; 
double lat_y;
} 

// Variables 

float double *NMEA; //To hold received suscription message 
double botDirection; 

static const string GPS_NODE_NAME = "gps_node"; 
static const string GPS_OUTPUT_TOPIC = "gps_nav"; 
static const string GPS_TEST_TOPIC = "vision_vel"; // test sub
static const string GPS_INPUT_TOPIC = "gps_state"; // gps_state

//functions 
int gpsStatus (); //Checking if gps has started receiving data
void nmeaParse (); //Parse intake data, from USB/buffer.txt/suscribe? Need to write driver
void getWaypoint (); //collects waypoint from txt file 
void createAngle (double *theta); //Calculates Angle  
void createDistance (double *d); //Calculates Distance
int checkGoal (); //Check to see if we are at destination 
void longToMetre (); //Calculates long/lat for distance in meters
void createTwist (); //Calculates Twist
/* The 3 create functions should be suscribed to

*/ 


int main (int argc, char **argv){

	struct waypoint currentWayPoint = (struct waypoint*) malloc ( sizeof(struct waypoint)); //Create struct for current way point
	struct waypoint targetWayPoint = (struct waypoint*) malloc ( sizeof (struct waypoint)); //Create struct for target way point 
	struct twist nextTwist = (struct twist*) malloc (sizeof(struct twist)); //create struct for the next output twist message
	if (currentWayPoint == NULL || targetWaypoint == NULL || nextTwist == NULL){
		cout << "Error, not enough memory for program" << endl; 
		cout << "Memory Error in main function, struct initiation" << endl; 
		} //Memory allocation error message 
	else {
		targetWaypoint = {0.0,0.0}; //intialize to 0
		currentWayPoint = {0.0,0.0}; //intialize to 0 
		nextTwist = {0.0,
		}

	int *gpsFlag; //0 for no connection; 1 for satellite connection 
	
	ros::init(argc, argv, GPS_NODE_NAME); //initialize access point to communicate 
	ros::NodeHandle nh; //create handle to this process node, NodeHandle is main access point to communication with ROS system. First one intializes node 
	

	ros::Publisher gps_test_pub = nh.advertise<gemoertry_msgs::Twist>(GPS_TEST_TOPIC, 20); 
	ros::Publisher gps_data_pub = nh.advertise<sb_msgs::CarCommand>(GPS_OUTPUT_TOPIC, 20); 
	ros::Suscriber gps_Sub = nh.suscribe(GPS_INPUT_TOPIC, 20, gpsCallback); 
	
	ros::Rate loop_Rate(5); //10hz loop rate
	
	geometry_msgs::Twist nextTwist; 

	while (ros::ok()){
		while (gpsflag == TRUE){
		nmeaParse();
		cout << "Everything is going to be ok" << endl;
		} 
		createTwist (nextTwist); //Make new twist message
		geometry_msgs::Twist nextTwist; 





void getWaypoint (*FILE, *targetWayPoint){
	/*
	Input Parameter: 
		1. Pointer to txt file 
		2. Pointer to targete 
	Output: void (use pointers) 
	Purpose: Get target waypoint from txt file and store it 
	*/	
} 


void createAngle (double *theta, double compass){
	/*
	Input Parameter: 
		1. pointer to hold angle
		2. direction from compass 
	Output: void (use pointer) 
	Purpose: calculates angle from target waypoint 
	*/
}


void createDistance (double *d){
	/*
	Input Parameter: pointer to store distance
	Output: void (use pointer) 
	Purpose: calculates distance from target waypoints
	*/

	double dlong,dlat
}


int checkGoal (double *currentWayPoint, double *targetWayPoint){
	/*
	Input Parameter: 
		1. pointer to waypoint struct of current position
		2. pointer to waypoint struct of target
	Output: 1 for at destination, 0 for cont. 
	Purpose: check if we are at goal 
	*/
}


void longToMetre ( double *currentWayPoint){
	/*
	Input Parameter: pointer to waypoint struct of current position
	Output: void (use pointer) 
	Purpose: 
		1. Updates struct holding current waypoint 
		2. Calculates waypoint long and lat from parsed NMEA
	*/
 
	lon = 	(*currentWayPoint).lon_x; 
	lat = (*currentWayPoint).lat_y;

}


void createTwist (double *nextTwist){
	/*
	Input Parameter: pointer to twist struct that holds released twist message
	Output: void (use pointer) 
	Purpose: 
		1. Alters twist message for the next output twist message
		2. Computes x,y,z? (Direction) dx,dy (velocity)
	*/

	


}
















