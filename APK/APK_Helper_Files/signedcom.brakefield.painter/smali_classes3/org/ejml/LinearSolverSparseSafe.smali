.class public Lorg/ejml/LinearSolverSparseSafe;
.super Ljava/lang/Object;
.source "LinearSolverSparseSafe.java"

# interfaces
.implements Lorg/ejml/interfaces/linsol/LinearSolverSparse;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/ejml/data/DMatrixSparse;",
        "D::",
        "Lorg/ejml/data/ReshapeMatrix;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/linsol/LinearSolverSparse<",
        "TS;TD;>;"
    }
.end annotation


# instance fields
.field private A:Lorg/ejml/data/DMatrixSparse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private B:Lorg/ejml/data/ReshapeMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private final alg:Lorg/ejml/interfaces/linsol/LinearSolverSparse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/linsol/LinearSolverSparse<",
            "TS;TD;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/ejml/interfaces/linsol/LinearSolverSparse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/linsol/LinearSolverSparse<",
            "TS;TD;>;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/ejml/LinearSolverSparseSafe;->alg:Lorg/ejml/interfaces/linsol/LinearSolverSparse;

    return-void
.end method


# virtual methods
.method public getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Decomposition::",
            "Lorg/ejml/interfaces/decomposition/DecompositionInterface;",
            ">()TDecomposition;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/ejml/LinearSolverSparseSafe;->alg:Lorg/ejml/interfaces/linsol/LinearSolverSparse;

    invoke-interface {v0}, Lorg/ejml/interfaces/linsol/LinearSolverSparse;->getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;

    move-result-object v0

    return-object v0
.end method

.method public isStructureLocked()Z
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/ejml/LinearSolverSparseSafe;->alg:Lorg/ejml/interfaces/linsol/LinearSolverSparse;

    invoke-interface {v0}, Lorg/ejml/interfaces/linsol/LinearSolverSparse;->isStructureLocked()Z

    move-result v0

    return v0
.end method

.method public modifiesA()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public modifiesB()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public quality()D
    .locals 2

    .line 66
    iget-object v0, p0, Lorg/ejml/LinearSolverSparseSafe;->alg:Lorg/ejml/interfaces/linsol/LinearSolverSparse;

    invoke-interface {v0}, Lorg/ejml/interfaces/linsol/LinearSolverSparse;->quality()D

    move-result-wide v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/DMatrixSparse;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/ejml/LinearSolverSparseSafe;->alg:Lorg/ejml/interfaces/linsol/LinearSolverSparse;

    invoke-interface {v0}, Lorg/ejml/interfaces/linsol/LinearSolverSparse;->modifiesA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lorg/ejml/LinearSolverSparseSafe;->A:Lorg/ejml/data/DMatrixSparse;

    invoke-static {v0, p1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/MatrixSparse;Lorg/ejml/data/MatrixSparse;)Lorg/ejml/data/MatrixSparse;

    move-result-object v0

    check-cast v0, Lorg/ejml/data/DMatrixSparse;

    iput-object v0, p0, Lorg/ejml/LinearSolverSparseSafe;->A:Lorg/ejml/data/DMatrixSparse;

    .line 57
    invoke-interface {v0, p1}, Lorg/ejml/data/DMatrixSparse;->set(Lorg/ejml/data/Matrix;)V

    .line 58
    iget-object p1, p0, Lorg/ejml/LinearSolverSparseSafe;->alg:Lorg/ejml/interfaces/linsol/LinearSolverSparse;

    iget-object v0, p0, Lorg/ejml/LinearSolverSparseSafe;->A:Lorg/ejml/data/DMatrixSparse;

    invoke-interface {p1, v0}, Lorg/ejml/interfaces/linsol/LinearSolverSparse;->setA(Lorg/ejml/data/Matrix;)Z

    move-result p1

    return p1

    .line 61
    :cond_0
    iget-object v0, p0, Lorg/ejml/LinearSolverSparseSafe;->alg:Lorg/ejml/interfaces/linsol/LinearSolverSparse;

    invoke-interface {v0, p1}, Lorg/ejml/interfaces/linsol/LinearSolverSparse;->setA(Lorg/ejml/data/Matrix;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 34
    check-cast p1, Lorg/ejml/data/DMatrixSparse;

    invoke-virtual {p0, p1}, Lorg/ejml/LinearSolverSparseSafe;->setA(Lorg/ejml/data/DMatrixSparse;)Z

    move-result p1

    return p1
.end method

.method public setStructureLocked(Z)V
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/ejml/LinearSolverSparseSafe;->alg:Lorg/ejml/interfaces/linsol/LinearSolverSparse;

    invoke-interface {v0, p1}, Lorg/ejml/interfaces/linsol/LinearSolverSparse;->setStructureLocked(Z)V

    return-void
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 34
    check-cast p1, Lorg/ejml/data/ReshapeMatrix;

    check-cast p2, Lorg/ejml/data/ReshapeMatrix;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/LinearSolverSparseSafe;->solve(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)V

    return-void
.end method

.method public solve(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TD;)V"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/ejml/LinearSolverSparseSafe;->alg:Lorg/ejml/interfaces/linsol/LinearSolverSparse;

    invoke-interface {v0}, Lorg/ejml/interfaces/linsol/LinearSolverSparse;->modifiesB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lorg/ejml/LinearSolverSparseSafe;->B:Lorg/ejml/data/ReshapeMatrix;

    invoke-static {v0, p1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/LinearSolverSparseSafe;->B:Lorg/ejml/data/ReshapeMatrix;

    .line 73
    invoke-interface {v0, p1}, Lorg/ejml/data/ReshapeMatrix;->set(Lorg/ejml/data/Matrix;)V

    .line 74
    iget-object p1, p0, Lorg/ejml/LinearSolverSparseSafe;->B:Lorg/ejml/data/ReshapeMatrix;

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/ejml/LinearSolverSparseSafe;->alg:Lorg/ejml/interfaces/linsol/LinearSolverSparse;

    invoke-interface {v0, p1, p2}, Lorg/ejml/interfaces/linsol/LinearSolverSparse;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    return-void
.end method

.method public solveSparse(Lorg/ejml/data/DMatrixSparse;Lorg/ejml/data/DMatrixSparse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;)V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/ejml/LinearSolverSparseSafe;->alg:Lorg/ejml/interfaces/linsol/LinearSolverSparse;

    invoke-interface {v0, p1, p2}, Lorg/ejml/interfaces/linsol/LinearSolverSparse;->solveSparse(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    return-void
.end method

.method public bridge synthetic solveSparse(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 34
    check-cast p1, Lorg/ejml/data/DMatrixSparse;

    check-cast p2, Lorg/ejml/data/DMatrixSparse;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/LinearSolverSparseSafe;->solveSparse(Lorg/ejml/data/DMatrixSparse;Lorg/ejml/data/DMatrixSparse;)V

    return-void
.end method
