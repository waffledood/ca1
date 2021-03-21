# 1 "main.c"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "main.c"



# 1 "/mnt/c/GBADev/include/mygba.h" 1
# 141 "/mnt/c/GBADev/include/mygba.h"
# 1 "/mnt/c/GBADev/include/krawall.h" 1
# 18 "/mnt/c/GBADev/include/krawall.h"
# 1 "/mnt/c/GBADev/include/mtypes.h" 1
# 15 "/mnt/c/GBADev/include/mtypes.h"
typedef __attribute__ ((packed)) struct {
        unsigned long loopLength;
        unsigned long end;
        unsigned short c2Freq;
        unsigned char volDefault;
        unsigned char looped;
        unsigned char hq;
        signed char data[1];
} Sample;

typedef __attribute__ ((packed)) struct {
        unsigned short index[ 16 ];
        unsigned char data[1];
} Pattern;

typedef __attribute__ ((packed)) struct {
        unsigned char numOrders;
        unsigned char order[ 256 ];

        unsigned char channels;
        signed char channelPan[ 32 ];

        unsigned char songIndex[ 64 ];

        unsigned char volGlobal;

        unsigned char initSpeed;
        unsigned char initTempo;

        unsigned char flagVolOpt;
        unsigned char flagVolSlides;
        unsigned char flagAmigaLimits;

        const Pattern* patterns[1];
} Module;

extern const Sample* const samples[];
# 19 "/mnt/c/GBADev/include/krawall.h" 2

typedef unsigned int chandle;
# 43 "/mnt/c/GBADev/include/krawall.h"
void kragInit( int stereo );
# 57 "/mnt/c/GBADev/include/krawall.h"
void krapPlay( const Module *m, int mode, int song );
# 67 "/mnt/c/GBADev/include/krawall.h"
void krapStop();
# 83 "/mnt/c/GBADev/include/krawall.h"
void krapCallback( void (*func)( int, int ) );
# 97 "/mnt/c/GBADev/include/krawall.h"
void krapPause( int sfx );






void krapUnpause();
# 113 "/mnt/c/GBADev/include/krawall.h"
int krapIsPaused();
# 128 "/mnt/c/GBADev/include/krawall.h"
void krapSetMusicVol( unsigned int vol, int fade );
# 138 "/mnt/c/GBADev/include/krawall.h"
int kramWorker() __attribute__ ((long_call));






int kramGetActiveChannels();







void kramQualityMode( int );
# 167 "/mnt/c/GBADev/include/krawall.h"
chandle kramPlay( const Sample *s, int sfx, chandle c ) __attribute__ ((long_call));
# 181 "/mnt/c/GBADev/include/krawall.h"
chandle kramPlayExt( const Sample *s, int sfx, chandle c, unsigned int freq, unsigned int vol, int pan ) __attribute__ ((long_call));
# 190 "/mnt/c/GBADev/include/krawall.h"
int kramStop( chandle c ) __attribute__ ((long_call));
# 200 "/mnt/c/GBADev/include/krawall.h"
int kramSetFreq( chandle c, unsigned int freq ) __attribute__ ((long_call));
# 210 "/mnt/c/GBADev/include/krawall.h"
int kramSetVol( chandle c, unsigned int vol ) __attribute__ ((long_call));
# 220 "/mnt/c/GBADev/include/krawall.h"
int kramSetPan( chandle c, int pan ) __attribute__ ((long_call));
# 234 "/mnt/c/GBADev/include/krawall.h"
int kramSetPos( chandle c, unsigned int pos ) __attribute__ ((long_call));






void kramSetSFXVol( unsigned int vol );







void kramSetMasterVol( unsigned int vol );






void kradInterrupt();





void kradActivate();







