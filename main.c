/**
 *AUTHOR - Sangwani P. Zyambo
 *Software Engineering student at ALX/Holberton
 */
#include "monty.h"

/**
 * main - entry point
 * @argc: number of args
 * @argv: filenames
 * Return: 0 or 1
 */
int main(int argc, char **argv)
{
	FILE *fd;
	char *line;
	size_t len = 0;
	ssize_t read;
	stack_t *head = NULL;
	stack_t *tail = NULL;
	int mode = 0;
	unsigned int line_number = 1;

	if (argc != 2)
	{
		fprintf(stderr, "USAGE: monty file\n");
		exit(EXIT_FAILURE);
	}

	fd = fopen(argv[1], "r");

	if (fd == NULL)
	{
		fprintf(stderr, "Error: Can't open file %s\n", argv[1]);
		exit(EXIT_FAILURE);
	}

	while ((read = getline(&line, &len, fd)) != -1)
	{
		eval(line, &head, &tail, &mode, line_number);
		line_number++;
	}

	fclose(fd);
	free(line);
	free_list(&head);
	return (EXIT_SUCCESS);
}
