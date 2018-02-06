#include <CbcModel.hpp>
#include <OsiClpSolverInterface.hpp>

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


void    loadProblem(CbcModel* model, int ncols,    int nrows,
                    int* starts,     int* indices, double* values,
                    double* collb,   double* colub,
                    double* obj,
                    double* rowlb, double* rowub)
{
    model->solver()->loadProblem
            ( ncols, nrows
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


const double* getBestSolution (CbcModel* model)
{
    return model->bestSolution();
}


void setObjSense(CbcModel* model, double dir)
{
    model->solver()->setObjSense(dir);
}

void setLogLevel(CbcModel* model, int level)
{
    model->setLogLevel(level);
}

int isProvenInfeasible(CbcModel* model)
{
    return model->isProvenInfeasible();
}

double getCoinDblMax()
{
    return COIN_DBL_MAX;
}

}
