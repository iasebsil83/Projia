// ---------------- IMPORTATIONS ----------------

//standard
#include <stdio.h>
#include <stdlib.h>








// ---------------- DECLARATIONS ----------------

//text
char* global_text = "hello man !"








// ---------------- UTILITIES ----------------

//show text
void showText(char* text){
	printf("%s", text);
}








// ---------------- EXECUTION ----------------

//main
int main(int argc, char** argv){

	//print text to screen
	showText(global_text);

	return EXIT_SUCCESS;
}
