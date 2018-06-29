

#include "mainModel.h"
#include <stdio.h>
#include <math.h>
#include <fcntl.h>      // open()
#include <unistd.h>     // close()
#include <stdint.h>
#include <stdlib.h>
#include <time.h> // clock()

#include <string.h>
#include <stdbool.h>
#include <opencv/cv.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <thread>
#include <iostream>
#include <unistd.h>

#define WIDTH 320
#define HEIGHT 240
#define FRAMERATE 30

#define FRAMESIZE 115200//WIDTH*HEIGHT*2

#define MARGIN 10

using namespace cv;
using namespace std;

mainModel * model;
void processImage(Mat *image)
{
	//Mat img_rgb, img_th, img_hsv, img1, img2;
	//Mat img(HEIGHT, WIDTH, CV_8UC2, data);
	
	//cvtColor(img, img_rgb, CV_YUV2BGR_YUY2);
	cvtColor(image, img_hsv, CV_BGR2HSV);
	vector<vector<Point>> contours;
	vector<Vec4i> hierarchy;
	Point Center;


	inRange(img_hsv, Scalar(90, 130, 100), Scalar(130, 255,  255), img1);

	Mat Elem = getStructuringElement(MORPH_ELLIPSE, Size(10, 10));
	morphologyEx(img1, img1, MORPH_OPEN, Elem);

	findContours(img1, contours, hierarchy, CV_RETR_CCOMP, CV_CHAIN_APPROX_SIMPLE);

	int largest_area=0;
	int largest_contour_index=0;
	Rect bounding_rect;
	for( int i = 0; i< contours.size(); i++ ) // iterate through each contour. 
	{
		double a=contourArea( contours[i],false);  //  Find the area of contour
		if(a>largest_area){
			largest_area=a;
			largest_contour_index=i;                //Store the index of largest contour
			bounding_rect=boundingRect(contours[i]); // Find the bounding rectangle for biggest contour
		}
	}

	Center.x = bounding_rect.x+bounding_rect.width/2;
	Center.y = bounding_rect.y+bounding_rect.height/2;


	Scalar color( 255,255,255);
	drawContours(img_rgb, contours,largest_contour_index, color, 1, 8, hierarchy);
	circle(img_rgb, Center, 2, color, -1, 8, 0);

	//Determine motor directions
	if(largest_area == 0)		//No blob found
		printf("No blob found\r\n");
	else
	{
		model->modPosPixel(Center.x, Center.y);
		if(Center.x < WIDTH/2 - MARGIN)
			printf("Turn Pan left\r\n");
		else if(Center.x > WIDTH/2 + MARGIN)
			printf("Turn Pan right\r\n");
		else
			printf("Stop turning Pan\r\n");
		if(Center.y  < HEIGHT/2 - MARGIN)
			printf("Turn Tilt up\r\n");
		else if(Center.y > HEIGHT/2 + MARGIN)
			printf("Turn Tilt down\r\n");
		else
			printf("Stop turning Tilt\r\n"); 
	}

	cvtColor(img1, img1, CV_GRAY2BGR);
	bitwise_and(img_rgb, img1, img2);


}


int main (int   argc, char *argv[])
{
       model = new mainModel();
	model->initializeModel();
	model->move2end();
	model->setPos(M_PI/2, M_PI/4);
        Mat frame;

	VideoCapture cap(0); // open the default camera
    if(!cap.isOpened())  // check if we succeeded
        return -1;
		
	cap.set(CV_CAP_PROP_FRAME_WIDTH,WIDTH);
	cap.set(CV_CAP_PROP_FRAME_HEIGHT,HEIGHT);
		
	while(1)
	{
		cap >> frame;
		processImage(&frame);
                model->loop();
	}


	return 0;
}
