#include <stdio.h>

/*
	comment in Grace
*/

#define COMMENT "comment in Grace"
#define STRING "#include <stdio.h>%1$c%1$c/*%1$c	comment in Grace%1$c*/%1$c%1$c#define COMMENT %2$ccomment in Grace%2$c%1$c#define STRING %2$c%3$s%2$c%1$c#define FT(x) int main() {FILE *f = fopen(%2$cGrace_kid.c%2$c, %2$cw+%2$c); if (f == 0) {return (1);}; fprintf(f, STRING, 10, 34, STRING); fclose(f); return (0);}%1$c%1$cFT()%1$c"
#define FT(x) int main() {FILE *f = fopen("Grace_kid.c", "w+"); if (f == 0) {return (1);}; fprintf(f, STRING, 10, 34, STRING); fclose(f); return (0);}

FT()
