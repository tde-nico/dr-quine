#include <stdio.h>
#include <stdlib.h>

#define STRING "#include <stdio.h>%1$c#include <stdlib.h>%1$c%1$c#define STRING %2$c%3$s%2$c%1$c%1$cint	n = %4$d;%1$c%1$cint	main()%1$c{%1$c	char	fname[20];%1$c	char	cmd[50];%1$c	char	bin[20];%1$c%1$c	if (n < 0)%1$c		return (1);%1$c	snprintf(fname, 20, %2$cSully_%%d.c%2$c, n);%1$c	FILE	*f = fopen(fname, %2$cw+%2$c);%1$c	if (!f)%1$c		return (1);%1$c	fprintf(f, STRING, 10, 34, STRING, (!n ? 0 : n - 1));%1$c	fclose(f);%1$c	snprintf(bin, 20, %2$c./Sully_%%d%2$c, n);%1$c	snprintf(cmd, 50, %2$cgcc %%s -o %%s%2$c, fname, bin);%1$c	system(cmd);%1$c	if (!n)%1$c		return (0);%1$c	system(bin);%1$c	return (0);%1$c}%1$c"

int	n = 5;

int	main()
{
	char	fname[20];
	char	cmd[50];
	char	bin[20];

	if (n < 0)
		return (1);
	snprintf(fname, 20, "Sully_%d.c", n);
	FILE	*f = fopen(fname, "w+");
	if (!f)
		return (1);
	fprintf(f, STRING, 10, 34, STRING, (!n ? 0 : n - 1));
	fclose(f);
	snprintf(bin, 20, "./Sully_%d", n);
	snprintf(cmd, 50, "gcc %s -o %s", fname, bin);
	system(cmd);
	if (!n)
		return (0);
	system(bin);
	return (0);
}