void kradDeactivate();
# 142 "/mnt/c/GBADev/include/mygba.h" 2
# 196 "/mnt/c/GBADev/include/mygba.h"
# 1 "/usr/local/lib/gcc-lib/arm-thumb-elf/3.3.6/include/stdarg.h" 1 3 4
# 43 "/usr/local/lib/gcc-lib/arm-thumb-elf/3.3.6/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 105 "/usr/local/lib/gcc-lib/arm-thumb-elf/3.3.6/include/stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 197 "/mnt/c/GBADev/include/mygba.h" 2
# 1 "/usr/local/arm-thumb-elf/sys-include/stdlib.h" 1 3 4
# 10 "/usr/local/arm-thumb-elf/sys-include/stdlib.h" 3 4
# 1 "/usr/local/arm-thumb-elf/sys-include/_ansi.h" 1 3 4
# 15 "/usr/local/arm-thumb-elf/sys-include/_ansi.h" 3 4
# 1 "/usr/local/arm-thumb-elf/sys-include/newlib.h" 1 3 4
# 16 "/usr/local/arm-thumb-elf/sys-include/_ansi.h" 2 3 4
# 1 "/usr/local/arm-thumb-elf/sys-include/sys/config.h" 1 3 4



# 1 "/usr/local/arm-thumb-elf/sys-include/machine/ieeefp.h" 1 3 4
# 5 "/usr/local/arm-thumb-elf/sys-include/sys/config.h" 2 3 4
# 17 "/usr/local/arm-thumb-elf/sys-include/_ansi.h" 2 3 4
# 11 "/usr/local/arm-thumb-elf/sys-include/stdlib.h" 2 3 4



# 1 "/usr/local/lib/gcc-lib/arm-thumb-elf/3.3.6/include/stddef.h" 1 3 4
# 213 "/usr/local/lib/gcc-lib/arm-thumb-elf/3.3.6/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 325 "/usr/local/lib/gcc-lib/arm-thumb-elf/3.3.6/include/stddef.h" 3 4
typedef int wchar_t;
# 15 "/usr/local/arm-thumb-elf/sys-include/stdlib.h" 2 3 4

# 1 "/usr/local/arm-thumb-elf/sys-include/sys/reent.h" 1 3 4
# 14 "/usr/local/arm-thumb-elf/sys-include/sys/reent.h" 3 4
# 1 "/usr/local/arm-thumb-elf/sys-include/sys/_types.h" 1 3 4
# 12 "/usr/local/arm-thumb-elf/sys-include/sys/_types.h" 3 4
typedef long _off_t;
__extension__ typedef long long _off64_t;


typedef int _ssize_t;





# 1 "/usr/local/lib/gcc-lib/arm-thumb-elf/3.3.6/include/stddef.h" 1 3 4
# 354 "/usr/local/lib/gcc-lib/arm-thumb-elf/3.3.6/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 23 "/usr/local/arm-thumb-elf/sys-include/sys/_types.h" 2 3 4


typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;

typedef int _flock_t;
# 15 "/usr/local/arm-thumb-elf/sys-include/sys/reent.h" 2 3 4




typedef unsigned long __ULong;
# 40 "/usr/local/arm-thumb-elf/sys-include/sys/reent.h" 3 4
struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};
# 68 "/usr/local/arm-thumb-elf/sys-include/sys/reent.h" 3 4
struct _atexit {
        struct _atexit *_next;
        int _ind;
        void (*_fns[32])(void);
        void *_fnargs[32];
        __ULong _fntypes;
};
# 91 "/usr/local/arm-thumb-elf/sys-include/sys/reent.h" 3 4
struct __sbuf {
        unsigned char *_base;
        int _size;
};






typedef long _fpos_t;
# 156 "/usr/local/arm-thumb-elf/sys-include/sys/reent.h" 3 4
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (*_read) (void * _cookie, char *_buf, int _n);
  int (*_write) (void * _cookie, const char *_buf, int _n);

  _fpos_t (*_seek) (void * _cookie, _fpos_t _offset, int _whence);
  int (*_close) (void * _cookie);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  int _offset;


  struct _reent *_data;



  _flock_t _lock;

};
# 249 "/usr/local/arm-thumb-elf/sys-include/sys/reent.h" 3 4
typedef struct __sFILE __FILE;


struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 280 "/usr/local/arm-thumb-elf/sys-include/sys/reent.h" 3 4
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 532 "/usr/local/arm-thumb-elf/sys-include/sys/reent.h" 3 4
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];

  int _current_category;
  const char *_current_locale;

  int __sdidinit;

  void (*__cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;


  struct _atexit *_atexit;
  struct _atexit _atexit0;


  void (**(_sig_func))(int);




  struct _glue __sglue;
  __FILE __sf[3];
};
# 728 "/usr/local/arm-thumb-elf/sys-include/sys/reent.h" 3 4
extern struct _reent *_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 17 "/usr/local/arm-thumb-elf/sys-include/stdlib.h" 2 3 4
# 1 "/usr/local/arm-thumb-elf/sys-include/machine/stdlib.h" 1 3 4
# 18 "/usr/local/arm-thumb-elf/sys-include/stdlib.h" 2 3 4

# 1 "/usr/local/arm-thumb-elf/sys-include/alloca.h" 1 3 4
# 20 "/usr/local/arm-thumb-elf/sys-include/stdlib.h" 2 3 4




typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;
# 45 "/usr/local/arm-thumb-elf/sys-include/stdlib.h" 3 4
extern int __mb_cur_max;



void abort (void) __attribute__ ((noreturn));
int abs (int);
int atexit (void (*__func)(void));
double atof (const char *__nptr);

float atoff (const char *__nptr);

int atoi (const char *__nptr);
long atol (const char *__nptr);
void * bsearch (const void * __key, const void * __base, size_t __nmemb, size_t __size, int (* _compar) (const void *, const void *));




void * calloc (size_t __nmemb, size_t __size);
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((noreturn));
void free (void *);
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);
char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);
long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void * malloc (size_t __size);
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *, const char *, size_t);
int _mbtowc_r (struct _reent *, wchar_t *, const char *, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *, const char *, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *, const char *, size_t, _mbstate_t *);
size_t wcstombs (char *, const wchar_t *, size_t);
size_t _wcstombs_r (struct _reent *, char *, const wchar_t *, size_t, _mbstate_t *);


int mkstemp (char *);
char * mktemp (char *);


void qsort (void * __base, size_t __nmemb, size_t __size, int(*_compar)(const void *, const void *));
int rand (void);
void * realloc (void * __r, size_t __size);
void srand (unsigned __seed);
double strtod (const char *__n, char **__end_PTR);
double _strtod_r (struct _reent *,const char *__n, char **__end_PTR);
float strtof (const char *__n, char **__end_PTR);






long strtol (const char *__n, char **__end_PTR, int __base);
long _strtol_r (struct _reent *,const char *__n, char **__end_PTR, int __base);
unsigned long strtoul (const char *__n, char **__end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *__n, char **__end_PTR, int __base);

int system (const char *__string);


long a64l (const char *__input);
char * l64a (long __input);
char * _l64a_r (struct _reent *,long __input);
int on_exit (void (*__func)(int, void *),void * __arg);
void _Exit (int __status) __attribute__ ((noreturn));
int putenv (const char *__string);
int _putenv_r (struct _reent *, const char *__string);
int setenv (const char *__string, const char *__value, int __overwrite);
int _setenv_r (struct _reent *, const char *__string, const char *__value, int __overwrite);

char * gcvt (double,int,char *);
char * gcvtf (float,int,char *);
char * fcvt (double,int,int *,int *);
char * fcvtf (float,int,int *,int *);
char * ecvt (double,int,int *,int *);
char * ecvtbuf (double, int, int*, int*, char *);
char * fcvtbuf (double, int, int*, int*, char *);
char * ecvtf (float,int,int *,int *);
char * dtoa (double, int, int, int *, int*, char**);
int rand_r (unsigned *__seed);

double drand48 (void);
double _drand48_r (struct _reent *);
double erand48 (unsigned short [3]);
double _erand48_r (struct _reent *, unsigned short [3]);
long jrand48 (unsigned short [3]);
long _jrand48_r (struct _reent *, unsigned short [3]);
void lcong48 (unsigned short [7]);
void _lcong48_r (struct _reent *, unsigned short [7]);
long lrand48 (void);
long _lrand48_r (struct _reent *);
long mrand48 (void);
long _mrand48_r (struct _reent *);
long nrand48 (unsigned short [3]);
long _nrand48_r (struct _reent *, unsigned short [3]);
unsigned short *
       seed48 (unsigned short [3]);
