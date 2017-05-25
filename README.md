# shellize

When most people write a shell script, they reference a variable like this:

	echo $HOME

and only resort to bracketing to separate the variable name:

	echo ${HOME}town

However, they often omit using double quotes to keep the entire substituted
text as a single shell token.  For example:

	BAD='able; rm -rf /'
	echo $BAD

actually expands to:

	echo able; rm -rf /

with unfortunate results.  Enclosing the variable substitution in double
quotes avoids this injection attack:

	$ echo "$BAD"
	able; rm -rf /
	$

To complicate matters, the make(1) utility requires enclosing multiple-character
variable names.  So in the shell you can get away with:

	echo $HOME

in a Makefile, you must use:

	echo ${HOME}

To avoid all these issues, this script will insert curly braces around the
variable name and enclose the whole reference in double quotes:

	echo '$HOME' | shellize
	"${HOME}"
