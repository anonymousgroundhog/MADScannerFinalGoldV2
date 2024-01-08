.class public Lorg/ejml/LinearSolverSafe;
.super Ljava/lang/Object;
.source "LinearSolverSafe.java"

# interfaces
.implements Lorg/ejml/interfaces/linsol/LinearSolverDense;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/ejml/data/ReshapeMatrix;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private A:Lorg/ejml/data/ReshapeMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private B:Lorg/ejml/data/ReshapeMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final alg:Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/ejml/interfaces/linsol/LinearSolverDense;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "TT;>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/ejml/LinearSolverSafe;->alg:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    return-void
.end method


# virtual methods
.method public getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lorg/ejml/interfaces/decomposition/DecompositionInterface;",
            ">()TD;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/ejml/LinearSolverSafe;->alg:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    invoke-interface {v0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->getDecomposition()Lorg/ejml/interfaces/decomposition/DecompositionInterface;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invert(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 33
    check-cast p1, Lorg/ejml/data/ReshapeMatrix;

    invoke-virtual {p0, p1}, Lorg/ejml/LinearSolverSafe;->invert(Lorg/ejml/data/ReshapeMatrix;)V

    return-void
.end method

.method public invert(Lorg/ejml/data/ReshapeMatrix;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/ejml/LinearSolverSafe;->alg:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    invoke-interface {v0, p1}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->invert(Lorg/ejml/data/Matrix;)V

    return-void
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

    .line 64
    iget-object v0, p0, Lorg/ejml/LinearSolverSafe;->alg:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    invoke-interface {v0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->quality()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic setA(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 33
    check-cast p1, Lorg/ejml/data/ReshapeMatrix;

    invoke-virtual {p0, p1}, Lorg/ejml/LinearSolverSafe;->setA(Lorg/ejml/data/ReshapeMatrix;)Z

    move-result p1

    return p1
.end method

.method public setA(Lorg/ejml/data/ReshapeMatrix;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/ejml/LinearSolverSafe;->alg:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    invoke-interface {v0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->modifiesA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lorg/ejml/LinearSolverSafe;->A:Lorg/ejml/data/ReshapeMatrix;

    invoke-static {v0, p1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/LinearSolverSafe;->A:Lorg/ejml/data/ReshapeMatrix;

    .line 55
    invoke-interface {v0, p1}, Lorg/ejml/data/ReshapeMatrix;->set(Lorg/ejml/data/Matrix;)V

    .line 56
    iget-object p1, p0, Lorg/ejml/LinearSolverSafe;->alg:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    iget-object v0, p0, Lorg/ejml/LinearSolverSafe;->A:Lorg/ejml/data/ReshapeMatrix;

    invoke-interface {p1, v0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->setA(Lorg/ejml/data/Matrix;)Z

    move-result p1

    return p1

    .line 59
    :cond_0
    iget-object v0, p0, Lorg/ejml/LinearSolverSafe;->alg:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    invoke-interface {v0, p1}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->setA(Lorg/ejml/data/Matrix;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 33
    check-cast p1, Lorg/ejml/data/ReshapeMatrix;

    check-cast p2, Lorg/ejml/data/ReshapeMatrix;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/LinearSolverSafe;->solve(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)V

    return-void
.end method

.method public solve(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/ejml/LinearSolverSafe;->alg:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    invoke-interface {v0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->modifiesB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lorg/ejml/LinearSolverSafe;->B:Lorg/ejml/data/ReshapeMatrix;

    invoke-static {v0, p1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/LinearSolverSafe;->B:Lorg/ejml/data/ReshapeMatrix;

    .line 71
    invoke-interface {v0, p1}, Lorg/ejml/data/ReshapeMatrix;->set(Lorg/ejml/data/Matrix;)V

    .line 72
    iget-object p1, p0, Lorg/ejml/LinearSolverSafe;->B:Lorg/ejml/data/ReshapeMatrix;

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/ejml/LinearSolverSafe;->alg:Lorg/ejml/interfaces/linsol/LinearSolverDense;

    invoke-interface {v0, p1, p2}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    return-void
.end method
