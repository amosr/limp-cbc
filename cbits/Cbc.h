
#ifdef FROM_CPP
extern "C" {
#else
typedef struct CbcModel CbcModel;
#endif

CbcModel* newModel();
void    freeModel(CbcModel* model);

void    loadProblem(CbcModel* model, int nrows,    int ncols,
                    int* starts,     int* indices, double* values,
                    double* collb,   double* colub,
                    double* obj,
                    double* rowlb, double* rowub);

void    setInteger (CbcModel* model, int col);

void    branchAndBound (CbcModel* model);

int getNumCols (CbcModel* model);

const double* getBestSolution (CbcModel* model);

void setObjSense(CbcModel* model, double dir);

void setLogLevel(CbcModel* model, int level);

int isProvenInfeasible(CbcModel* model);

#ifdef FROM_CPP
}
#endif
