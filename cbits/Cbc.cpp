#include <coin/CbcModel.hpp>
#include <coin/OsiClpSolverInterface.hpp>

#define FROM_CPP
#include "Cbc.h"
extern "C" {

CbcModel* newModel()
{
    OsiClpSolverInterface solver;
    CbcModel* model = new CbcModel(solver);
    return model;
}


void    freeModel(CbcModel* model)
{
    delete model;
}


void    loadProblem(CbcModel* model, int nrows,    int ncols,
                    int* starts,     int* indices, double* values,
                    double* collb,   double* colub,
                    double* obj,
                    double* rowlb, double* rowub)
{
    model->solver()->loadProblem
            ( nrows, ncols
            , starts, indices, values
            , collb, colub
            , obj
            , rowlb, rowub);
}


void    setInteger (CbcModel* model, int col)
{
    model->solver()->setInteger(col);
}


void    branchAndBound (CbcModel* model)
{
    model->branchAndBound();
}


int getNumCols (CbcModel* model)
{
    return model->solver()->getNumCols();
}


const double* getColSolution (CbcModel* model)
{
    return model->getColSolution();
}


void setObjSense(CbcModel* model, double dir)
{
    model->solver()->setObjSense(dir);
}

}
