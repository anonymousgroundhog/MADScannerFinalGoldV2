.class Lorg/ejml/equation/Operation$81;
.super Lorg/ejml/equation/Operation;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ejml/equation/Operation;->solve(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field solver:Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic val$A:Lorg/ejml/equation/Variable;

.field final synthetic val$B:Lorg/ejml/equation/Variable;

.field final synthetic val$output:Lorg/ejml/equation/VariableMatrix;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableMatrix;)V
    .locals 0

    .line 1507
    iput-object p2, p0, Lorg/ejml/equation/Operation$81;->val$A:Lorg/ejml/equation/Variable;

    iput-object p3, p0, Lorg/ejml/equation/Operation$81;->val$B:Lorg/ejml/equation/Variable;

    iput-object p4, p0, Lorg/ejml/equation/Operation$81;->val$output:Lorg/ejml/equation/VariableMatrix;

    invoke-direct {p0, p1}, Lorg/ejml/equation/Operation;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 4

    .line 1513
    iget-object v0, p0, Lorg/ejml/equation/Operation$81;->val$A:Lorg/ejml/equation/Variable;

    check-cast v0, Lorg/ejml/equation/VariableMatrix;

    iget-object v0, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    .line 1514
    iget-object v1, p0, Lorg/ejml/equation/Operation$81;->val$B:Lorg/ejml/equation/Variable;

    check-cast v1, Lorg/ejml/equation/VariableMatrix;

    iget-object v1, v1, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    .line 1516
    iget-object v2, p0, Lorg/ejml/equation/Operation$81;->solver:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    if-nez v2, :cond_0

    .line 1517
    iget v2, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v3, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {v2, v3}, Lorg/ejml/dense/row/factory/LinearSolverFactory_DDRM;->leastSquares(II)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object v2

    iput-object v2, p0, Lorg/ejml/equation/Operation$81;->solver:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    .line 1520
    :cond_0
    iget-object v2, p0, Lorg/ejml/equation/Operation$81;->solver:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    invoke-interface {v2, v0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->setA(Lorg/ejml/data/Matrix;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1523
    iget-object v2, p0, Lorg/ejml/equation/Operation$81;->val$output:Lorg/ejml/equation/VariableMatrix;

    iget-object v2, v2, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    iget v0, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v3, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {v2, v0, v3}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 1524
    iget-object v0, p0, Lorg/ejml/equation/Operation$81;->solver:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    iget-object v2, p0, Lorg/ejml/equation/Operation$81;->val$output:Lorg/ejml/equation/VariableMatrix;

    iget-object v2, v2, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    invoke-interface {v0, v1, v2}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    return-void

    .line 1521
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Solver failed!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
