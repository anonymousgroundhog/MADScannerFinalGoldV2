.class public Lorg/ejml/sparse/csc/misc/ImplCommonOpsWithSemiRing_FSCC;
.super Ljava/lang/Object;
.source "ImplCommonOpsWithSemiRing_FSCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(FLorg/ejml/data/FMatrixSparseCSC;FLorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/ops/FSemiRing;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)V
    .locals 14

    move-object v8, p1

    move-object/from16 v9, p4

    .line 52
    iget v0, v8, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/FGrowArray;I)[F

    move-result-object v10

    .line 53
    iget v0, v8, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, v8, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    move-object/from16 v2, p6

    invoke-static {v2, v0, v1}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;II)[I

    move-result-object v11

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, v9, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    .line 56
    iput v0, v9, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    move v12, v0

    .line 58
    :goto_0
    iget v0, v8, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v12, v0, :cond_1

    .line 59
    iget-object v0, v9, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget v1, v9, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v1, v0, v12

    add-int/lit8 v13, v12, 0x1

    move-object v0, p1

    move v1, v12

    move v2, p0

    move-object/from16 v3, p4

    move v4, v13

    move-object/from16 v5, p5

    move-object v6, v10

    move-object v7, v11

    .line 61
    invoke-static/range {v0 .. v7}, Lorg/ejml/sparse/csc/mult/ImplMultiplicationWithSemiRing_FSCC;->multAddColA(Lorg/ejml/data/FMatrixSparseCSC;IFLorg/ejml/data/FMatrixSparseCSC;ILorg/ejml/ops/FSemiRing;[F[I)V

    move-object/from16 v0, p3

    move/from16 v2, p2

    .line 62
    invoke-static/range {v0 .. v7}, Lorg/ejml/sparse/csc/mult/ImplMultiplicationWithSemiRing_FSCC;->multAddColA(Lorg/ejml/data/FMatrixSparseCSC;IFLorg/ejml/data/FMatrixSparseCSC;ILorg/ejml/ops/FSemiRing;[F[I)V

    .line 65
    iget-object v0, v9, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v0, v0, v12

    .line 66
    iget-object v1, v9, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v13

    :goto_1
    if-ge v0, v1, :cond_0

    .line 69
    iget-object v2, v9, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v3, v9, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v0

    aget v3, v10, v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v12, v13

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, v9, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget v1, v8, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v2, v9, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v2, v0, v1

    return-void
.end method

.method public static addColAppend(Lorg/ejml/data/FMatrixSparseCSC;ILorg/ejml/data/FMatrixSparseCSC;ILorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/ops/FSemiRing;Lorg/ejml/data/IGrowArray;)V
    .locals 7

    .line 89
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p4, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_3

    .line 92
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v0, v0, p1

    .line 93
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    const/4 v2, 0x1

    add-int/2addr p1, v2

    aget p1, v1, p1

    .line 94
    iget-object v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, p3

    .line 95
    iget-object v3, p2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/2addr p3, v2

    aget p3, v3, p3

    .line 97
    iget v3, p4, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    add-int/2addr v3, v2

    iput v3, p4, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-virtual {p4, v3, v2}, Lorg/ejml/data/FMatrixSparseCSC;->growMaxColumns(IZ)V

    .line 98
    iget v3, p4, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/2addr v3, p1

    sub-int/2addr v3, v0

    add-int/2addr v3, p3

    sub-int/2addr v3, v1

    invoke-virtual {p4, v3, v2}, Lorg/ejml/data/FMatrixSparseCSC;->growMaxLength(IZ)V

    .line 100
    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-static {p6, v2}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;I)[I

    move-result-object p6

    const/4 v2, 0x0

    .line 101
    iget v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    const/4 v4, -0x1

    invoke-static {p6, v2, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    :goto_0
    if-ge v0, p1, :cond_0

    .line 104
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v2, v2, v0

    .line 105
    iget-object v3, p4, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget v5, p4, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v2, v3, v5

    .line 106
    iget-object v3, p4, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget v5, p4, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget-object v6, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v6, v6, v0

    aput v6, v3, v5

    .line 107
    iget v3, p4, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p4, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v3, p6, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, p3, :cond_2

    .line 111
    iget-object p0, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget p0, p0, v1

    .line 112
    aget p1, p6, p0

    if-eq p1, v4, :cond_1

    .line 113
    iget-object p1, p4, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v0, p6, p0

    iget-object v2, p5, Lorg/ejml/ops/FSemiRing;->add:Lorg/ejml/ops/FMonoid;

    iget-object v2, v2, Lorg/ejml/ops/FMonoid;->func:Lorg/ejml/ops/FOperatorBinary;

    iget-object v3, p4, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget p0, p6, p0

    aget p0, v3, p0

    iget-object v3, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v3, v3, v1

    invoke-interface {v2, p0, v3}, Lorg/ejml/ops/FOperatorBinary;->apply(FF)F

    move-result p0

    aput p0, p1, v0

    goto :goto_2

    .line 115
    :cond_1
    iget-object p1, p4, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget v0, p4, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget-object v2, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v2, v2, v1

    aput v2, p1, v0

    .line 116
    iget-object p1, p4, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget v0, p4, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p4, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput p0, p1, v0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 119
    :cond_2
    iget-object p0, p4, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget p1, p4, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget p2, p4, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput p2, p0, p1

    return-void

    .line 90
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of rows in A, B, and C do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static elementMult(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/ops/FSemiRing;Lorg/ejml/data/IGrowArray;Lorg/ejml/data/FGrowArray;)V
    .locals 10

    .line 135
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-static {p5, v0}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/FGrowArray;I)[F

    move-result-object p5

    .line 136
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-static {p4, v0}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;I)[I

    move-result-object p4

    .line 137
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p4, v2, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 139
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p2, v0, v2}, Lorg/ejml/data/FMatrixSparseCSC;->growMaxLength(IZ)V

    .line 140
    iput-boolean v2, p2, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    .line 141
    iput v2, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    .line 143
    :goto_0
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v2, v0, :cond_4

    .line 144
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v0, v0, v2

    .line 145
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v2, 0x1

    aget v1, v1, v3

    .line 146
    iget-object v4, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v4, v4, v2

    .line 147
    iget-object v5, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v5, v5, v3

    sub-int v6, v1, v0

    sub-int v7, v5, v4

    .line 150
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 153
    iget v7, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/2addr v7, v6

    iget-object v8, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    array-length v8, v8

    if-le v7, v8, :cond_0

    .line 154
    iget-object v7, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    array-length v7, v7

    add-int/2addr v7, v6

    const/4 v6, 0x1

    invoke-virtual {p2, v7, v6}, Lorg/ejml/data/FMatrixSparseCSC;->growMaxLength(IZ)V

    .line 157
    :cond_0
    iget-object v6, p2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget v7, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v7, v6, v2

    :goto_1
    if-ge v0, v1, :cond_1

    .line 161
    iget-object v6, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v6, v6, v0

    .line 162
    aput v2, p4, v6

    .line 163
    iget-object v7, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v7, v7, v0

    aput v7, p5, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v4, v5, :cond_3

    .line 168
    iget-object v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v0, v0, v4

    .line 169
    aget v1, p4, v0

    if-ne v1, v2, :cond_2

    .line 170
    iget-object v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget v6, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    iget-object v7, p3, Lorg/ejml/ops/FSemiRing;->mult:Lorg/ejml/ops/FMonoid;

    iget-object v7, v7, Lorg/ejml/ops/FMonoid;->func:Lorg/ejml/ops/FOperatorBinary;

    aget v8, p5, v0

    iget-object v9, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v9, v9, v4

    invoke-interface {v7, v8, v9}, Lorg/ejml/ops/FOperatorBinary;->apply(FF)F

    move-result v7

    aput v7, v1, v6

    .line 171
    iget-object v1, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget v6, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v0, v1, v6

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_0

    .line 175
    :cond_4
    iget-object p0, p2, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget p1, p2, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget p2, p2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput p2, p0, p1

    return-void
.end method
