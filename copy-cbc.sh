#!/bin/bash -e

CBC=../cbc-2.8.6
CBITS=cbits/coin/

rm -rf $CBITS
mkdir -p $CBITS

cp $CBC/Cbc/src/CbcBranchActual.hpp $CBITS
cp $CBC/Cbc/src/CbcBranchAllDifferent.cpp $CBITS
cp $CBC/Cbc/src/CbcBranchAllDifferent.hpp $CBITS
cp $CBC/Cbc/src/CbcBranchBase.hpp $CBITS
cp $CBC/Cbc/src/CbcBranchCut.cpp $CBITS
cp $CBC/Cbc/src/CbcBranchCut.hpp $CBITS
cp $CBC/Cbc/src/CbcBranchDecision.cpp $CBITS
cp $CBC/Cbc/src/CbcBranchDecision.hpp $CBITS
cp $CBC/Cbc/src/CbcBranchDefaultDecision.cpp $CBITS
cp $CBC/Cbc/src/CbcBranchDefaultDecision.hpp $CBITS
cp $CBC/Cbc/src/CbcBranchDynamic.cpp $CBITS
cp $CBC/Cbc/src/CbcBranchDynamic.hpp $CBITS
cp $CBC/Cbc/src/CbcBranchLotsize.cpp $CBITS
cp $CBC/Cbc/src/CbcBranchLotsize.hpp $CBITS
cp $CBC/Cbc/src/CbcBranchToFixLots.cpp $CBITS
cp $CBC/Cbc/src/CbcBranchToFixLots.hpp $CBITS
cp $CBC/Cbc/src/CbcBranchingObject.cpp $CBITS
cp $CBC/Cbc/src/CbcBranchingObject.hpp $CBITS
cp $CBC/Cbc/src/CbcCbcParam.cpp $CBITS
cp $CBC/Cbc/src/CbcClique.cpp $CBITS
cp $CBC/Cbc/src/CbcClique.hpp $CBITS
cp $CBC/Cbc/src/CbcCompare.hpp $CBITS
cp $CBC/Cbc/src/CbcCompareActual.hpp $CBITS
cp $CBC/Cbc/src/CbcCompareBase.hpp $CBITS
cp $CBC/Cbc/src/CbcCompareDefault.cpp $CBITS
cp $CBC/Cbc/src/CbcCompareDefault.hpp $CBITS
cp $CBC/Cbc/src/CbcCompareDepth.cpp $CBITS
cp $CBC/Cbc/src/CbcCompareDepth.hpp $CBITS
cp $CBC/Cbc/src/CbcCompareEstimate.cpp $CBITS
cp $CBC/Cbc/src/CbcCompareEstimate.hpp $CBITS
cp $CBC/Cbc/src/CbcCompareObjective.cpp $CBITS
cp $CBC/Cbc/src/CbcCompareObjective.hpp $CBITS
cp $CBC/Cbc/src/CbcConfig.h $CBITS
cp $CBC/Cbc/src/CbcConsequence.cpp $CBITS
cp $CBC/Cbc/src/CbcConsequence.hpp $CBITS
cp $CBC/Cbc/src/CbcCountRowCut.cpp $CBITS
cp $CBC/Cbc/src/CbcCountRowCut.hpp $CBITS
cp $CBC/Cbc/src/CbcCutGenerator.cpp $CBITS
cp $CBC/Cbc/src/CbcCutGenerator.hpp $CBITS
cp $CBC/Cbc/src/CbcCutModifier.cpp $CBITS
cp $CBC/Cbc/src/CbcCutModifier.hpp $CBITS
cp $CBC/Cbc/src/CbcCutSubsetModifier.cpp $CBITS
cp $CBC/Cbc/src/CbcCutSubsetModifier.hpp $CBITS
cp $CBC/Cbc/src/CbcDummyBranchingObject.cpp $CBITS
cp $CBC/Cbc/src/CbcDummyBranchingObject.hpp $CBITS
cp $CBC/Cbc/src/CbcEventHandler.cpp $CBITS
cp $CBC/Cbc/src/CbcEventHandler.hpp $CBITS
cp $CBC/Cbc/src/CbcFathom.cpp $CBITS
cp $CBC/Cbc/src/CbcFathom.hpp $CBITS
cp $CBC/Cbc/src/CbcFathomDynamicProgramming.cpp $CBITS
cp $CBC/Cbc/src/CbcFathomDynamicProgramming.hpp $CBITS
cp $CBC/Cbc/src/CbcFeasibilityBase.hpp $CBITS
cp $CBC/Cbc/src/CbcFixVariable.cpp $CBITS
cp $CBC/Cbc/src/CbcFixVariable.hpp $CBITS
cp $CBC/Cbc/src/CbcFollowOn.cpp $CBITS
cp $CBC/Cbc/src/CbcFollowOn.hpp $CBITS
cp $CBC/Cbc/src/CbcFullNodeInfo.cpp $CBITS
cp $CBC/Cbc/src/CbcFullNodeInfo.hpp $CBITS
cp $CBC/Cbc/src/CbcGeneral.cpp $CBITS
cp $CBC/Cbc/src/CbcGeneral.hpp $CBITS
cp $CBC/Cbc/src/CbcGeneralDepth.cpp $CBITS
cp $CBC/Cbc/src/CbcGeneralDepth.hpp $CBITS
cp $CBC/Cbc/src/CbcHeuristic.cpp $CBITS
cp $CBC/Cbc/src/CbcHeuristic.hpp $CBITS
cp $CBC/Cbc/src/CbcHeuristicDINS.cpp $CBITS
cp $CBC/Cbc/src/CbcHeuristicDINS.hpp $CBITS
cp $CBC/Cbc/src/CbcHeuristicDive.cpp $CBITS
cp $CBC/Cbc/src/CbcHeuristicDive.hpp $CBITS
cp $CBC/Cbc/src/CbcHeuristicDiveCoefficient.cpp $CBITS
cp $CBC/Cbc/src/CbcHeuristicDiveCoefficient.hpp $CBITS
cp $CBC/Cbc/src/CbcHeuristicDiveFractional.cpp $CBITS
cp $CBC/Cbc/src/CbcHeuristicDiveFractional.hpp $CBITS
cp $CBC/Cbc/src/CbcHeuristicDiveGuided.cpp $CBITS
cp $CBC/Cbc/src/CbcHeuristicDiveGuided.hpp $CBITS
cp $CBC/Cbc/src/CbcHeuristicDiveLineSearch.cpp $CBITS
cp $CBC/Cbc/src/CbcHeuristicDiveLineSearch.hpp $CBITS
cp $CBC/Cbc/src/CbcHeuristicDivePseudoCost.cpp $CBITS
cp $CBC/Cbc/src/CbcHeuristicDivePseudoCost.hpp $CBITS
cp $CBC/Cbc/src/CbcHeuristicDiveVectorLength.cpp $CBITS
cp $CBC/Cbc/src/CbcHeuristicDiveVectorLength.hpp $CBITS
cp $CBC/Cbc/src/CbcHeuristicFPump.cpp $CBITS
cp $CBC/Cbc/src/CbcHeuristicFPump.hpp $CBITS
cp $CBC/Cbc/src/CbcHeuristicGreedy.cpp $CBITS
cp $CBC/Cbc/src/CbcHeuristicGreedy.hpp $CBITS
cp $CBC/Cbc/src/CbcHeuristicLocal.cpp $CBITS
cp $CBC/Cbc/src/CbcHeuristicLocal.hpp $CBITS
cp $CBC/Cbc/src/CbcHeuristicPivotAndFix.cpp $CBITS
cp $CBC/Cbc/src/CbcHeuristicPivotAndFix.hpp $CBITS
cp $CBC/Cbc/src/CbcHeuristicRENS.cpp $CBITS
cp $CBC/Cbc/src/CbcHeuristicRENS.hpp $CBITS
cp $CBC/Cbc/src/CbcHeuristicRINS.cpp $CBITS
cp $CBC/Cbc/src/CbcHeuristicRINS.hpp $CBITS
cp $CBC/Cbc/src/CbcHeuristicRandRound.cpp $CBITS
cp $CBC/Cbc/src/CbcHeuristicRandRound.hpp $CBITS
cp $CBC/Cbc/src/CbcHeuristicVND.cpp $CBITS
cp $CBC/Cbc/src/CbcHeuristicVND.hpp $CBITS
cp $CBC/Cbc/src/CbcLinked.cpp $CBITS
cp $CBC/Cbc/src/CbcLinked.hpp $CBITS
cp $CBC/Cbc/src/CbcLinkedUtils.cpp $CBITS
cp $CBC/Cbc/src/CbcMessage.cpp $CBITS
cp $CBC/Cbc/src/CbcMessage.hpp $CBITS
cp $CBC/Cbc/src/CbcMipStartIO.cpp $CBITS
cp $CBC/Cbc/src/CbcMipStartIO.hpp $CBITS
cp $CBC/Cbc/src/CbcModel.cpp $CBITS
cp $CBC/Cbc/src/CbcModel.hpp $CBITS
cp $CBC/Cbc/src/CbcNWay.cpp $CBITS
cp $CBC/Cbc/src/CbcNWay.hpp $CBITS
cp $CBC/Cbc/src/CbcNode.cpp $CBITS
cp $CBC/Cbc/src/CbcNode.hpp $CBITS
cp $CBC/Cbc/src/CbcNodeInfo.cpp $CBITS
cp $CBC/Cbc/src/CbcNodeInfo.hpp $CBITS
cp $CBC/Cbc/src/CbcObject.cpp $CBITS
cp $CBC/Cbc/src/CbcObject.hpp $CBITS
cp $CBC/Cbc/src/CbcObjectUpdateData.cpp $CBITS
cp $CBC/Cbc/src/CbcObjectUpdateData.hpp $CBITS
cp $CBC/Cbc/src/CbcPartialNodeInfo.cpp $CBITS
cp $CBC/Cbc/src/CbcPartialNodeInfo.hpp $CBITS
cp $CBC/Cbc/src/CbcSOS.cpp $CBITS
cp $CBC/Cbc/src/CbcSOS.hpp $CBITS
cp $CBC/Cbc/src/CbcSimpleInteger.cpp $CBITS
cp $CBC/Cbc/src/CbcSimpleInteger.hpp $CBITS
cp $CBC/Cbc/src/CbcSimpleIntegerDynamicPseudoCost.cpp $CBITS
cp $CBC/Cbc/src/CbcSimpleIntegerDynamicPseudoCost.hpp $CBITS
cp $CBC/Cbc/src/CbcSimpleIntegerPseudoCost.cpp $CBITS
cp $CBC/Cbc/src/CbcSimpleIntegerPseudoCost.hpp $CBITS
cp $CBC/Cbc/src/CbcSolver.cpp $CBITS
cp $CBC/Cbc/src/CbcSolver.hpp $CBITS
cp $CBC/Cbc/src/CbcSolverAnalyze.cpp $CBITS
cp $CBC/Cbc/src/CbcSolverAnalyze.hpp $CBITS
cp $CBC/Cbc/src/CbcSolverExpandKnapsack.cpp $CBITS
cp $CBC/Cbc/src/CbcSolverExpandKnapsack.hpp $CBITS
cp $CBC/Cbc/src/CbcSolverHeuristics.cpp $CBITS
cp $CBC/Cbc/src/CbcSolverHeuristics.hpp $CBITS
cp $CBC/Cbc/src/CbcStatistics.cpp $CBITS
cp $CBC/Cbc/src/CbcStatistics.hpp $CBITS
cp $CBC/Cbc/src/CbcStrategy.cpp $CBITS
cp $CBC/Cbc/src/CbcStrategy.hpp $CBITS
cp $CBC/Cbc/src/CbcSubProblem.cpp $CBITS
cp $CBC/Cbc/src/CbcSubProblem.hpp $CBITS
cp $CBC/Cbc/src/CbcThread.cpp $CBITS
cp $CBC/Cbc/src/CbcThread.hpp $CBITS
cp $CBC/Cbc/src/CbcTree.cpp $CBITS
cp $CBC/Cbc/src/CbcTree.hpp $CBITS
cp $CBC/Cbc/src/CbcTreeLocal.cpp $CBITS
cp $CBC/Cbc/src/CbcTreeLocal.hpp $CBITS
cp $CBC/Cbc/src/Cbc_C_Interface.cpp $CBITS
cp $CBC/Cbc/src/Cbc_C_Interface.h $CBITS
cp $CBC/Cbc/src/Cbc_ampl.cpp $CBITS
cp $CBC/Cbc/src/Cbc_ampl.h $CBITS
cp $CBC/Cbc/src/OsiCbc/OsiCbcSolverInterface.cpp $CBITS
cp $CBC/Cbc/src/OsiCbc/OsiCbcSolverInterface.hpp $CBITS
cp $CBC/Cbc/src/config_cbc_default.h $CBITS
cp $CBC/Cgl/src/CglAllDifferent/CglAllDifferent.cpp $CBITS
cp $CBC/Cgl/src/CglAllDifferent/CglAllDifferent.hpp $CBITS
cp $CBC/Cgl/src/CglClique/CglClique.cpp $CBITS
cp $CBC/Cgl/src/CglClique/CglClique.hpp $CBITS
cp $CBC/Cgl/src/CglClique/CglCliqueHelper.cpp $CBITS
cp $CBC/Cgl/src/CglConfig.h $CBITS
cp $CBC/Cgl/src/CglCutGenerator.cpp $CBITS
cp $CBC/Cgl/src/CglCutGenerator.hpp $CBITS
cp $CBC/Cgl/src/CglDuplicateRow/CglDuplicateRow.cpp $CBITS
cp $CBC/Cgl/src/CglDuplicateRow/CglDuplicateRow.hpp $CBITS
cp $CBC/Cgl/src/CglFlowCover/CglFlowCover.cpp $CBITS
cp $CBC/Cgl/src/CglFlowCover/CglFlowCover.hpp $CBITS
cp $CBC/Cgl/src/CglGMI/CglGMI.cpp $CBITS
cp $CBC/Cgl/src/CglGMI/CglGMI.hpp $CBITS
cp $CBC/Cgl/src/CglGMI/CglGMIParam.cpp $CBITS
cp $CBC/Cgl/src/CglGMI/CglGMIParam.hpp $CBITS
cp $CBC/Cgl/src/CglGomory/CglGomory.cpp $CBITS
cp $CBC/Cgl/src/CglGomory/CglGomory.hpp $CBITS
cp $CBC/Cgl/src/CglKnapsackCover/CglKnapsackCover.cpp $CBITS
cp $CBC/Cgl/src/CglKnapsackCover/CglKnapsackCover.hpp $CBITS
cp $CBC/Cgl/src/CglLandP/CglLandP.cpp $CBITS
cp $CBC/Cgl/src/CglLandP/CglLandP.hpp $CBITS
cp $CBC/Cgl/src/CglLandP/CglLandPMessages.cpp $CBITS
cp $CBC/Cgl/src/CglLandP/CglLandPMessages.hpp $CBITS
cp $CBC/Cgl/src/CglLandP/CglLandPSimplex.cpp $CBITS
cp $CBC/Cgl/src/CglLandP/CglLandPSimplex.hpp $CBITS
cp $CBC/Cgl/src/CglLandP/CglLandPTabRow.cpp $CBITS
cp $CBC/Cgl/src/CglLandP/CglLandPTabRow.hpp $CBITS
cp $CBC/Cgl/src/CglLandP/CglLandPTest.cpp $CBITS
cp $CBC/Cgl/src/CglLandP/CglLandPUtils.cpp $CBITS
cp $CBC/Cgl/src/CglLandP/CglLandPUtils.hpp $CBITS
cp $CBC/Cgl/src/CglLandP/CglLandPValidator.cpp $CBITS
cp $CBC/Cgl/src/CglLandP/CglLandPValidator.hpp $CBITS
cp $CBC/Cgl/src/CglLiftAndProject/CglLiftAndProject.cpp $CBITS
cp $CBC/Cgl/src/CglLiftAndProject/CglLiftAndProject.hpp $CBITS
cp $CBC/Cgl/src/CglMessage.cpp $CBITS
cp $CBC/Cgl/src/CglMessage.hpp $CBITS
cp $CBC/Cgl/src/CglMixedIntegerRounding/CglMixedIntegerRounding.cpp $CBITS
cp $CBC/Cgl/src/CglMixedIntegerRounding/CglMixedIntegerRounding.hpp $CBITS
cp $CBC/Cgl/src/CglMixedIntegerRounding2/CglMixedIntegerRounding2.cpp $CBITS
cp $CBC/Cgl/src/CglMixedIntegerRounding2/CglMixedIntegerRounding2.hpp $CBITS
cp $CBC/Cgl/src/CglOddHole/CglOddHole.cpp $CBITS
cp $CBC/Cgl/src/CglOddHole/CglOddHole.hpp $CBITS
cp $CBC/Cgl/src/CglParam.cpp $CBITS
cp $CBC/Cgl/src/CglParam.hpp $CBITS
cp $CBC/Cgl/src/CglPreProcess/CglPreProcess.cpp $CBITS
cp $CBC/Cgl/src/CglPreProcess/CglPreProcess.hpp $CBITS
cp $CBC/Cgl/src/CglProbing/CglProbing.cpp $CBITS
cp $CBC/Cgl/src/CglProbing/CglProbing.hpp $CBITS
cp $CBC/Cgl/src/CglRedSplit/CglRedSplit.cpp $CBITS
cp $CBC/Cgl/src/CglRedSplit/CglRedSplit.hpp $CBITS
cp $CBC/Cgl/src/CglRedSplit/CglRedSplitParam.cpp $CBITS
cp $CBC/Cgl/src/CglRedSplit/CglRedSplitParam.hpp $CBITS
cp $CBC/Cgl/src/CglRedSplit2/CglRedSplit2.cpp $CBITS
cp $CBC/Cgl/src/CglRedSplit2/CglRedSplit2.hpp $CBITS
cp $CBC/Cgl/src/CglRedSplit2/CglRedSplit2Param.cpp $CBITS
cp $CBC/Cgl/src/CglRedSplit2/CglRedSplit2Param.hpp $CBITS
cp $CBC/Cgl/src/CglResidualCapacity/CglResidualCapacity.cpp $CBITS
cp $CBC/Cgl/src/CglResidualCapacity/CglResidualCapacity.hpp $CBITS
cp $CBC/Cgl/src/CglSimpleRounding/CglSimpleRounding.cpp $CBITS
cp $CBC/Cgl/src/CglSimpleRounding/CglSimpleRounding.hpp $CBITS
cp $CBC/Cgl/src/CglStored.cpp $CBITS
cp $CBC/Cgl/src/CglStored.hpp $CBITS
cp $CBC/Cgl/src/CglTreeInfo.cpp $CBITS
cp $CBC/Cgl/src/CglTreeInfo.hpp $CBITS
cp $CBC/Cgl/src/CglTwomir/CglTwomir.cpp $CBITS
cp $CBC/Cgl/src/CglTwomir/CglTwomir.hpp $CBITS
cp $CBC/Cgl/src/CglZeroHalf/Cgl012cut.cpp $CBITS
cp $CBC/Cgl/src/CglZeroHalf/Cgl012cut.hpp $CBITS
cp $CBC/Cgl/src/CglZeroHalf/CglZeroHalf.cpp $CBITS
cp $CBC/Cgl/src/CglZeroHalf/CglZeroHalf.hpp $CBITS
cp $CBC/Cgl/src/config_cgl_default.h $CBITS
cp $CBC/Clp/src/AbcCommon.hpp $CBITS
cp $CBC/Clp/src/CbcOrClpParam.cpp $CBITS
cp $CBC/Clp/src/CbcOrClpParam.hpp $CBITS
cp $CBC/Clp/src/ClpCholeskyBase.cpp $CBITS
cp $CBC/Clp/src/ClpCholeskyBase.hpp $CBITS
cp $CBC/Clp/src/ClpCholeskyDense.cpp $CBITS
cp $CBC/Clp/src/ClpCholeskyDense.hpp $CBITS
cp $CBC/Clp/src/ClpCholeskyWssmp.hpp $CBITS
cp $CBC/Clp/src/ClpConfig.h $CBITS
cp $CBC/Clp/src/ClpConstraint.cpp $CBITS
cp $CBC/Clp/src/ClpConstraint.hpp $CBITS
cp $CBC/Clp/src/ClpConstraintLinear.cpp $CBITS
cp $CBC/Clp/src/ClpConstraintLinear.hpp $CBITS
cp $CBC/Clp/src/ClpConstraintQuadratic.cpp $CBITS
cp $CBC/Clp/src/ClpConstraintQuadratic.hpp $CBITS
cp $CBC/Clp/src/ClpDualRowDantzig.cpp $CBITS
cp $CBC/Clp/src/ClpDualRowDantzig.hpp $CBITS
cp $CBC/Clp/src/ClpDualRowPivot.cpp $CBITS
cp $CBC/Clp/src/ClpDualRowPivot.hpp $CBITS
cp $CBC/Clp/src/ClpDualRowSteepest.cpp $CBITS
cp $CBC/Clp/src/ClpDualRowSteepest.hpp $CBITS
cp $CBC/Clp/src/ClpDummyMatrix.cpp $CBITS
cp $CBC/Clp/src/ClpDummyMatrix.hpp $CBITS
cp $CBC/Clp/src/ClpDynamicExampleMatrix.cpp $CBITS
cp $CBC/Clp/src/ClpDynamicExampleMatrix.hpp $CBITS
cp $CBC/Clp/src/ClpDynamicMatrix.cpp $CBITS
cp $CBC/Clp/src/ClpDynamicMatrix.hpp $CBITS
cp $CBC/Clp/src/ClpEventHandler.cpp $CBITS
cp $CBC/Clp/src/ClpEventHandler.hpp $CBITS
cp $CBC/Clp/src/ClpFactorization.cpp $CBITS
cp $CBC/Clp/src/ClpFactorization.hpp $CBITS
cp $CBC/Clp/src/ClpGubDynamicMatrix.cpp $CBITS
cp $CBC/Clp/src/ClpGubDynamicMatrix.hpp $CBITS
cp $CBC/Clp/src/ClpGubMatrix.cpp $CBITS
cp $CBC/Clp/src/ClpGubMatrix.hpp $CBITS
cp $CBC/Clp/src/ClpHelperFunctions.cpp $CBITS
cp $CBC/Clp/src/ClpHelperFunctions.hpp $CBITS
cp $CBC/Clp/src/ClpInterior.cpp $CBITS
cp $CBC/Clp/src/ClpInterior.hpp $CBITS
cp $CBC/Clp/src/ClpLinearObjective.cpp $CBITS
cp $CBC/Clp/src/ClpLinearObjective.hpp $CBITS
cp $CBC/Clp/src/ClpLsqr.cpp $CBITS
cp $CBC/Clp/src/ClpLsqr.hpp $CBITS
cp $CBC/Clp/src/ClpMatrixBase.cpp $CBITS
cp $CBC/Clp/src/ClpMatrixBase.hpp $CBITS
cp $CBC/Clp/src/ClpMessage.cpp $CBITS
cp $CBC/Clp/src/ClpMessage.hpp $CBITS
cp $CBC/Clp/src/ClpModel.cpp $CBITS
cp $CBC/Clp/src/ClpModel.hpp $CBITS
cp $CBC/Clp/src/ClpNetworkBasis.cpp $CBITS
cp $CBC/Clp/src/ClpNetworkBasis.hpp $CBITS
cp $CBC/Clp/src/ClpNetworkMatrix.cpp $CBITS
cp $CBC/Clp/src/ClpNetworkMatrix.hpp $CBITS
cp $CBC/Clp/src/ClpNode.cpp $CBITS
cp $CBC/Clp/src/ClpNode.hpp $CBITS
cp $CBC/Clp/src/ClpNonLinearCost.cpp $CBITS
cp $CBC/Clp/src/ClpNonLinearCost.hpp $CBITS
cp $CBC/Clp/src/ClpObjective.cpp $CBITS
cp $CBC/Clp/src/ClpObjective.hpp $CBITS
cp $CBC/Clp/src/ClpPackedMatrix.cpp $CBITS
cp $CBC/Clp/src/ClpPackedMatrix.hpp $CBITS
cp $CBC/Clp/src/ClpParameters.hpp $CBITS
cp $CBC/Clp/src/ClpPdco.cpp $CBITS
cp $CBC/Clp/src/ClpPdco.hpp $CBITS
cp $CBC/Clp/src/ClpPdcoBase.cpp $CBITS
cp $CBC/Clp/src/ClpPdcoBase.hpp $CBITS
cp $CBC/Clp/src/ClpPlusMinusOneMatrix.cpp $CBITS
cp $CBC/Clp/src/ClpPlusMinusOneMatrix.hpp $CBITS
cp $CBC/Clp/src/ClpPredictorCorrector.cpp $CBITS
cp $CBC/Clp/src/ClpPredictorCorrector.hpp $CBITS
cp $CBC/Clp/src/ClpPresolve.cpp $CBITS
cp $CBC/Clp/src/ClpPresolve.hpp $CBITS
cp $CBC/Clp/src/ClpPrimalColumnDantzig.cpp $CBITS
cp $CBC/Clp/src/ClpPrimalColumnDantzig.hpp $CBITS
cp $CBC/Clp/src/ClpPrimalColumnPivot.cpp $CBITS
cp $CBC/Clp/src/ClpPrimalColumnPivot.hpp $CBITS
cp $CBC/Clp/src/ClpPrimalColumnSteepest.cpp $CBITS
cp $CBC/Clp/src/ClpPrimalColumnSteepest.hpp $CBITS
cp $CBC/Clp/src/ClpQuadraticObjective.cpp $CBITS
cp $CBC/Clp/src/ClpQuadraticObjective.hpp $CBITS
cp $CBC/Clp/src/ClpSimplex.cpp $CBITS
cp $CBC/Clp/src/ClpSimplex.hpp $CBITS
cp $CBC/Clp/src/ClpSimplexDual.cpp $CBITS
cp $CBC/Clp/src/ClpSimplexDual.hpp $CBITS
cp $CBC/Clp/src/ClpSimplexNonlinear.cpp $CBITS
cp $CBC/Clp/src/ClpSimplexNonlinear.hpp $CBITS
cp $CBC/Clp/src/ClpSimplexOther.cpp $CBITS
cp $CBC/Clp/src/ClpSimplexOther.hpp $CBITS
cp $CBC/Clp/src/ClpSimplexPrimal.cpp $CBITS
cp $CBC/Clp/src/ClpSimplexPrimal.hpp $CBITS
cp $CBC/Clp/src/ClpSolve.cpp $CBITS
cp $CBC/Clp/src/ClpSolve.hpp $CBITS
cp $CBC/Clp/src/Clp_C_Interface.cpp $CBITS
cp $CBC/Clp/src/Clp_C_Interface.h $CBITS
cp $CBC/Clp/src/IdiSolve.cpp $CBITS
cp $CBC/Clp/src/Idiot.cpp $CBITS
cp $CBC/Clp/src/Idiot.hpp $CBITS
cp $CBC/Clp/src/OsiClp/OsiClpSolverInterface.cpp $CBITS
cp $CBC/Clp/src/OsiClp/OsiClpSolverInterface.hpp $CBITS
cp $CBC/Clp/src/config_clp_default.h $CBITS
cp $CBC/CoinUtils/src/CoinAlloc.cpp $CBITS
cp $CBC/CoinUtils/src/CoinAlloc.hpp $CBITS
cp $CBC/CoinUtils/src/CoinBuild.cpp $CBITS
cp $CBC/CoinUtils/src/CoinBuild.hpp $CBITS
cp $CBC/CoinUtils/src/CoinDenseFactorization.cpp $CBITS
cp $CBC/CoinUtils/src/CoinDenseFactorization.hpp $CBITS
cp $CBC/CoinUtils/src/CoinDenseVector.cpp $CBITS
cp $CBC/CoinUtils/src/CoinDenseVector.hpp $CBITS
cp $CBC/CoinUtils/src/CoinDistance.hpp $CBITS
cp $CBC/CoinUtils/src/CoinError.cpp $CBITS
cp $CBC/CoinUtils/src/CoinError.hpp $CBITS
cp $CBC/CoinUtils/src/CoinFactorization.hpp $CBITS
cp $CBC/CoinUtils/src/CoinFactorization1.cpp $CBITS
cp $CBC/CoinUtils/src/CoinFactorization2.cpp $CBITS
cp $CBC/CoinUtils/src/CoinFactorization3.cpp $CBITS
cp $CBC/CoinUtils/src/CoinFactorization4.cpp $CBITS
cp $CBC/CoinUtils/src/CoinFileIO.cpp $CBITS
cp $CBC/CoinUtils/src/CoinFileIO.hpp $CBITS
cp $CBC/CoinUtils/src/CoinFinite.cpp $CBITS
cp $CBC/CoinUtils/src/CoinFinite.hpp $CBITS
cp $CBC/CoinUtils/src/CoinFloatEqual.hpp $CBITS
cp $CBC/CoinUtils/src/CoinHelperFunctions.hpp $CBITS
cp $CBC/CoinUtils/src/CoinIndexedVector.cpp $CBITS
cp $CBC/CoinUtils/src/CoinIndexedVector.hpp $CBITS
cp $CBC/CoinUtils/src/CoinLpIO.cpp $CBITS
cp $CBC/CoinUtils/src/CoinLpIO.hpp $CBITS
cp $CBC/CoinUtils/src/CoinMessage.cpp $CBITS
cp $CBC/CoinUtils/src/CoinMessage.hpp $CBITS
cp $CBC/CoinUtils/src/CoinMessageHandler.cpp $CBITS
cp $CBC/CoinUtils/src/CoinMessageHandler.hpp $CBITS
cp $CBC/CoinUtils/src/CoinModel.cpp $CBITS
cp $CBC/CoinUtils/src/CoinModel.hpp $CBITS
cp $CBC/CoinUtils/src/CoinModelUseful.cpp $CBITS
cp $CBC/CoinUtils/src/CoinModelUseful.hpp $CBITS
cp $CBC/CoinUtils/src/CoinModelUseful2.cpp $CBITS
cp $CBC/CoinUtils/src/CoinMpsIO.cpp $CBITS
cp $CBC/CoinUtils/src/CoinMpsIO.hpp $CBITS
cp $CBC/CoinUtils/src/CoinOslC.h $CBITS
cp $CBC/CoinUtils/src/CoinOslFactorization.cpp $CBITS
cp $CBC/CoinUtils/src/CoinOslFactorization.hpp $CBITS
cp $CBC/CoinUtils/src/CoinOslFactorization2.cpp $CBITS
cp $CBC/CoinUtils/src/CoinOslFactorization3.cpp $CBITS
cp $CBC/CoinUtils/src/CoinPackedMatrix.cpp $CBITS
cp $CBC/CoinUtils/src/CoinPackedMatrix.hpp $CBITS
cp $CBC/CoinUtils/src/CoinPackedVector.cpp $CBITS
cp $CBC/CoinUtils/src/CoinPackedVector.hpp $CBITS
cp $CBC/CoinUtils/src/CoinPackedVectorBase.cpp $CBITS
cp $CBC/CoinUtils/src/CoinPackedVectorBase.hpp $CBITS
cp $CBC/CoinUtils/src/CoinParam.cpp $CBITS
cp $CBC/CoinUtils/src/CoinParam.hpp $CBITS
cp $CBC/CoinUtils/src/CoinParamUtils.cpp $CBITS
cp $CBC/CoinUtils/src/CoinPostsolveMatrix.cpp $CBITS
cp $CBC/CoinUtils/src/CoinPragma.hpp $CBITS
cp $CBC/CoinUtils/src/CoinPrePostsolveMatrix.cpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolveDoubleton.cpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolveDoubleton.hpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolveDual.cpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolveDual.hpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolveDupcol.cpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolveDupcol.hpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolveEmpty.cpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolveEmpty.hpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolveFixed.cpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolveFixed.hpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolveForcing.cpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolveForcing.hpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolveHelperFunctions.cpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolveImpliedFree.cpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolveImpliedFree.hpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolveIsolated.cpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolveIsolated.hpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolveMatrix.cpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolveMatrix.hpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolveMonitor.cpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolveMonitor.hpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolvePsdebug.cpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolvePsdebug.hpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolveSingleton.cpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolveSingleton.hpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolveSubst.cpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolveSubst.hpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolveTighten.cpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolveTighten.hpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolveTripleton.cpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolveTripleton.hpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolveUseless.cpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolveUseless.hpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolveZeros.cpp $CBITS
cp $CBC/CoinUtils/src/CoinPresolveZeros.hpp $CBITS
cp $CBC/CoinUtils/src/CoinSearchTree.cpp $CBITS
cp $CBC/CoinUtils/src/CoinSearchTree.hpp $CBITS
cp $CBC/CoinUtils/src/CoinShallowPackedVector.cpp $CBITS
cp $CBC/CoinUtils/src/CoinShallowPackedVector.hpp $CBITS
cp $CBC/CoinUtils/src/CoinSignal.hpp $CBITS
cp $CBC/CoinUtils/src/CoinSimpFactorization.cpp $CBITS
cp $CBC/CoinUtils/src/CoinSimpFactorization.hpp $CBITS
cp $CBC/CoinUtils/src/CoinSnapshot.cpp $CBITS
cp $CBC/CoinUtils/src/CoinSnapshot.hpp $CBITS
cp $CBC/CoinUtils/src/CoinSort.hpp $CBITS
cp $CBC/CoinUtils/src/CoinStructuredModel.cpp $CBITS
cp $CBC/CoinUtils/src/CoinStructuredModel.hpp $CBITS
cp $CBC/CoinUtils/src/CoinTime.hpp $CBITS
cp $CBC/CoinUtils/src/CoinTypes.hpp $CBITS
cp $CBC/CoinUtils/src/CoinUtilsConfig.h $CBITS
cp $CBC/CoinUtils/src/CoinWarmStart.hpp $CBITS
cp $CBC/CoinUtils/src/CoinWarmStartBasis.cpp $CBITS
cp $CBC/CoinUtils/src/CoinWarmStartBasis.hpp $CBITS
cp $CBC/CoinUtils/src/CoinWarmStartDual.cpp $CBITS
cp $CBC/CoinUtils/src/CoinWarmStartDual.hpp $CBITS
cp $CBC/CoinUtils/src/CoinWarmStartPrimalDual.cpp $CBITS
cp $CBC/CoinUtils/src/CoinWarmStartPrimalDual.hpp $CBITS
cp $CBC/CoinUtils/src/CoinWarmStartVector.cpp $CBITS
cp $CBC/CoinUtils/src/CoinWarmStartVector.hpp $CBITS
cp $CBC/CoinUtils/src/Coin_C_defines.h $CBITS
cp $CBC/CoinUtils/src/config_coinutils_default.h $CBITS
cp $CBC/Osi/src/Osi/OsiAuxInfo.cpp $CBITS
cp $CBC/Osi/src/Osi/OsiAuxInfo.hpp $CBITS
cp $CBC/Osi/src/Osi/OsiBranchingObject.cpp $CBITS
cp $CBC/Osi/src/Osi/OsiBranchingObject.hpp $CBITS
cp $CBC/Osi/src/Osi/OsiChooseVariable.cpp $CBITS
cp $CBC/Osi/src/Osi/OsiChooseVariable.hpp $CBITS
cp $CBC/Osi/src/Osi/OsiColCut.cpp $CBITS
cp $CBC/Osi/src/Osi/OsiColCut.hpp $CBITS
cp $CBC/Osi/src/Osi/OsiCollections.hpp $CBITS
cp $CBC/Osi/src/Osi/OsiConfig.h $CBITS
cp $CBC/Osi/src/Osi/OsiCut.cpp $CBITS
cp $CBC/Osi/src/Osi/OsiCut.hpp $CBITS
cp $CBC/Osi/src/Osi/OsiCuts.cpp $CBITS
cp $CBC/Osi/src/Osi/OsiCuts.hpp $CBITS
cp $CBC/Osi/src/Osi/OsiNames.cpp $CBITS
cp $CBC/Osi/src/Osi/OsiPresolve.cpp $CBITS
cp $CBC/Osi/src/Osi/OsiPresolve.hpp $CBITS
cp $CBC/Osi/src/Osi/OsiRowCut.cpp $CBITS
cp $CBC/Osi/src/Osi/OsiRowCut.hpp $CBITS
cp $CBC/Osi/src/Osi/OsiRowCutDebugger.cpp $CBITS
cp $CBC/Osi/src/Osi/OsiRowCutDebugger.hpp $CBITS
cp $CBC/Osi/src/Osi/OsiSolverBranch.cpp $CBITS
cp $CBC/Osi/src/Osi/OsiSolverBranch.hpp $CBITS
cp $CBC/Osi/src/Osi/OsiSolverInterface.cpp $CBITS
cp $CBC/Osi/src/Osi/OsiSolverInterface.hpp $CBITS
cp $CBC/Osi/src/Osi/OsiSolverParameters.hpp $CBITS
cp $CBC/Osi/src/Osi/config_osi_default.h $CBITS

