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

}
