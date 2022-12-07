#include <stdio.h>

/*
	first comment outside the main function
*/

void	print()
{
	char	*str = "#include <stdio.h>%1$c%1$c/*%1$c	first comment outside the main function%1$c*/%1$c%1$cvoid	print()%1$c{%1$c	char	*str = %3$c%2$s%3$c;%1$c	printf(str, 10, str, 34);%1$c}%1$c%1$cint	main()%1$c{%1$c	/*%1$c		second comment inside the main function%1$c	*/%1$c	print();%1$c	return (0);%1$c}%1$c";
	printf(str, 10, str, 34);
}

int	main()
{
	/*
		second comment inside the main function
	*/
	print();
	return (0);
}
