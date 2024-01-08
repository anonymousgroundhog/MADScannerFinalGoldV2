.class public Lorg/ejml/LinearSolverToSparse;
.super Ljava/lang/Object;
.source "LinearSolverToSparse.java"

# interfaces
.implements Lorg/ejml/interfaces/linsol/LinearSolverSparse;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Lorg/ejml/data/Matrix;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/linsol/LinearSolverSparse<",
        "TD;TD;>;"
    }
.end annotation


# instance fields
.field locked:Z

.field solver:Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/ejml/interfaces/linsol/LinearSolverDense;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "TD;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lorg/ejml/LinearSolverToSparse;->locked:Z

    .line 40
    iput-object p1, p0, Lorg/ejml/LinearSolverToSparse;->solver:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    return-void
.end method


# virtual methods
.method public getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D1::",
            "Lorg/ejml/interfaces/decomposition/DecompositionInterface;",
            ">()TD1;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/ejml/LinearSolverToSparse;->solver:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    invoke-interface {v0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;

    move-result-object v0

    return-object v0
.end method

.method public isStructureLocked()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lorg/ejml/LinearSolverToSparse;->locked:Z

    return v0
.end method

.method public modifiesA()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/ejml/LinearSolverToSparse;->solver:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    invoke-interface {v0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->modifiesA()Z

    move-result v0

    return v0
.end method

.method public modifiesB()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/ejml/LinearSolverToSparse;->solver:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    invoke-interface {v0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->modifiesB()Z

    move-result v0

    return v0
.end method

.method public quality()D
    .locals 2

    .line 65
    iget-object v0, p0, Lorg/ejml/LinearSolverToSparse;->solver:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    invoke-interface {v0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->quality()D

    move-result-wide v0

    return-wide v0
.end method

.method public setA(Lorg/ejml/data/Matrix;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)Z"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/ejml/LinearSolverToSparse;->solver:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    invoke-interface {v0, p1}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->setA(Lorg/ejml/data/Matrix;)Z

    move-result p1

    return p1
.end method

.method public setStructureLocked(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lorg/ejml/LinearSolverToSparse;->locked:Z

    return-void
.end method

.method public solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TD;)V"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/ejml/LinearSolverToSparse;->solver:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    invoke-interface {v0, p1, p2}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    return-void
.end method

.method public solveSparse(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TD;)V"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lorg/ejml/LinearSolverToSparse;->solver:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    invoke-interface {v0, p1, p2}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    return-void
.end method
