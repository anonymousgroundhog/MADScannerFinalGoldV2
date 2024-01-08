.class public Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_DDRM;
.super Ljava/lang/Object;
.source "SolveNullSpaceSvd_DDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/SolveNullSpace;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/SolveNullSpace<",
        "Lorg/ejml/data/DMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field V:Lorg/ejml/data/DMatrixRMaj;

.field compact:Z

.field svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_DDRM;->compact:Z

    const/4 v1, 0x0

    .line 35
    invoke-static {v0, v0, v1, v0, v0}, Lorg/ejml/dense/row/factory/DecompositionFactory_DDRM;->svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_DDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    return-void
.end method


# virtual methods
.method public getSingularValues()[D
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_DDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->getSingularValues()[D

    move-result-object v0

    return-object v0
.end method

.method public getSvd()Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64<",
            "Lorg/ejml/data/DMatrixRMaj;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_DDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    return-object v0
.end method

.method public inputModified()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_DDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    invoke-interface {v0}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->inputModified()Z

    move-result v0

    return v0
.end method

.method public process(Lorg/ejml/data/DMatrixRMaj;ILorg/ejml/data/DMatrixRMaj;)Z
    .locals 12

    .line 40
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_0

    .line 41
    iget-boolean v0, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_DDRM;->compact:Z

    if-eqz v0, :cond_1

    .line 42
    invoke-static {v3, v3, v2, v3, v2}, Lorg/ejml/dense/row/factory/DecompositionFactory_DDRM;->svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_DDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    .line 43
    iput-boolean v2, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_DDRM;->compact:Z

    goto :goto_0

    .line 46
    :cond_0
    iget-boolean v0, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_DDRM;->compact:Z

    if-nez v0, :cond_1

    .line 47
    invoke-static {v3, v3, v2, v3, v3}, Lorg/ejml/dense/row/factory/DecompositionFactory_DDRM;->svd(IIZZZ)Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    move-result-object v0

    iput-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_DDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    .line 48
    iput-boolean v3, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_DDRM;->compact:Z

    .line 52
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_DDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    invoke-interface {v0, p1}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->decompose(Lorg/ejml/data/Matrix;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    .line 55
    :cond_2
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_DDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    invoke-interface {p1}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->getSingularValues()[D

    move-result-object v6

    .line 56
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_DDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    iget-object v0, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_DDRM;->V:Lorg/ejml/data/DMatrixRMaj;

    invoke-interface {p1, v0, v2}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->getV(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    iput-object p1, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_DDRM;->V:Lorg/ejml/data/DMatrixRMaj;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 58
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_DDRM;->svd:Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;

    invoke-interface {p1}, Lorg/ejml/interfaces/decomposition/SingularValueDecomposition_F64;->numberOfSingularValues()I

    move-result v7

    iget-object v8, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_DDRM;->V:Lorg/ejml/data/DMatrixRMaj;

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lorg/ejml/dense/row/SingularOps_DDRM;->descendingOrder(Lorg/ejml/data/DMatrixRMaj;Z[DILorg/ejml/data/DMatrixRMaj;Z)V

    .line 60
    iget-object p1, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_DDRM;->V:Lorg/ejml/data/DMatrixRMaj;

    iget p1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-virtual {p3, p1, p2}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 61
    iget-object v4, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_DDRM;->V:Lorg/ejml/data/DMatrixRMaj;

    iget v6, v4, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget-object p1, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_DDRM;->V:Lorg/ejml/data/DMatrixRMaj;

    iget p1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    sub-int v7, p1, p2

    iget-object p1, p0, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_DDRM;->V:Lorg/ejml/data/DMatrixRMaj;

    iget v8, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v9, p3

    invoke-static/range {v4 .. v11}, Lorg/ejml/dense/row/CommonOps_DDRM;->extract(Lorg/ejml/data/DMatrix;IIIILorg/ejml/data/DMatrix;II)V

    return v3
.end method

.method public bridge synthetic process(Lorg/ejml/data/Matrix;ILorg/ejml/data/Matrix;)Z
    .locals 0

    .line 31
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    check-cast p3, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/dense/row/linsol/svd/SolveNullSpaceSvd_DDRM;->process(Lorg/ejml/data/DMatrixRMaj;ILorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method