patch -p0 <<EOF
--- cbits/coin/CglClique.cpp (2.8.6)
+++ cbits/coin/CglClique.cpp (limb-cbc)
@@ -785,7 +785,7 @@
 }
 /*****************************************************************************/
 
-#include "../CglProbing/CglProbing.hpp"
+#include "CglProbing.hpp"
 CglFakeClique::CglFakeClique(OsiSolverInterface * solver, bool setPacking) :
   CglClique(setPacking,true)
 {
--- cbits/coin/ClpSimplex.cpp (2.8.6)
+++ cbits/coin/ClpSimplex.cpp (limb-cbc)
@@ -5987,14 +5987,6 @@
 }
 #include "ClpPredictorCorrector.hpp"
 #include "ClpCholeskyBase.hpp"
-// Preference is WSSMP, UFL (just ordering), MUMPS, TAUCS then base
-#include "ClpCholeskyWssmp.hpp"
-#include "ClpCholeskyWssmpKKT.hpp"
-#include "ClpCholeskyUfl.hpp"
-#include "ClpCholeskyMumps.hpp"
-#if TAUCS_BARRIER
-#include "ClpCholeskyTaucs.hpp"
-#endif
 #include "ClpPresolve.hpp"
 /* Solves using barrier (assumes you have good cholesky factor code).
    Does crossover to simplex if asked*/
