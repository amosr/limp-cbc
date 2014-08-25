
#ifdef FROM_CPP
extern "C" {
#else
typedef struct CbcModel CbcModel;
#endif

CbcModel* newModel();
void    freeModel(CbcModel* model);

#ifdef FROM_CPP
}
#endif