unsigned short *
       _seed48_r (struct _reent *, unsigned short [3]);
void srand48 (long);
void _srand48_r (struct _reent *, long);
long long strtoll (const char *__n, char **__end_PTR, int __base);
long long _strtoll_r (struct _reent *, const char *__n, char **__end_PTR, int __base);
unsigned long long strtoull (const char *__n, char **__end_PTR, int __base);
unsigned long long _strtoull_r (struct _reent *, const char *__n, char **__end_PTR, int __base);


void cfree (void *);
# 172 "/usr/local/arm-thumb-elf/sys-include/stdlib.h" 3 4
char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t);
void * _calloc_r (struct _reent *, size_t, size_t);
void _free_r (struct _reent *, void *);
void * _realloc_r (struct _reent *, void *, size_t);
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);
# 213 "/usr/local/arm-thumb-elf/sys-include/stdlib.h" 3 4

# 198 "/mnt/c/GBADev/include/mygba.h" 2
# 1 "/usr/local/arm-thumb-elf/sys-include/string.h" 1 3 4
# 14 "/usr/local/arm-thumb-elf/sys-include/string.h" 3 4
# 1 "/usr/local/lib/gcc-lib/arm-thumb-elf/3.3.6/include/stddef.h" 1 3 4
# 15 "/usr/local/arm-thumb-elf/sys-include/string.h" 2 3 4







void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *, const void *, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *, const char *);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *, const char *);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *, const char *, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *, const char *, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);


char *strtok (char *, const char *);


size_t strxfrm (char *, const char *, size_t);


char *strtok_r (char *, const char *, char **);

int bcmp (const void *, const void *, size_t);
void bcopy (const void *, void *, size_t);
void bzero (void *, size_t);
int ffs (int);
char *index (const char *, int);
void * memccpy (void *, const void *, int, size_t);
void * mempcpy (void *, const void *, size_t);
char *rindex (const char *, int);
int strcasecmp (const char *, const char *);
char *strdup (const char *);
char *_strdup_r (struct _reent *, const char *);
char *strndup (const char *, size_t);
char *_strndup_r (struct _reent *, const char *, size_t);
char *strerror_r (int, char *, size_t);
size_t strlcat (char *, const char *, size_t);
size_t strlcpy (char *, const char *, size_t);
int strncasecmp (const char *, const char *, size_t);
size_t strnlen (const char *, size_t);
char *strsep (char **, const char *);
char *strlwr (char *);
char *strupr (char *);
# 98 "/usr/local/arm-thumb-elf/sys-include/string.h" 3 4

# 199 "/mnt/c/GBADev/include/mygba.h" 2
# 294 "/mnt/c/GBADev/include/mygba.h"
typedef unsigned char bool;

typedef unsigned char u8;
typedef unsigned short int u16;
typedef unsigned int u32;
typedef unsigned long long int u64;

typedef signed char s8;
typedef signed short int s16;
typedef signed int s32;
typedef signed long long int s64;

typedef volatile unsigned char vu8;
typedef volatile unsigned short int vu16;
typedef volatile unsigned int vu32;
typedef volatile unsigned long long int vu64;

typedef volatile signed char vs8;
typedef volatile signed short int vs16;
typedef volatile signed int vs32;
typedef volatile signed long long int vs64;



typedef s16 sfp16;
typedef s32 sfp32;
typedef u16 ufp16;
typedef u32 ufp32;
# 442 "/mnt/c/GBADev/include/mygba.h"
extern u32 IntrTable[];
# 3511 "/mnt/c/GBADev/include/mygba.h"
extern volatile u8 _hamlib_intset;
# 3630 "/mnt/c/GBADev/include/mygba.h"
extern int dsprintf(char *,const char*, ...);
extern void __PrintStr(char *);

