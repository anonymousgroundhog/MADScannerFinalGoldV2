.class public Lorg/ejml/dense/row/misc/ImplCommonOps_FDRM;
.super Ljava/lang/Object;
.source "ImplCommonOps_FDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static elementDiv(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrixD1;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 168
    invoke-static {p0, p1, v0}, Lorg/ejml/UtilEjml;->checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Z)V

    .line 169
    invoke-static {p2, p0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/FMatrixD1;

    .line 171
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 174
    invoke-virtual {p0, v1}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v2

    invoke-virtual {p1, v1}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Lorg/ejml/data/FMatrixD1;->set(IF)F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public static elementDiv(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)V
    .locals 3

    const/4 v0, 0x1

    .line 158
    invoke-static {p0, p1, v0}, Lorg/ejml/UtilEjml;->checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Z)V

    .line 160
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 163
    invoke-virtual {p1, v1}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/ejml/data/FMatrixD1;->div(IF)F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static elementExp(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrixD1;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 250
    invoke-static {p1, p0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/FMatrixD1;

    .line 252
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 254
    iget-object v2, p1, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v3, p0, Lorg/ejml/data/FMatrixD1;->data:[F

    aget v3, v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static elementLog(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrixD1;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 239
    invoke-static {p1, p0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/FMatrixD1;

    .line 241
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 243
    iget-object v2, p1, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v3, p0, Lorg/ejml/data/FMatrixD1;->data:[F

    aget v3, v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static elementMax(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/ElementLocation;)F
    .locals 6

    .line 51
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0, v1}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v2

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v0, :cond_1

    .line 56
    invoke-virtual {p0, v3}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v4

    cmpl-float v5, v4, v2

    if-ltz v5, :cond_0

    move v1, v3

    move v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 64
    iget v0, p0, Lorg/ejml/data/FMatrixD1;->numCols:I

    div-int v0, v1, v0

    iput v0, p1, Lorg/ejml/data/ElementLocation;->row:I

    .line 65
    iget p0, p0, Lorg/ejml/data/FMatrixD1;->numCols:I

    rem-int/2addr v1, p0

    iput v1, p1, Lorg/ejml/data/ElementLocation;->col:I

    :cond_2
    return v2
.end method

.method public static elementMaxAbs(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/ElementLocation;)F
    .locals 6

    .line 72
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 77
    invoke-virtual {p0, v1}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v5, v4, v3

    if-lez v5, :cond_0

    move v2, v1

    move v3, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 85
    iget v0, p0, Lorg/ejml/data/FMatrixD1;->numCols:I

    div-int v0, v2, v0

    iput v0, p1, Lorg/ejml/data/ElementLocation;->row:I

    .line 86
    iget p0, p0, Lorg/ejml/data/FMatrixD1;->numCols:I

    rem-int/2addr v2, p0

    iput v2, p1, Lorg/ejml/data/ElementLocation;->col:I

    :cond_2
    return v3
.end method

.method public static elementMin(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/ElementLocation;)F
    .locals 6

    .line 93
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    .line 96
    invoke-virtual {p0, v1}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v2

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v0, :cond_1

    .line 98
    invoke-virtual {p0, v3}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v4

    cmpg-float v5, v4, v2

    if-gez v5, :cond_0

    move v1, v3

    move v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 106
    iget v0, p0, Lorg/ejml/data/FMatrixD1;->numCols:I

    div-int v0, v1, v0

    iput v0, p1, Lorg/ejml/data/ElementLocation;->row:I

    .line 107
    iget p0, p0, Lorg/ejml/data/FMatrixD1;->numCols:I

    rem-int/2addr v1, p0

    iput v1, p1, Lorg/ejml/data/ElementLocation;->col:I

    :cond_2
    return v2
.end method

.method public static elementMinAbs(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/ElementLocation;)F
    .locals 6

    .line 114
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    move v3, v2

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 119
    invoke-virtual {p0, v1}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v5, v4, v3

    if-gez v5, :cond_0

    move v2, v1

    move v3, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 127
    iget v0, p0, Lorg/ejml/data/FMatrixD1;->numCols:I

    div-int v0, v2, v0

    iput v0, p1, Lorg/ejml/data/ElementLocation;->row:I

    .line 128
    iget p0, p0, Lorg/ejml/data/FMatrixD1;->numCols:I

    rem-int/2addr v2, p0

    iput v2, p1, Lorg/ejml/data/ElementLocation;->col:I

    :cond_2
    return v3
.end method

.method public static elementMult(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrixD1;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 145
    invoke-static {p0, p1, v0}, Lorg/ejml/UtilEjml;->checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Z)V

    .line 146
    invoke-static {p2, p0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/FMatrixD1;

    .line 148
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 151
    invoke-virtual {p0, v1}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v2

    invoke-virtual {p1, v1}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Lorg/ejml/data/FMatrixD1;->set(IF)F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public static elementMult(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)V
    .locals 3

    const/4 v0, 0x1

    .line 135
    invoke-static {p0, p1, v0}, Lorg/ejml/UtilEjml;->checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Z)V

    .line 137
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 140
    invoke-virtual {p1, v1}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/ejml/data/FMatrixD1;->times(IF)F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static elementPower(FLorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrixD1;",
            ">(FTT;TT;)TT;"
        }
    .end annotation

    .line 217
    invoke-static {p2, p1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/FMatrixD1;

    .line 219
    invoke-virtual {p1}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 221
    iget-object v2, p2, Lorg/ejml/data/FMatrixD1;->data:[F

    float-to-double v3, p0

    iget-object v5, p1, Lorg/ejml/data/FMatrixD1;->data:[F

    aget v5, v5, v1

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public static elementPower(Lorg/ejml/data/FMatrixD1;FLorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrixD1;",
            ">(TT;FTT;)TT;"
        }
    .end annotation

    .line 228
    invoke-static {p2, p0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/FMatrixD1;

    .line 230
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 232
    iget-object v2, p2, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v3, p0, Lorg/ejml/data/FMatrixD1;->data:[F

    aget v3, v3, v1

    float-to-double v3, v3

    float-to-double v5, p1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public static elementPower(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrixD1;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 205
    invoke-static {p0, p1, v0}, Lorg/ejml/UtilEjml;->checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Z)V

    .line 206
    invoke-static {p2, p0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/FMatrixD1;

    .line 208
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 210
    iget-object v2, p2, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v3, p0, Lorg/ejml/data/FMatrixD1;->data:[F

    aget v3, v3, v1

    float-to-double v3, v3

    iget-object v5, p1, Lorg/ejml/data/FMatrixD1;->data:[F

    aget v5, v5, v1

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public static elementSum(Lorg/ejml/data/FMatrixD1;)F
    .locals 4

    .line 183
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 186
    invoke-virtual {p0, v2}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v3

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static elementSumAbs(Lorg/ejml/data/FMatrixD1;)F
    .locals 4

    .line 195
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 198
    invoke-virtual {p0, v2}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static extract(Lorg/ejml/data/FMatrixRMaj;IILorg/ejml/data/FMatrixRMaj;IIII)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p6, :cond_0

    add-int v1, v0, p1

    .line 44
    invoke-virtual {p0, v1, p2}, Lorg/ejml/data/FMatrixRMaj;->getIndex(II)I

    move-result v1

    add-int v2, v0, p4

    .line 45
    invoke-virtual {p3, v2, p5}, Lorg/ejml/data/FMatrixRMaj;->getIndex(II)I

    move-result v2

    .line 46
    iget-object v3, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v4, p3, Lorg/ejml/data/FMatrixRMaj;->data:[F

    invoke-static {v3, v1, v4, v2, p7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
