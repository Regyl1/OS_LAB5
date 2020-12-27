#include <stdio.h>
#include <malloc.h>
#include <time.h>
int main()
{
	char* a;
	long long int size = 0, i = 0;
	FILE* file1 = fopen("report2.log", "w");
	fclose(file1);
	while(1){
		size += 1;
		a = malloc(1);
		i++;
		if(i % 100000 == 0){
			FILE* file = fopen("report2.log", "a");
			fprintf(file, "%d\n", size);
			fclose(file);
		}
	}
return 0;
}
