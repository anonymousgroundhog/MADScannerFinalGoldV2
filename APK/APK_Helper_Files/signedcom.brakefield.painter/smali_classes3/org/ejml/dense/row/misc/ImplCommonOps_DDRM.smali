.class public Lorg/ejml/dense/row/misc/ImplCommonOps_DDRM;
.super Ljava/lang/Object;
.source "ImplCommonOps_DDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static elementDiv(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrixD1;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 166
    invoke-static {p0, p1, v0}, Lorg/ejml/UtilEjml;->checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Z)V

    .line 167
    invoke-static {p2, p0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/DMatrixD1;

    .line 169
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 172
    invoke-virtual {p0, v1}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v2

    invoke-virtual {p1, v1}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-virtual {p2, v1, v2, v3}, Lorg/ejml/data/DMatrixD1;->set(ID)D

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public static elementDiv(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)V
    .locals 4

    const/4 v0, 0x1

    .line 156
    invoke-static {p0, p1, v0}, Lorg/ejml/UtilEjml;->checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Z)V

    .line 158
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 161
    invoke-virtual {p1, v1}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lorg/ejml/data/DMatrixD1;->div(ID)D

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static elementExp(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrixD1;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 248
    invoke-static {p1, p0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/DMatrixD1;

    .line 250
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 252
    iget-object v2, p1, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v3, p0, Lorg/ejml/data/DMatrixD1;->data:[D

    aget-wide v3, v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static elementLog(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrixD1;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 237
    invoke-static {p1, p0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/DMatrixD1;

    .line 239
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 241
    iget-object v2, p1, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v3, p0, Lorg/ejml/data/DMatrixD1;->data:[D

    aget-wide v3, v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static elementMax(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/ElementLocation;)D
    .locals 8

    .line 49
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0, v1}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v2

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v0, :cond_1

    .line 54
    invoke-virtual {p0, v4}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v5

    cmpl-double v7, v5, v2

    if-ltz v7, :cond_0

    move v1, v4

    move-wide v2, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 62
    iget v0, p0, Lorg/ejml/data/DMatrixD1;->numCols:I

    div-int v0, v1, v0

    iput v0, p1, Lorg/ejml/data/ElementLocation;->row:I

    .line 63
    iget p0, p0, Lorg/ejml/data/DMatrixD1;->numCols:I

    rem-int/2addr v1, p0

    iput v1, p1, Lorg/ejml/data/ElementLocation;->col:I

    :cond_2
    return-wide v2
.end method

.method public static elementMaxAbs(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/ElementLocation;)D
    .locals 8

    .line 70
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-wide v3, v2

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 75
    invoke-virtual {p0, v1}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpl-double v7, v5, v3

    if-lez v7, :cond_0

    move v2, v1

    move-wide v3, v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 83
    iget v0, p0, Lorg/ejml/data/DMatrixD1;->numCols:I

    div-int v0, v2, v0

    iput v0, p1, Lorg/ejml/data/ElementLocation;->row:I

    .line 84
    iget p0, p0, Lorg/ejml/data/DMatrixD1;->numCols:I

    rem-int/2addr v2, p0

    iput v2, p1, Lorg/ejml/data/ElementLocation;->col:I

    :cond_2
    return-wide v3
.end method

.method public static elementMin(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/ElementLocation;)D
    .locals 8

    .line 91
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    .line 94
    invoke-virtual {p0, v1}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v2

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v0, :cond_1

    .line 96
    invoke-virtual {p0, v4}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v5

    cmpg-double v7, v5, v2

    if-gez v7, :cond_0

    move v1, v4

    move-wide v2, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 104
    iget v0, p0, Lorg/ejml/data/DMatrixD1;->numCols:I

    div-int v0, v1, v0

    iput v0, p1, Lorg/ejml/data/ElementLocation;->row:I

    .line 105
    iget p0, p0, Lorg/ejml/data/DMatrixD1;->numCols:I

    rem-int/2addr v1, p0

    iput v1, p1, Lorg/ejml/data/ElementLocation;->col:I

    :cond_2
    return-wide v2
.end method

.method public static elementMinAbs(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/ElementLocation;)D
    .locals 8

    .line 112
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v3, v2

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 117
    invoke-virtual {p0, v1}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v7, v5, v3

    if-gez v7, :cond_0

    move v2, v1

    move-wide v3, v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 125
    iget v0, p0, Lorg/ejml/data/DMatrixD1;->numCols:I

    div-int v0, v2, v0

    iput v0, p1, Lorg/ejml/data/ElementLocation;->row:I

    .line 126
    iget p0, p0, Lorg/ejml/data/DMatrixD1;->numCols:I

    rem-int/2addr v2, p0

    iput v2, p1, Lorg/ejml/data/ElementLocation;->col:I

    :cond_2
    return-wide v3
.end method

.method public static elementMult(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrixD1;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 143
    invoke-static {p0, p1, v0}, Lorg/ejml/UtilEjml;->checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Z)V

    .line 144
    invoke-static {p2, p0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/DMatrixD1;

    .line 146
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 149
    invoke-virtual {p0, v1}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v2

    invoke-virtual {p1, v1}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p2, v1, v2, v3}, Lorg/ejml/data/DMatrixD1;->set(ID)D

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public static elementMult(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)V
    .locals 4

    const/4 v0, 0x1

    .line 133
    invoke-static {p0, p1, v0}, Lorg/ejml/UtilEjml;->checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Z)V

    .line 135
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 138
    invoke-virtual {p1, v1}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lorg/ejml/data/DMatrixD1;->times(ID)D

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static elementPower(DLorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrixD1;",
            ">(DTT;TT;)TT;"
        }
    .end annotation

    .line 215
    invoke-static {p3, p2}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p3

    check-cast p3, Lorg/ejml/data/DMatrixD1;

    .line 217
    invoke-virtual {p2}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 219
    iget-object v2, p3, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v3, p2, Lorg/ejml/data/DMatrixD1;->data:[D

    aget-wide v3, v3, v1

    invoke-static {p0, p1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method public static elementPower(Lorg/ejml/data/DMatrixD1;DLorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrixD1;",
            ">(TT;DTT;)TT;"
        }
    .end annotation

    .line 226
    invoke-static {p3, p0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p3

    check-cast p3, Lorg/ejml/data/DMatrixD1;

    .line 228
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 230
    iget-object v2, p3, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v3, p0, Lorg/ejml/data/DMatrixD1;->data:[D

    aget-wide v3, v3, v1

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method public static elementPower(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrixD1;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 203
    invoke-static {p0, p1, v0}, Lorg/ejml/UtilEjml;->checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Z)V

    .line 204
    invoke-static {p2, p0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/DMatrixD1;

    .line 206
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 208
    iget-object v2, p2, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v3, p0, Lorg/ejml/data/DMatrixD1;->data:[D

    aget-wide v3, v3, v1

    iget-object v5, p1, Lorg/ejml/data/DMatrixD1;->data:[D

    aget-wide v5, v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public static elementSum(Lorg/ejml/data/DMatrixD1;)D
    .locals 6

    .line 181
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 184
    invoke-virtual {p0, v3}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v4

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static elementSumAbs(Lorg/ejml/data/DMatrixD1;)D
    .locals 6

    .line 193
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 196
    invoke-virtual {p0, v3}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static extract(Lorg/ejml/data/DMatrixRMaj;IILorg/ejml/data/DMatrixRMaj;IIII)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p6, :cond_0

    add-int v1, v0, p1

    .line 42
    invoke-virtual {p0, v1, p2}, Lorg/ejml/data/DMatrixRMaj;->getIndex(II)I

    move-result v1

    add-int v2, v0, p4

    .line 43
    invoke-virtual {p3, v2, p5}, Lorg/ejml/data/DMatrixRMaj;->getIndex(II)I

    move-result v2

    .line 44
    iget-object v3, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v4, p3, Lorg/ejml/data/DMatrixRMaj;->data:[D

    invoke-static {v3, v1, v4, v2, p7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
