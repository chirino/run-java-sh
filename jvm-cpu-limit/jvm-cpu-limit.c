#include <stdlib.h>
#include <unistd.h>

int JVM_ActiveProcessorCount(void) {
    char* val = getenv("JAVA_MAX_CORES_AVAILABLE");
    int rc = val != NULL ? atoi(val) : sysconf(_SC_NPROCESSORS_ONLN);
    if ( rc < 1 ) {
    	rc = 1;
    }
    return rc;
}