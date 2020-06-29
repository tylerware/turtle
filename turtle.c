#include <stdlib.h>
#include <stdio.h>
#include <libguile.h>

static void*
register_functions (void* data)
{
    return NULL;
}

int main(int argc, char* argv[]) {
    scm_with_guile (&register_functions, NULL);
    scm_shell (argc, argv);
    return EXIT_SUCCESS;
}

