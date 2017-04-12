#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <ctype.h>
#include "anagram.h"

int compare(const void *l, const void *r);
void sort(char *dst, const char *src);

struct Vector anagrams_for(char *word, struct Vector words) {
  char buffer[MAX_STR_LEN];
  sort(buffer, word);

  struct Vector matches;
  matches.vec = malloc(MAX_STR_LEN * words.size);
  matches.size = 0;

  for (int i = 0; i < words.size; ++i) {
    if (strcasecmp(word, words.vec[i]) == 0) continue;

    char candidate[MAX_STR_LEN];
    sort(candidate, words.vec[i]);
    if (strcasecmp(buffer, candidate) == 0) {
      strcpy(matches.vec[matches.size++], words.vec[i]);
    }
  }

  return matches;
}

void sort(char *dst, const char *src) {
  size_t len = strlen(src);
  assert(len < MAX_STR_LEN);
  strcpy(dst, src);
  qsort(dst, len, 1, compare);
}

int compare(const void *l, const void *r) {
  return tolower(*((const char *) l)) - tolower(*((const char *) r));
}
