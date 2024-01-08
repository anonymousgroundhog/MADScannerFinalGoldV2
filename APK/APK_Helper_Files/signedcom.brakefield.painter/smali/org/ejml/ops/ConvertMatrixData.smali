.class public Lorg/ejml/ops/ConvertMatrixData;
.super Ljava/lang/Object;
.source "ConvertMatrixData.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Lorg/ejml/data/CMatrix;Lorg/ejml/data/ZMatrix;)V
    .locals 10

    .line 127
    invoke-interface {p0}, Lorg/ejml/data/CMatrix;->getNumRows()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/ZMatrix;->getNumRows()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 129
    invoke-interface {p0}, Lorg/ejml/data/CMatrix;->getNumCols()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/ZMatrix;->getNumCols()I

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    move v8, v0

    .line 132
    :goto_0
    invoke-interface {p0}, Lorg/ejml/data/CMatrix;->getNumRows()I

    move-result v1

    if-ge v8, v1, :cond_1

    move v9, v0

    .line 133
    :goto_1
    invoke-interface {p0}, Lorg/ejml/data/CMatrix;->getNumCols()I

    move-result v1

    if-ge v9, v1, :cond_0

    .line 134
    invoke-interface {p0, v8, v9}, Lorg/ejml/data/CMatrix;->getReal(II)F

    move-result v1

    float-to-double v4, v1

    invoke-interface {p0, v8, v9}, Lorg/ejml/data/CMatrix;->getImag(II)F

    move-result v1

    float-to-double v6, v1

    move-object v1, p1

    move v2, v8

    move v3, v9

    invoke-interface/range {v1 .. v7}, Lorg/ejml/data/ZMatrix;->set(IIDD)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 130
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of columns do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 128
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of rows do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/FMatrix2x2;)V
    .locals 2

    .line 154
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    double-to-float v0, v0

    iput v0, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    double-to-float v0, v0

    iput v0, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 155
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    double-to-float v0, v0

    iput v0, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    double-to-float p0, v0

    iput p0, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public static convert(Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/FMatrix3x3;)V
    .locals 2

    .line 159
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    double-to-float v0, v0

    iput v0, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    double-to-float v0, v0

    iput v0, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    double-to-float v0, v0

    iput v0, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 160
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    double-to-float v0, v0

    iput v0, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    double-to-float v0, v0

    iput v0, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    double-to-float v0, v0

    iput v0, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 161
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    double-to-float v0, v0

    iput v0, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    double-to-float v0, v0

    iput v0, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    double-to-float p0, v0

    iput p0, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public static convert(Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/FMatrix4x4;)V
    .locals 2

    .line 165
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    double-to-float v0, v0

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    double-to-float v0, v0

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    double-to-float v0, v0

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    double-to-float v0, v0

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 166
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    double-to-float v0, v0

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    double-to-float v0, v0

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    double-to-float v0, v0

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    double-to-float v0, v0

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 167
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    double-to-float v0, v0

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    double-to-float v0, v0

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    double-to-float v0, v0

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    double-to-float v0, v0

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 168
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    double-to-float v0, v0

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    double-to-float v0, v0

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    double-to-float v0, v0

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    double-to-float p0, v0

    iput p0, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public static convert(Lorg/ejml/data/DMatrix;Lorg/ejml/data/CMatrix;)V
    .locals 5

    .line 62
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/CMatrix;->getNumRows()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 64
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/CMatrix;->getNumCols()I

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    .line 67
    :goto_0
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v2

    if-ge v1, v2, :cond_1

    move v2, v0

    .line 68
    :goto_1
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 69
    invoke-interface {p0, v1, v2}, Lorg/ejml/data/DMatrix;->unsafe_get(II)D

    move-result-wide v3

    double-to-float v3, v3

    const/4 v4, 0x0

    invoke-interface {p1, v1, v2, v3, v4}, Lorg/ejml/data/CMatrix;->set(IIFF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 65
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of columns do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 63
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of rows do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Lorg/ejml/data/DMatrix;Lorg/ejml/data/FMatrix;)V
    .locals 5

    .line 36
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 38
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    .line 41
    :goto_0
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v2

    if-ge v1, v2, :cond_1

    move v2, v0

    .line 42
    :goto_1
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 43
    invoke-interface {p0, v1, v2}, Lorg/ejml/data/DMatrix;->unsafe_get(II)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-interface {p1, v1, v2, v3}, Lorg/ejml/data/FMatrix;->unsafe_set(IIF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 39
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of columns do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 37
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of rows do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Lorg/ejml/data/DMatrix;Lorg/ejml/data/ZMatrix;)V
    .locals 10

    .line 49
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/ZMatrix;->getNumRows()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 51
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/ZMatrix;->getNumCols()I

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    move v8, v0

    .line 54
    :goto_0
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v1

    if-ge v8, v1, :cond_1

    move v9, v0

    .line 55
    :goto_1
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v1

    if-ge v9, v1, :cond_0

    .line 56
    invoke-interface {p0, v8, v9}, Lorg/ejml/data/DMatrix;->unsafe_get(II)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-object v1, p1

    move v2, v8

    move v3, v9

    invoke-interface/range {v1 .. v7}, Lorg/ejml/data/ZMatrix;->set(IIDD)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 52
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of columns do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 50
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of rows do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 7

    .line 198
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 200
    iget-object v3, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v5, v5, v1

    double-to-float v5, v5

    aput v5, v3, v2

    .line 201
    iget-object v2, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v3, v4, 0x1

    const/4 v5, 0x0

    aput v5, v2, v4

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static convert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 5

    .line 140
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 142
    iget-object v2, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v3, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v3, v3, v1

    double-to-float v3, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static convert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 7

    .line 190
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 192
    iget-object v3, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v5, v5, v1

    aput-wide v5, v3, v2

    .line 193
    iget-object v2, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v3, v4, 0x1

    const-wide/16 v5, 0x0

    aput-wide v5, v2, v4

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static convert(Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/DMatrix2x2;)V
    .locals 2

    .line 172
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 173
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget p0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    float-to-double v0, p0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public static convert(Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/DMatrix3x3;)V
    .locals 2

    .line 177
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 178
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 179
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    float-to-double v0, p0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public static convert(Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/DMatrix4x4;)V
    .locals 2

    .line 183
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 184
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 185
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 186
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    float-to-double v0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget p0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    float-to-double v0, p0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public static convert(Lorg/ejml/data/FMatrix;Lorg/ejml/data/CMatrix;)V
    .locals 5

    .line 101
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/CMatrix;->getNumRows()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 103
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/CMatrix;->getNumCols()I

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    .line 106
    :goto_0
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v2

    if-ge v1, v2, :cond_1

    move v2, v0

    .line 107
    :goto_1
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 108
    invoke-interface {p0, v1, v2}, Lorg/ejml/data/FMatrix;->unsafe_get(II)F

    move-result v3

    const/4 v4, 0x0

    invoke-interface {p1, v1, v2, v3, v4}, Lorg/ejml/data/CMatrix;->set(IIFF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 104
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of columns do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 102
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of rows do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Lorg/ejml/data/FMatrix;Lorg/ejml/data/DMatrix;)V
    .locals 5

    .line 75
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 77
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    .line 80
    :goto_0
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v2

    if-ge v1, v2, :cond_1

    move v2, v0

    .line 81
    :goto_1
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 82
    invoke-interface {p0, v1, v2}, Lorg/ejml/data/FMatrix;->unsafe_get(II)F

    move-result v3

    float-to-double v3, v3

    invoke-interface {p1, v1, v2, v3, v4}, Lorg/ejml/data/DMatrix;->unsafe_set(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 78
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of columns do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 76
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of rows do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Lorg/ejml/data/FMatrix;Lorg/ejml/data/ZMatrix;)V
    .locals 10

    .line 88
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/ZMatrix;->getNumRows()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 90
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/ZMatrix;->getNumCols()I

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    move v8, v0

    .line 93
    :goto_0
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v1

    if-ge v8, v1, :cond_1

    move v9, v0

    .line 94
    :goto_1
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v1

    if-ge v9, v1, :cond_0

    .line 95
    invoke-interface {p0, v8, v9}, Lorg/ejml/data/FMatrix;->unsafe_get(II)F

    move-result v1

    float-to-double v4, v1

    const-wide/16 v6, 0x0

    move-object v1, p1

    move v2, v8

    move v3, v9

    invoke-interface/range {v1 .. v7}, Lorg/ejml/data/ZMatrix;->set(IIDD)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 91
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of columns do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 89
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of rows do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/CMatrixRMaj;)V
    .locals 6

    .line 214
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 216
    iget-object v3, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v5, v5, v1

    aput v5, v3, v2

    .line 217
    iget-object v2, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v3, v4, 0x1

    const/4 v5, 0x0

    aput v5, v2, v4

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static convert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 5

    .line 147
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 149
    iget-object v2, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v3, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v3, v3, v1

    float-to-double v3, v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static convert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 7

    .line 206
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 208
    iget-object v3, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v5, v5, v1

    float-to-double v5, v5

    aput-wide v5, v3, v2

    .line 209
    iget-object v2, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v3, v4, 0x1

    const-wide/16 v5, 0x0

    aput-wide v5, v2, v4

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static convert(Lorg/ejml/data/ZMatrix;Lorg/ejml/data/CMatrix;)V
    .locals 6

    .line 114
    invoke-interface {p0}, Lorg/ejml/data/ZMatrix;->getNumRows()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/CMatrix;->getNumRows()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 116
    invoke-interface {p0}, Lorg/ejml/data/ZMatrix;->getNumCols()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/CMatrix;->getNumCols()I

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    .line 119
    :goto_0
    invoke-interface {p0}, Lorg/ejml/data/ZMatrix;->getNumRows()I

    move-result v2

    if-ge v1, v2, :cond_1

    move v2, v0

    .line 120
    :goto_1
    invoke-interface {p0}, Lorg/ejml/data/ZMatrix;->getNumCols()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 121
    invoke-interface {p0, v1, v2}, Lorg/ejml/data/ZMatrix;->getReal(II)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-interface {p0, v1, v2}, Lorg/ejml/data/ZMatrix;->getImag(II)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-interface {p1, v1, v2, v3, v4}, Lorg/ejml/data/CMatrix;->set(IIFF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 117
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of columns do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 115
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of rows do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