--- cbits/coin/ClpSolve.cpp (2.8.6)
+++ cbits/coin/ClpSolve.cpp (limb-cbc)
@@ -48,15 +48,6 @@
 #include "ClpPresolve.hpp"
 #ifndef SLIM_CLP
 #include "Idiot.hpp"
-#ifdef COIN_HAS_WSMP
-#include "ClpCholeskyWssmp.hpp"
-#include "ClpCholeskyWssmpKKT.hpp"
-#endif
-#include "ClpCholeskyUfl.hpp"
-#ifdef TAUCS_BARRIER
-#include "ClpCholeskyTaucs.hpp"
-#endif
-#include "ClpCholeskyMumps.hpp"
 #ifdef COIN_HAS_VOL
 #include "VolVolume.hpp"
 #include "CoinHelperFunctions.hpp"
EOF

# Tests are currently not included, pretty sure we won't need these
# cp $CBC/Cbc/src/unitTestClp.cpp $CBITS
# cp $CBC/Cgl/src/CglClique/CglCliqueTest.cpp $CBITS
# cp $CBC/Cgl/src/CglFlowCover/CglFlowCoverTest.cpp $CBITS
# cp $CBC/Cgl/src/CglGomory/CglGomoryTest.cpp $CBITS
# cp $CBC/Cgl/src/CglKnapsackCover/CglKnapsackCoverTest.cpp $CBITS
# cp $CBC/Cgl/src/CglMixedIntegerRounding/CglMixedIntegerRoundingTest.cpp $CBITS
# cp $CBC/Cgl/src/CglMixedIntegerRounding2/CglMixedIntegerRounding2Test.cpp $CBITS
# cp $CBC/Cgl/src/CglOddHole/CglOddHoleTest.cpp $CBITS
# cp $CBC/Cgl/src/CglProbing/CglProbingTest.cpp $CBITS
# cp $CBC/Cgl/src/CglRedSplit/CglRedSplitTest.cpp $CBITS
# cp $CBC/Cgl/src/CglRedSplit2/CglRedSplit2Test.cpp $CBITS
# cp $CBC/Cgl/src/CglResidualCapacity/CglResidualCapacityTest.cpp $CBITS
# cp $CBC/Cgl/src/CglSimpleRounding/CglSimpleRoundingTest.cpp $CBITS
# cp $CBC/Cgl/src/CglTwomir/CglTwomirTest.cpp $CBITS
# cp $CBC/Cgl/src/CglZeroHalf/CglZeroHalfTest.cpp $CBITS
# cp $CBC/Osi/src/OsiCommonTest/OsiColCutTest.cpp $CBITS
# cp $CBC/Osi/src/OsiCommonTest/OsiColCutTest.hpp $CBITS
# cp $CBC/Osi/src/OsiCommonTest/OsiCutsTest.cpp $CBITS
# cp $CBC/Osi/src/OsiCommonTest/OsiCutsTest.hpp $CBITS
# cp $CBC/Osi/src/OsiCommonTest/OsiNetlibTest.cpp $CBITS
# cp $CBC/Osi/src/OsiCommonTest/OsiNetlibTest.hpp $CBITS
# cp $CBC/Osi/src/OsiCommonTest/OsiRowCutDebuggerTest.cpp $CBITS
# cp $CBC/Osi/src/OsiCommonTest/OsiRowCutDebuggerTest.hpp $CBITS
# cp $CBC/Osi/src/OsiCommonTest/OsiRowCutTest.cpp $CBITS
# cp $CBC/Osi/src/OsiCommonTest/OsiRowCutTest.hpp $CBITS
# cp $CBC/Osi/src/OsiCommonTest/OsiSimplexAPITest.cpp $CBITS
# cp $CBC/Osi/src/OsiCommonTest/OsiSimplexAPITest.hpp $CBITS
# cp $CBC/Osi/src/OsiCommonTest/OsiSolverInterfaceTest.cpp $CBITS
# cp $CBC/Osi/src/OsiCommonTest/OsiSolverInterfaceTest.hpp $CBITS
# cp $CBC/Osi/src/OsiCommonTest/OsiUnitTestUtils.cpp $CBITS
# cp $CBC/Osi/src/OsiCommonTest/OsiUnitTestUtils.hpp $CBITS