extern unsigned char __outstr[];
extern unsigned char __finstr[];
extern unsigned char __kinstr[];
extern int finptr;
extern int foutptr;
extern int kinptr;
extern int koutptr;
# 3661 "/mnt/c/GBADev/include/mygba.h"
extern int dgetch (void);


extern u8 _hamlib_assert_to_dbgshow;
# 3679 "/mnt/c/GBADev/include/mygba.h"
extern void dbg_Show(char*);
# 3709 "/mnt/c/GBADev/include/mygba.h"
typedef struct tile_info_typ
{
    u16 col_mode;
        u8 first_block;
    u8 offset_from_cbb;
    u8 cbb;
} tile_info,*tile_info_ptr;

typedef struct map_info_typ
{
    u8 first_block;
    u8 map_rot;
    u16 map_size;
        u16 map_x;
        u16 map_y;
} map_info,*map_info_ptr;

typedef struct map_fragment_info_typ
{
    u16* src;
    u16* src_ofs;
    u8 map_rot;
        u16 map_total_x;
        u16 map_total_y;
        u16 map_ofs_x;
        u16 map_ofs_y;
        u16 map_tiles_x;
        u16 map_tiles_y;
        u16 map_line_ofs;

} map_fragment_info,*map_fragment_info_ptr;





extern tile_info_ptr ham_InitTileSet(void* src,u16 size_u16,u8 col_mode,u8 cbb_only_mode);
extern tile_info_ptr ham_InitTileEmptySet(u16 num_tiles, u8 col_mode, u8 cbb_only_mode);
extern map_info_ptr ham_InitMapEmptySet(u8 map_size,u8 map_rot);
extern map_info_ptr ham_InitMapSet(void* src,u16 size_u16,u8 map_size,u8 map_rot);
extern void ham_SetMapTile(u8 bgno,u32 x,u32 y,u32 tileno);
extern void ham_SetMapTileEx(u8 bgno,u32 x,u32 y,u32 tileno,u32 hflip, u32 vflip, u32 palno);
extern u16 ham_GetMapTile(u8 bgno,u8 x,u8 y);
extern void ham_ReloadTileGfx(tile_info_ptr ti, u16* src,u16 target_tileno,u16 num_tiles);
extern map_fragment_info_ptr ham_InitMapFragment(void* src,
                                                                                  u16 map_total_x,u16 map_total_y,
                                          u16 map_ofs_x, u16 map_ofs_y,
                                          u8 map_tiles_x,u8 map_tiles_y,
                                          u8 map_rot);
extern void ham_InsertMapFragment(map_fragment_info_ptr mfi,u8 bgno,u8 x,u8 y);
extern void ham_DeInitTileSet(tile_info_ptr ti);
extern void ham_DeInitMapSet(map_info_ptr mi);
extern void ham_DeInitMapFragment(map_fragment_info_ptr mfi);





extern void ham_SetFxMode(u16 source_layer, u16 target_layer, u16 fx_mode);
extern void ham_SetFxAlphaLevel(u16 source_intensity,u16 target_intensity);
extern void ham_SetFxBrightnessLevel(u16 intensity);
# 3780 "/mnt/c/GBADev/include/mygba.h"
typedef struct obj_info_typ
{
        u8 taken;
    u8 active;
        u16 objatr0;
        u16 objatr1;
        u16 objatr2;
        u8 prev_obj;
        u8 next_obj;
} obj_info,*obj_info_ptr;




extern obj_info ham_obj[];
extern u8 ham_obj_first;




