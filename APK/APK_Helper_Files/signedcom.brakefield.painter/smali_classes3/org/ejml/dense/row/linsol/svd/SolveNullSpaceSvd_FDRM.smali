.class public Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_FDRM;
.super Ljava/lang/Object;
.source "SolveNullSpaceSvd_FDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/SolveNullSpace;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/SolveNullSpace<",
        "Lorg/ejml/data/FMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field V:Lorg/ejml/data/FMatrixRMaj;

.field compact:Z

.field svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_FDRM;->compact:Z

    const/4 v1, 0x0

    .line 37
    invoke-static {v0, v0, v1, v0, v0}, Lorg/ejml/dense/row/factory/DecompositionFactory_FDRM;->svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_FDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    return-void
.end method


# virtual methods
.method public getSingularValues()[F
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_FDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->getSingularValues()[F

    move-result-object v0

    return-object v0
.end method

.method public getSvd()Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32<",
            "Lorg/ejml/data/FMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_FDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    return-object v0
.end method

.method public inputModified()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_FDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->inputModified()Z

    move-result v0

    return v0
.end method

.method public process(Lorg/ejml/data/FMatrixRMaj;ILorg/ejml/data/FMatrixRMaj;)Z
    .locals 12

    .line 42
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_0

    .line 43
    iget-boolean v0, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_FDRM;->compact:Z

    if-eqz v0, :cond_1

    .line 44
    invoke-static {v3, v3, v2, v3, v2}, Lorg/ejml/dense/row/factory/DecompositionFactory_FDRM;->svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_FDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    .line 45
    iput-boolean v2, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_FDRM;->compact:Z

    goto :goto_0

    .line 48
    :cond_0
    iget-boolean v0, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_FDRM;->compact:Z

    if-nez v0, :cond_1

    .line 49
    invoke-static {v3, v3, v2, v3, v3}, Lorg/ejml/dense/row/factory/DecompositionFactory_FDRM;->svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_FDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    .line 50
    iput-boolean v3, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_FDRM;->compact:Z

    .line 54
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_FDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    invoke-interface {v0, p1}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    .line 57
    :cond_2
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_FDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    invoke-interface {p1}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->getSingularValues()[F

    move-result-object v6

    .line 58
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_FDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_FDRM;->V:Lorg/ejml/data/FMatrixRMaj;

    invoke-interface {p1, v0, v2}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->getV(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_FDRM;->V:Lorg/ejml/data/FMatrixRMaj;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 60
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_FDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;

    invoke-interface {p1}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F32;->numberOfSingularValues()I

    move-result v7

    iget-object v8, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_FDRM;->V:Lorg/ejml/data/FMatrixRMaj;

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lorg/ejml/dense/row/SingularOps_FDRM;->descendingOrder(Lorg/ejml/data/FMatrixRMaj;Z[FILorg/ejml/data/FMatrixRMaj;Z)V

    .line 62
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_FDRM;->V:Lorg/ejml/data/FMatrixRMaj;

    iget p1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-virtual {p3, p1, p2}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 63
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_FDRM;->V:Lorg/ejml/data/FMatrixRMaj;

    iget v6, v4, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget-object p1, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_FDRM;->V:Lorg/ejml/data/FMatrixRMaj;

    iget p1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    sub-int v7, p1, p2

    iget-object p1, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_FDRM;->V:Lorg/ejml/data/FMatrixRMaj;

    iget v8, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v9, p3

    invoke-static/range {v4 .. v11}, Lorg/ejml/dense/row/CommonOps_FDRM;->extract(Lorg/ejml/data/FMatrix;IIIILorg/ejml/data/FMatrix;II)V

    return v3
.end method

.method public bridge synthetic process(Lorg/ejml/data/Matrix;ILorg/ejml/data/Matrix;)Z
    .locals 0

    .line 32
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    check-cast p3, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_FDRM;->process(Lorg/ejml/data/FMatrixRMaj;ILorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method
