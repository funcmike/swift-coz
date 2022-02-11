#include <coz.h>

void ccozBegin(char* name) {
    COZ_BEGIN(name);
}

void ccozEnd(char* name) {
    COZ_END(name);
}

void ccozProgressNamed(char* name) {
    COZ_PROGRESS_NAMED(name);
}

void ccozProgress() {
    COZ_PROGRESS;
}