extern void ham_InitObj(void);
extern void ham_ResetObj(void);
extern void ham_DeleteObj(u8 entryno);
extern u8 ham_CreateObj(void* src,u16 obj_shape,u16 obj_size,u16 obj_mode,u16 col_mode,u16 pal_no ,u16 mosaic,u16 hflip,u16 vflip,u16 prio, u16 dbl_size, u16 x, u16 y);
extern u8 ham_CreateObjFromGfxSlot(u16 slot,u16 obj_shape,u16 obj_size,u16 obj_mode,u16 col_mode,u16 pal_no ,u16 mosaic,u16 hflip,u16 vflip,u16 prio, u16 dbl_size, u16 x, u16 y);
extern u8 ham_CreateObjFromBg(u8 bgno, u32 bg_tileno_x, u32 bg_tileno_y, u16 obj_shape,u16 obj_size, u32 erase_bg, u32 tileno_filler);
extern u16 ham_CreateObjGfx(void* src,u16 obj_shape,u16 obj_size,u16 col_mode);
extern void ham_DeleteObjGfx(u16 slotno);
extern u8 ham_CloneObj(u8 objno, u16 x, u16 y);
extern void ham_SetObjMode(u8 objno,u16 obj_mode);
extern void ham_SetObjX(u8 objno,u16 x);
extern void ham_SetObjY(u8 objno,u16 y);
extern void ham_SetObjXY(u8 objno,u16 x,u16 y);
extern void ham_SetObjMosaic(u8 objno,u8 val);
extern void ham_SetObjDblSize(u8 objno,u8 val);
extern void ham_SetObjHFlip(u8 objno,u8 val);
extern void ham_SetObjVFlip(u8 objno,u8 val);
extern void ham_SetObjPrio(u8 objno,u8 val);
extern void ham_SetObjVisible(u8 objno,u8 val);
extern void ham_SetObjRotEnable(u8 objno,u8 val);
extern void ham_SetObjRotSetSelect(u8 objno,u8 val);
extern void ham_UpdateObjGfx(u8 objno,void* src);
extern u16 ham_GetObjGfxSlot(u8 objno);
extern u8 ham_GetObjPal16(u8 objno);
extern void ham_SetObjGfxSlot(u8 objno,u16 slotno,u8 palno);
extern void ham_UpdateObjPal16(u8 objno,u8 pal_no);
extern void ham_SetObjBefore(u8 objno,u8 objno_target);
extern void ham_CopyObjToOAM(void);
extern u32 ham_GetObjAvailable(void);
# 3837 "/mnt/c/GBADev/include/mygba.h"
typedef struct bg_info_typ
{
        map_info_ptr mi;
        tile_info_ptr ti;
    u16 mosaic;
    u16 active;
    u16 prio;
        u8 is_rot_bg;
        s16 x_scroll;
        s16 y_scroll;
} bg_info,*bg_info_ptr;




extern bg_info ham_bg[];




extern void ham_InitBg( u16 bgno, u16 active, u16 prio, u16 mosaic);
extern void ham_ResetBg(void);
extern u8 ham_GetBgType(u8 bgno);
extern void ham_SetBgMode(u8 bgmode);
extern void ham_SetBgVisible(u32 bgno,u32 active);
extern void ham_DeInitBg( u16 bgno);
extern void ham_SetBgXY(u16 bgno,u16 x, u16 y);







extern void ham_PutPixel(u32 x,u32 y,u32 col_value);
extern void ham_PutLine(s16 x1, s16 y1, s16 x2, s16 y2, u16 col_value);
extern void ham_LoadBitmap(void* src);
extern void ham_ClearBackBuffer(u32 col_value);
extern void ham_FlipBGBuffer(void);
extern u8 ham_GetBGBuffer(void);
# 3886 "/mnt/c/GBADev/include/mygba.h"
typedef struct win_info_typ
{
    u32 x1;
    u32 y1;
    u32 x2;
    u32 y2;
    u32 inside_on_for;

    u32 outside_on_for;

    u32 fx_on;
} win_info,*win_info_ptr;




extern win_info ham_win[];




extern void ham_InitWin(void);
extern void ham_CopyWinToHW(void);
extern void ham_CreateWin(u32 winno,u32 x1,u32 y1,u32 x2,u32 y2,u32 inside_on_for,u32 outside_on_for,u32 fx_on);
extern void ham_DeleteWin(u32 winno);






extern const s32 SIN_SFP32[];
extern const s32 COS_SFP32[];



extern void ham_RotBg(u8 bgno,u16 angle,s32 center_x,s32 center_y, s32 zoom);
extern void ham_RotBgEx(u8 bgno,u16 angle,s32 center_x,s32 center_y, u16 x_scroll, u16 y_scroll, s32 zoom_x, s32 zoom_y);
extern void ham_RotObjDefineSet(u8 rotset,u16 angle, s32 zoom_x, s32 zoom_y);







