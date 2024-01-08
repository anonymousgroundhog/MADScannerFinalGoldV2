.class public abstract Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;
.super Ljava/lang/Object;
.source "CholeskyDecompositionCommon_ZDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F64;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F64<",
        "Lorg/ejml/data/ZMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field protected T:Lorg/ejml/data/ZMatrixRMaj;

.field protected det:Lorg/ejml/data/Complex_F64;

.field protected lower:Z

.field protected n:I

.field protected t:[D


# direct methods
.method protected constructor <init>(Z)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lorg/ejml/data/Complex_F64;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F64;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->det:Lorg/ejml/data/Complex_F64;

    .line 59
    iput-boolean p1, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->lower:Z

    return-void
.end method


# virtual methods
.method public _getT()Lorg/ejml/data/ZMatrixRMaj;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->T:Lorg/ejml/data/ZMatrixRMaj;

    return-object v0
.end method

.method public computeDeterminant()Lorg/ejml/data/Complex_F64;
    .locals 6

    .line 154
    iget v0, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->n:I

    mul-int/2addr v0, v0

    mul-int/lit8 v0, v0, 0x2

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 156
    iget-object v4, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->t:[D

    aget-wide v4, v4, v3

    mul-double/2addr v1, v4

    .line 155
    iget v4, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->n:I

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->det:Lorg/ejml/data/Complex_F64;

    mul-double/2addr v1, v1

    iput-wide v1, v0, Lorg/ejml/data/Complex_F64;->real:D

    .line 160
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->det:Lorg/ejml/data/Complex_F64;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lorg/ejml/data/Complex_F64;->imaginary:D

    .line 162
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->det:Lorg/ejml/data/Complex_F64;

    return-object v0
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 36
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->decompose(Lorg/ejml/data/ZMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method public decompose(Lorg/ejml/data/ZMatrixRMaj;)Z
    .locals 2

    .line 75
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_1

    .line 79
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iput v0, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->n:I

    .line 81
    iput-object p1, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->T:Lorg/ejml/data/ZMatrixRMaj;

    .line 82
    iget-object p1, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->t:[D

    .line 84
    iget-boolean p1, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->lower:Z

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p0}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->decomposeLower()Z

    move-result p1

    return p1

    .line 87
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->decomposeUpper()Z

    move-result p1

    return p1

    .line 76
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must be a square matrix."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract decomposeLower()Z
.end method

.method protected abstract decomposeUpper()Z
.end method

.method public bridge synthetic getT(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 36
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->getT(Lorg/ejml/data/ZMatrixRMaj;)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getT(Lorg/ejml/data/ZMatrixRMaj;)Lorg/ejml/data/ZMatrixRMaj;
    .locals 7

    .line 113
    iget-boolean v0, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->lower:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 114
    iget v0, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->n:I

    invoke-static {p1, v0, v0}, Lorg/ejml/dense/row/decompose/UtilDecompositons_ZDRM;->checkZerosUT(Lorg/ejml/data/ZMatrixRMaj;II)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    move v0, v1

    .line 115
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->n:I

    if-ge v0, v2, :cond_3

    mul-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x2

    move v3, v1

    :goto_1
    if-gt v3, v0, :cond_0

    .line 118
    iget-object v4, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget-object v5, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->T:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v5, v5, v2

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    .line 120
    iget-object v4, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget-object v5, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->T:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v5, v5, v2

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_1
    iget v0, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->n:I

    invoke-static {p1, v0, v0}, Lorg/ejml/dense/row/decompose/UtilDecompositons_ZDRM;->checkZerosLT(Lorg/ejml/data/ZMatrixRMaj;II)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    .line 126
    :goto_2
    iget v0, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->n:I

    if-ge v1, v0, :cond_3

    mul-int/2addr v0, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    move v2, v1

    .line 128
    :goto_3
    iget v3, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->n:I

    if-ge v2, v3, :cond_2

    .line 129
    iget-object v3, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget-object v4, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->T:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v4, v4, v0

    aput-wide v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    .line 131
    iget-object v3, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iget-object v4, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->T:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v4, v4, v0

    aput-wide v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-object p1
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLower()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_ZDRM;->lower:Z

    return v0
.end method
