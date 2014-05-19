#ifdef __cplusplus
extern "C" {
#endif
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"
#ifdef __cplusplus
}
#endif

#include <cstring>
#include <iostream>
using namespace std;

class Osadmin {
public:
    Osadmin() {
    }
    size_t test_cpp (const char *c) {
        string str(c);
        return str.length();
    }
    ~Osadmin() { 
    }
};

MODULE = Osadmin		PACKAGE = Osadmin		

PROTOTYPES: ENABLE

Osadmin *
Osadmin::new()

void
Osadmin::DESTROY()

size_t
Osadmin::test_cpp(c)
    const char *c