extern char* HexToChar(u32 hexval);
extern int CharToHex(char* thestr);
# 3944 "/mnt/c/GBADev/include/mygba.h"
typedef struct text_info_typ
{
    bg_info_ptr bg;
        map_info_ptr mi;
        tile_info_ptr ti;
        u8 front_col;
        u8 back_col;
        u8 bgno;
} text_info,*text_info_ptr;




extern text_info_ptr ham_text;
# 3971 "/mnt/c/GBADev/include/mygba.h"
extern void ham_InitText(u8 bgno);
extern void ham_DeInitText(void);
extern void ham_VBAText(char*, ...);
extern void ham_DrawText(u8 x, u8 y,char*, ...);
extern void ham_SetTextCol(u8 front_col,u8 back_col);
# 3984 "/mnt/c/GBADev/include/mygba.h"
extern int vsprintf(char *buf, const char *fmt, va_list args);
# 3994 "/mnt/c/GBADev/include/mygba.h"
extern void ham_Init(void);
extern u32 ham_GetHAMlibVersion(void);
extern void ham_ResetAll(void);
extern int atexit(void (*)(void));
# 4008 "/mnt/c/GBADev/include/mygba.h"
extern u8 ham_memvram_alloctable[];
extern u8 ham_memobj_alloctable[];
extern u8 ham_memobj_refcnt[];





extern void ham_InitMemVram(void);
extern void ham_InitMemObj(void);
extern void ham_InitMemSRAM(void);
extern u32 ham_AllocMemSRAM(u32 bytes_needed);
extern void ham_DeAllocMemSRAM(u32 blockno);
extern u8 ham_AllocMemVram(u16 size_u16,u8 cbb_only_mode);
extern u16 ham_AllocMemObj(u8 obj_shape,u8 obj_size,u8 col_mode);
extern void ham_DeAllocMemVram(u8 first_block);
extern void ham_DeAllocMemObj(u16 first_block);
extern void ham_ReAllocMemObj(u16 first_block);
# 4036 "/mnt/c/GBADev/include/mygba.h"
extern void ham_LoadBGPal(void* src,u16 size_u16s);
extern void ham_LoadBGPal16(void* src,u8 pal_no);
extern void ham_LoadBGPal256(void* src);
extern void ham_LoadObjPal(void* src,u16 size_u16s);
extern void ham_LoadObjPal16(void* src,u8 pal_no);
extern void ham_LoadObjPal256(void* src);
extern void ham_FadePal(u8 palno,s8 delta_per_call);
extern u8 ham_FadePalCol(u16 colno,s8 delta_per_call);
extern void ham_SetBgPalCol(u8 color_number, u16 rgb_value);
extern void ham_SetBgPalColRGB(u8 color_number, u8 r, u8 g, u8 b);
extern void ham_SetObjPalCol(u8 color_number, u16 rgb_value);
extern void ham_SetObjPalColRGB(u8 color_number, u8 r, u8 g, u8 b);
# 4059 "/mnt/c/GBADev/include/mygba.h"
extern void ham_EmptyInt();
extern void ham_InitIntrTable();
extern void ham_StartIntHandler(u8 intno,void* fp);
extern void ham_StopIntHandler(u8 intno);






typedef struct sample_info_typ sample_info ;

struct sample_info_typ
{
    u32 length;
        u8* data;
        u16 bitrate;
        u8 pre_divide_ratio;
        u16 divide_ratio;
        u16 mix_buf_size;
        u32 current_pos;
        u8 playing;
        struct sample_info_typ *next;
        struct sample_info_typ *prev;
};


typedef struct {
    u16 type;
    u16 stat;
    u32 freq;
    u32 loop;
    u32 size;
    s8 data[1];
} WaveData;


typedef struct mixer_info_typ
{
        u16 bitrate;

        u8* mix_buf[2];

        u16 mix_buf_size;
        u16 mix_buf_cycles;
        s8 buf_no;

        struct sample_info_typ *first_sample;
        struct sample_info_typ *last_sample;

}mixer_info,*mixer_info_ptr;


extern mixer_info ham_mixer;




extern void ham_InitSound(void);
extern void ham_InitDSound(void);
extern void ham_DeInitDSound(void);
extern void ham_InitMixer(u16 bitrate);
extern void ham_DeInitMixer(void);
extern void ham_SyncMixer(void) __attribute__ ((section (".iwram"), long_call));
extern void ham_UpdateMixer(void) __attribute__ ((section (".iwram"), long_call));
extern void ham_PlaySample(sample_info *sample);
extern void ham_ChangeSampleBitrate(sample_info* sample,u16 bitrate);
extern sample_info *ham_InitSample(u8* data,u32 length,u16 bitrate);
extern void ham_DeInitSample(sample_info *sample);
extern void ham_KillSample(sample_info *sample);
# 4138 "/mnt/c/GBADev/include/mygba.h"
typedef struct ramdata_info_typ
{
    u16 length_blocks;
    u32 length_bytes;
    u16 info_blockno;
    u16 data_blockno;
    u32 next_ramdata;
    u32 small_data_store;






    char ident[46];

} ramdata_info,*ramdata_info_ptr;


typedef struct ram_info_typ
{
    u32 ram_mode;




    u32 ham_config_found;


    void* saveRAM_start;

    u32 rootblk;

} ram_info,*ram_info_ptr;




extern void ham_ResetRAM(void);
extern u32 ham_InitRAM(u32 ram_type);
extern void ham_LoadRAMInfo(u32 blockno,ramdata_info_ptr pramdat);
extern void ham_SaveRAMInfo(ramdata_info_ptr pramdat);
extern void ham_SaveIntToRAM(char* ident_string,int the_number);
extern u32 ham_LoadIntFromRAM(char* ident_string, int* target_int);
extern void ham_SaveRawToRAM(char* ident_string,void* data, u32 length_in_bytes);
extern u32 ham_LoadRawFromRAM(char* ident_string, void* target_data);
# 4243 "/mnt/c/GBADev/include/mygba.h"
# 1 "/mnt/c/GBADev/include/gba.h" 1
# 4244 "/mnt/c/GBADev/include/mygba.h" 2
# 5 "main.c" 2





extern void drawCircle(unsigned int x, unsigned int y, unsigned int radius, unsigned int color);
extern void drawLine(unsigned int x1, unsigned int y1, unsigned int x2,unsigned int y2, unsigned int color);
extern void fillRect(unsigned int x,unsigned int y, unsigned int width, unsigned int height, unsigned int color);


void Aymara4x(void)

{
    unsigned int i, j;
    unsigned int color[7] = {(31 | (31 << 5) | (31 << 10)), (31 | (27 << 5) | (0 << 10)), (31 | (19 << 5) | (0 << 10)), (27 | (0 << 5) | (0 << 10)), (12 | (6 << 5) | (17 << 10)), (0 | (8 << 5) | (21 << 10)), (8 | (21 << 5) | (12 << 10))};
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 7; j++)
        {
            fillRect(j*11, i*11 + 77, 11, 11, color[(j-i+7)%7]);
            fillRect(143 - j*11, i*11 + 77, 11, 11, color[(j-i+7)%7]);
            fillRect(j*11, 66 - i*11, 11, 11, color[(j-i+7)%7]);
            fillRect(143 - j*11, 66 - i*11, 11, 11, color[(j-i+7)%7]);
        }
    }
}





int main(void)
{

   *(unsigned short *) 0x4000000 = 3 | 0x400;






   fillRect(0,0,100,10,31<<5);
   fillRect(105,45,30,70,(25 | (19 << 5) | (12 << 10)));
   drawLine(0,0,0,160,31);
   drawLine(0,80,120,80,31);
   drawLine(0,0,100,100,31<<10);
   drawLine(0,100,100,0,31<<10);
   drawCircle(75,75,20,31<<10);
   while(1);

        return 0;
}
