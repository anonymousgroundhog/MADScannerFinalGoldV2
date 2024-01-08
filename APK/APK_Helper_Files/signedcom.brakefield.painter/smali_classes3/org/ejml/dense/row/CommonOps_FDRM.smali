.class public Lorg/ejml/dense/row/CommonOps_FDRM;
.super Ljava/lang/Object;
.source "CommonOps_FDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abs(Lorg/ejml/data/FMatrixD1;)V
    .locals 4

    .line 2805
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2808
    iget-object v2, p0, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v3, p0, Lorg/ejml/data/FMatrixD1;->data:[F

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static abs(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)V
    .locals 4

    .line 2786
    iget v0, p0, Lorg/ejml/data/FMatrixD1;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixD1;->numCols:I

    invoke-virtual {p1, v0, v1}, Lorg/ejml/data/FMatrixD1;->reshape(II)V

    .line 2788
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2791
    iget-object v2, p1, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v3, p0, Lorg/ejml/data/FMatrixD1;->data:[F

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static add(FLorg/ejml/data/FMatrixD1;FLorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrixD1;",
            ">(FTT;FTT;TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2079
    invoke-static {p1, p3, v0}, Lorg/ejml/UtilEjml;->checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Z)V

    .line 2080
    invoke-static {p4, p1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p4

    check-cast p4, Lorg/ejml/data/FMatrixD1;

    .line 2082
    invoke-virtual {p1}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2085
    invoke-virtual {p1, v1}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v2

    mul-float/2addr v2, p0

    invoke-virtual {p3, v1}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-virtual {p4, v1, v2}, Lorg/ejml/data/FMatrixD1;->set(IF)F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p4
.end method

.method public static add(FLorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrixD1;",
            ">(FTT;TT;TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2109
    invoke-static {p1, p2, v0}, Lorg/ejml/UtilEjml;->checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Z)V

    .line 2110
    invoke-static {p3, p1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p3

    check-cast p3, Lorg/ejml/data/FMatrixD1;

    .line 2112
    invoke-virtual {p1}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2115
    invoke-virtual {p1, v1}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v2

    mul-float/2addr v2, p0

    invoke-virtual {p2, v1}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p3, v1, v2}, Lorg/ejml/data/FMatrixD1;->set(IF)F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method public static add(Lorg/ejml/data/FMatrixD1;FLorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrixD1;",
            ">(TT;FTT;)TT;"
        }
    .end annotation

    .line 2152
    invoke-static {p2, p0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/FMatrixD1;

    .line 2154
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2157
    iget-object v2, p2, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v3, p0, Lorg/ejml/data/FMatrixD1;->data:[F

    aget v3, v3, v1

    add-float/2addr v3, p1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public static add(Lorg/ejml/data/FMatrixD1;FLorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrixD1;",
            ">(TT;FTT;TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2048
    invoke-static {p0, p2, v0}, Lorg/ejml/UtilEjml;->checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Z)V

    .line 2049
    invoke-static {p3, p0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p3

    check-cast p3, Lorg/ejml/data/FMatrixD1;

    .line 2051
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2054
    invoke-virtual {p0, v1}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v2

    invoke-virtual {p2, v1}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    invoke-virtual {p3, v1, v2}, Lorg/ejml/data/FMatrixD1;->set(IF)F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method public static add(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrixD1;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2018
    invoke-static {p0, p1, v0}, Lorg/ejml/UtilEjml;->checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Z)V

    .line 2019
    invoke-static {p2, p0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/FMatrixD1;

    .line 2021
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2024
    invoke-virtual {p0, v1}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v2

    invoke-virtual {p1, v1}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Lorg/ejml/data/FMatrixD1;->set(IF)F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public static add(Lorg/ejml/data/FMatrixD1;F)V
    .locals 2

    .line 2132
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2135
    invoke-virtual {p0, v1, p1}, Lorg/ejml/data/FMatrixD1;->plus(IF)F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static addEquals(Lorg/ejml/data/FMatrixD1;FLorg/ejml/data/FMatrixD1;)V
    .locals 3

    const/4 v0, 0x1

    .line 1992
    invoke-static {p0, p2, v0}, Lorg/ejml/UtilEjml;->checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Z)V

    .line 1994
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1997
    invoke-virtual {p2, v1}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {p0, v1, v2}, Lorg/ejml/data/FMatrixD1;->plus(IF)F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static addEquals(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)V
    .locals 3

    const/4 v0, 0x1

    .line 1971
    invoke-static {p0, p1, v0}, Lorg/ejml/UtilEjml;->checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Z)V

    .line 1973
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1976
    invoke-virtual {p1, v1}, Lorg/ejml/data/FMatrixD1;->get(I)F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/ejml/data/FMatrixD1;->plus(IF)F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static apply(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/ops/FOperatorUnary;)Lorg/ejml/data/FMatrixRMaj;
    .locals 0

    .line 2875
    invoke-static {p0, p1, p0}, Lorg/ejml/dense/row/CommonOps_FDRM;->apply(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/ops/FOperatorUnary;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p0

    return-object p0
.end method

.method public static apply(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/ops/FOperatorUnary;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 3

    .line 2865
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p2

    const/4 v0, 0x0

    .line 2867
    :goto_0
    iget-object v1, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2868
    iget-object v1, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v2, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v2, v2, v0

    invoke-interface {p1, v2}, Lorg/ejml/ops/FOperatorUnary;->apply(F)F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public static changeSign(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrixD1;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 2438
    invoke-static {p1, p0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/FMatrixD1;

    .line 2440
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2443
    iget-object v2, p1, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v3, p0, Lorg/ejml/data/FMatrixD1;->data:[F

    aget v3, v3, v1

    neg-float v3, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static changeSign(Lorg/ejml/data/FMatrixD1;)V
    .locals 4

    .line 2421
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2424
    iget-object v2, p0, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v3, p0, Lorg/ejml/data/FMatrixD1;->data:[F

    aget v3, v3, v1

    neg-float v3, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static columnsToVector(Lorg/ejml/data/FMatrixRMaj;[Lorg/ejml/data/FMatrixRMaj;)[Lorg/ejml/data/FMatrixRMaj;
    .locals 5

    if-eqz p1, :cond_0

    .line 894
    array-length v0, p1

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_1

    .line 895
    :cond_0
    iget p1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    new-array p1, p1, [Lorg/ejml/data/FMatrixRMaj;

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 900
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 901
    aget-object v2, p1, v1

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 902
    new-instance v2, Lorg/ejml/data/FMatrixRMaj;

    iget v4, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-direct {v2, v4, v3}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    aput-object v2, p1, v1

    goto :goto_1

    .line 904
    :cond_2
    iget v4, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-virtual {v2, v4, v3, v0}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    .line 907
    :goto_1
    aget-object v2, p1, v1

    move v3, v0

    .line 909
    :goto_2
    iget v4, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v3, v4, :cond_3

    .line 910
    invoke-virtual {p0, v3, v1}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p1
.end method

.method public static concatColumns(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 3

    .line 2672
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2673
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v2, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    add-int/2addr v1, v2

    .line 2675
    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p2

    .line 2676
    invoke-virtual {p2}, Lorg/ejml/data/FMatrixRMaj;->zero()V

    const/4 v0, 0x0

    .line 2678
    invoke-static {p0, p2, v0, v0}, Lorg/ejml/dense/row/CommonOps_FDRM;->insert(Lorg/ejml/data/FMatrix;Lorg/ejml/data/FMatrix;II)V

    .line 2679
    iget p0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {p1, p2, v0, p0}, Lorg/ejml/dense/row/CommonOps_FDRM;->insert(Lorg/ejml/data/FMatrix;Lorg/ejml/data/FMatrix;II)V

    return-object p2
.end method

.method public static varargs concatColumnsMulti([Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 2697
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_0

    .line 2698
    aget-object v4, p0, v1

    iget v4, v4, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2699
    aget-object v4, p0, v1

    iget v4, v4, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2701
    :cond_0
    new-instance v1, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v1, v2, v3}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    move v2, v0

    move v3, v2

    .line 2704
    :goto_1
    array-length v4, p0

    if-ge v2, v4, :cond_1

    .line 2705
    aget-object v4, p0, v2

    invoke-static {v4, v1, v0, v3}, Lorg/ejml/dense/row/CommonOps_FDRM;->insert(Lorg/ejml/data/FMatrix;Lorg/ejml/data/FMatrix;II)V

    .line 2706
    aget-object v4, p0, v2

    iget v4, v4, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public static concatRows(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 3

    .line 2716
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    add-int/2addr v0, v1

    .line 2717
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v2, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2719
    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 2720
    invoke-virtual {p2}, Lorg/ejml/data/FMatrixRMaj;->zero()V

    const/4 v0, 0x0

    .line 2722
    invoke-static {p0, p2, v0, v0}, Lorg/ejml/dense/row/CommonOps_FDRM;->insert(Lorg/ejml/data/FMatrix;Lorg/ejml/data/FMatrix;II)V

    .line 2723
    iget p0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-static {p1, p2, p0, v0}, Lorg/ejml/dense/row/CommonOps_FDRM;->insert(Lorg/ejml/data/FMatrix;Lorg/ejml/data/FMatrix;II)V

    return-void
.end method

.method public static varargs concatRowsMulti([Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 2739
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_0

    .line 2740
    aget-object v4, p0, v1

    iget v4, v4, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    add-int/2addr v2, v4

    .line 2741
    aget-object v4, p0, v1

    iget v4, v4, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2743
    :cond_0
    new-instance v1, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v1, v2, v3}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    move v2, v0

    move v3, v2

    .line 2746
    :goto_1
    array-length v4, p0

    if-ge v2, v4, :cond_1

    .line 2747
    aget-object v4, p0, v2

    invoke-static {v4, v1, v3, v0}, Lorg/ejml/dense/row/CommonOps_FDRM;->insert(Lorg/ejml/data/FMatrix;Lorg/ejml/data/FMatrix;II)V

    .line 2748
    aget-object v4, p0, v2

    iget v4, v4, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public static countTrue(Lorg/ejml/data/BMatrixRMaj;)I
    .locals 4

    .line 2658
    invoke-virtual {p0}, Lorg/ejml/data/BMatrixRMaj;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2661
    iget-object v3, p0, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static det(Lorg/ejml/data/FMatrixRMaj;)F
    .locals 2

    .line 706
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumCols()I

    move-result v0

    .line 707
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumRows()I

    move-result v1

    if-ne v0, v1, :cond_4

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 716
    invoke-static {p0}, Lorg/ejml/dense/row/misc/UnrolledDeterminantFromMinor_FDRM;->det(Lorg/ejml/data/FMatrix1Row;)F

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 718
    invoke-virtual {p0, v0}, Lorg/ejml/data/FMatrixRMaj;->get(I)F

    move-result p0

    return p0

    .line 721
    :cond_1
    new-instance v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;-><init>()V

    .line 723
    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->inputModified()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 724
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->copy()Lorg/ejml/data/FMatrixRMaj;

    move-result-object p0

    .line 727
    :cond_2
    invoke-virtual {v0, p0}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->decompose(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    return p0

    .line 729
    :cond_3
    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;->computeDeterminant()Lorg/ejml/data/Complex_F32;

    move-result-object p0

    iget p0, p0, Lorg/ejml/data/Complex_F32;->real:F

    return p0

    .line 710
    :cond_4
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string v0, "Must be a square matrix."

    invoke-direct {p0, v0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs diag(Lorg/ejml/data/FMatrixRMaj;I[F)Lorg/ejml/data/FMatrixRMaj;
    .locals 2

    if-nez p0, :cond_0

    .line 1029
    new-instance p0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p0, p1, p1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 1031
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, p1, :cond_2

    const/4 v0, 0x0

    .line 1034
    invoke-static {p0, v0}, Lorg/ejml/dense/row/CommonOps_FDRM;->fill(Lorg/ejml/data/FMatrixD1;F)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_1

    .line 1038
    aget v1, p2, v0

    invoke-virtual {p0, v0, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->unsafe_set(IIF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p0

    .line 1032
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected matrix size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs diag([F)Lorg/ejml/data/FMatrixRMaj;
    .locals 2

    const/4 v0, 0x0

    .line 1021
    array-length v1, p0

    invoke-static {v0, v1, p0}, Lorg/ejml/dense/row/CommonOps_FDRM;->diag(Lorg/ejml/data/FMatrixRMaj;I[F)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p0

    return-object p0
.end method

.method public static varargs diagR(II[F)Lorg/ejml/data/FMatrixRMaj;
    .locals 2

    .line 1060
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, p0, p1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 1062
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_0

    .line 1065
    aget v1, p2, p1

    invoke-virtual {v0, p1, p1, v1}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static divide(FLorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrixD1;",
            ">(FTT;TT;)TT;"
        }
    .end annotation

    .line 2376
    invoke-static {p2, p1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/FMatrixD1;

    .line 2378
    invoke-virtual {p1}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2381
    iget-object v2, p2, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v3, p1, Lorg/ejml/data/FMatrixD1;->data:[F

    aget v3, v3, v1

    div-float v3, p0, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public static divide(Lorg/ejml/data/FMatrixD1;FLorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrixD1;",
            ">(TT;FTT;)TT;"
        }
    .end annotation

    .line 2400
    invoke-static {p2, p0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/FMatrixD1;

    .line 2402
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2405
    iget-object v2, p2, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v3, p0, Lorg/ejml/data/FMatrixD1;->data:[F

    aget v3, v3, v1

    div-float/2addr v3, p1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public static divide(FLorg/ejml/data/FMatrixD1;)V
    .locals 4

    .line 2338
    invoke-virtual {p1}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2341
    iget-object v2, p1, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v3, p1, Lorg/ejml/data/FMatrixD1;->data:[F

    aget v3, v3, v1

    div-float v3, p0, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static divide(Lorg/ejml/data/FMatrixD1;F)V
    .locals 4

    .line 2356
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2359
    iget-object v2, p0, Lorg/ejml/data/FMatrixD1;->data:[F

    aget v3, v2, v1

    div-float/2addr v3, p1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static divideCols(Lorg/ejml/data/FMatrixRMaj;[F)V
    .locals 7

    .line 1743
    array-length v0, p1

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1748
    :goto_0
    iget v3, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v1, v3, :cond_1

    move v3, v0

    .line 1749
    :goto_1
    iget v4, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v3, v4, :cond_0

    .line 1750
    iget-object v4, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v5, v4, v2

    aget v6, p1, v3

    div-float/2addr v5, v6

    aput v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 1744
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not enough elements in values."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static divideRows([FLorg/ejml/data/FMatrixRMaj;)V
    .locals 7

    .line 1704
    array-length v0, p0

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1709
    :goto_0
    iget v3, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v1, v3, :cond_1

    .line 1710
    aget v3, p0, v1

    move v4, v0

    .line 1711
    :goto_1
    iget v5, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v4, v5, :cond_0

    .line 1712
    iget-object v5, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v6, v5, v2

    div-float/2addr v6, v3

    aput v6, v5, v2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 1705
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not enough elements in values."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static divideRowsCols([FILorg/ejml/data/FMatrixRMaj;[FI)V
    .locals 10

    .line 1768
    array-length v0, p0

    sub-int/2addr v0, p1

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-lt v0, v1, :cond_3

    .line 1771
    array-length v0, p3

    sub-int/2addr v0, p4

    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-lt v0, v1, :cond_2

    .line 1775
    iget v0, p2, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    .line 1776
    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_1

    add-int v5, p1, v3

    .line 1780
    aget v5, p0, v5

    move v6, v2

    :goto_1
    if-ge v6, v1, :cond_0

    .line 1782
    iget-object v7, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v8, v7, v4

    add-int v9, p4, v6

    aget v9, p3, v9

    mul-float/2addr v9, v5

    div-float/2addr v8, v9

    aput v8, v7, v4

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 1772
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not enough elements in diagC."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1769
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not enough elements in diagA."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static dot(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)F
    .locals 1

    .line 311
    invoke-static {p0}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-static {p0, p1}, Lorg/ejml/dense/row/mult/VectorVectorMult_FDRM;->innerProd(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)F

    move-result p0

    return p0

    .line 312
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Both inputs must be vectors"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static elementDiv(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrixD1;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    .line 1576
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/misc/ImplCommonOps_FDRM;->elementDiv(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;

    move-result-object p0

    return-object p0
.end method

.method public static elementDiv(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)V
    .locals 0

    .line 1562
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/ImplCommonOps_FDRM;->elementDiv(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)V

    return-void
.end method

.method public static elementExp(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrixD1;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 1674
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/ImplCommonOps_FDRM;->elementExp(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;

    move-result-object p0

    return-object p0
.end method

.method public static elementLessThan(Lorg/ejml/data/FMatrixRMaj;FLorg/ejml/data/BMatrixRMaj;)Lorg/ejml/data/BMatrixRMaj;
    .locals 5

    .line 2510
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/BMatrixRMaj;II)Lorg/ejml/data/BMatrixRMaj;

    move-result-object p2

    .line 2512
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2515
    iget-object v3, p2, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    iget-object v4, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v4, v4, v2

    cmpg-float v4, v4, p1

    if-gez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public static elementLessThan(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/BMatrixRMaj;)Lorg/ejml/data/BMatrixRMaj;
    .locals 6

    .line 2590
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/BMatrixRMaj;II)Lorg/ejml/data/BMatrixRMaj;

    move-result-object p2

    .line 2592
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2595
    iget-object v3, p2, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    iget-object v4, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v4, v4, v2

    iget-object v5, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v5, v5, v2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public static elementLessThanOrEqual(Lorg/ejml/data/FMatrixRMaj;FLorg/ejml/data/BMatrixRMaj;)Lorg/ejml/data/BMatrixRMaj;
    .locals 5

    .line 2530
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/BMatrixRMaj;II)Lorg/ejml/data/BMatrixRMaj;

    move-result-object p2

    .line 2532
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2535
    iget-object v3, p2, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    iget-object v4, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v4, v4, v2

    cmpg-float v4, v4, p1

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public static elementLessThanOrEqual(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/BMatrixRMaj;)Lorg/ejml/data/BMatrixRMaj;
    .locals 6

    .line 2610
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/BMatrixRMaj;II)Lorg/ejml/data/BMatrixRMaj;

    move-result-object p2

    .line 2612
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2615
    iget-object v3, p2, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    iget-object v4, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v4, v4, v2

    iget-object v5, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v5, v5, v2

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public static elementLog(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrixD1;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 1660
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/ImplCommonOps_FDRM;->elementLog(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;

    move-result-object p0

    return-object p0
.end method

.method public static elementMax(Lorg/ejml/data/FMatrixD1;)F
    .locals 1

    const/4 v0, 0x0

    .line 1420
    invoke-static {p0, v0}, Lorg/ejml/dense/row/misc/ImplCommonOps_FDRM;->elementMax(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/ElementLocation;)F

    move-result p0

    return p0
.end method

.method public static elementMax(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/ElementLocation;)F
    .locals 0

    .line 1435
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/ImplCommonOps_FDRM;->elementMax(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/ElementLocation;)F

    move-result p0

    return p0
.end method

.method public static elementMaxAbs(Lorg/ejml/data/FMatrixD1;)F
    .locals 1

    const/4 v0, 0x0

    .line 1449
    invoke-static {p0, v0}, Lorg/ejml/dense/row/misc/ImplCommonOps_FDRM;->elementMaxAbs(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/ElementLocation;)F

    move-result p0

    return p0
.end method

.method public static elementMaxAbs(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/ElementLocation;)F
    .locals 0

    .line 1464
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/ImplCommonOps_FDRM;->elementMaxAbs(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/ElementLocation;)F

    move-result p0

    return p0
.end method

.method public static elementMin(Lorg/ejml/data/FMatrixD1;)F
    .locals 1

    const/4 v0, 0x0

    .line 1478
    invoke-static {p0, v0}, Lorg/ejml/dense/row/misc/ImplCommonOps_FDRM;->elementMin(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/ElementLocation;)F

    move-result p0

    return p0
.end method

.method public static elementMin(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/ElementLocation;)F
    .locals 0

    .line 1493
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/ImplCommonOps_FDRM;->elementMin(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/ElementLocation;)F

    move-result p0

    return p0
.end method

.method public static elementMinAbs(Lorg/ejml/data/FMatrixD1;)F
    .locals 1

    const/4 v0, 0x0

    .line 1507
    invoke-static {p0, v0}, Lorg/ejml/dense/row/misc/ImplCommonOps_FDRM;->elementMinAbs(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/ElementLocation;)F

    move-result p0

    return p0
.end method

.method public static elementMinAbs(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/ElementLocation;)F
    .locals 0

    .line 1522
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/ImplCommonOps_FDRM;->elementMinAbs(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/ElementLocation;)F

    move-result p0

    return p0
.end method

.method public static elementMoreThan(Lorg/ejml/data/FMatrixRMaj;FLorg/ejml/data/BMatrixRMaj;)Lorg/ejml/data/BMatrixRMaj;
    .locals 5

    .line 2550
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/BMatrixRMaj;II)Lorg/ejml/data/BMatrixRMaj;

    move-result-object p2

    .line 2552
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2555
    iget-object v3, p2, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    iget-object v4, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v4, v4, v2

    cmpl-float v4, v4, p1

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public static elementMoreThanOrEqual(Lorg/ejml/data/FMatrixRMaj;FLorg/ejml/data/BMatrixRMaj;)Lorg/ejml/data/BMatrixRMaj;
    .locals 5

    .line 2570
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/BMatrixRMaj;II)Lorg/ejml/data/BMatrixRMaj;

    move-result-object p2

    .line 2572
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2575
    iget-object v3, p2, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    iget-object v4, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v4, v4, v2

    cmpl-float v4, v4, p1

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public static elementMult(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrixD1;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    .line 1549
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/misc/ImplCommonOps_FDRM;->elementMult(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;

    move-result-object p0

    return-object p0
.end method

.method public static elementMult(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)V
    .locals 0

    .line 1535
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/ImplCommonOps_FDRM;->elementMult(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)V

    return-void
.end method

.method public static elementPower(FLorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrixD1;",
            ">(FTT;TT;)TT;"
        }
    .end annotation

    .line 1632
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/misc/ImplCommonOps_FDRM;->elementPower(FLorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;

    move-result-object p0

    return-object p0
.end method

.method public static elementPower(Lorg/ejml/data/FMatrixD1;FLorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrixD1;",
            ">(TT;FTT;)TT;"
        }
    .end annotation

    .line 1646
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/misc/ImplCommonOps_FDRM;->elementPower(Lorg/ejml/data/FMatrixD1;FLorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;

    move-result-object p0

    return-object p0
.end method

.method public static elementPower(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrixD1;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    .line 1618
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/misc/ImplCommonOps_FDRM;->elementPower(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;

    move-result-object p0

    return-object p0
.end method

.method public static elementSum(Lorg/ejml/data/FMatrixD1;)F
    .locals 0

    .line 1590
    invoke-static {p0}, Lorg/ejml/dense/row/misc/ImplCommonOps_FDRM;->elementSum(Lorg/ejml/data/FMatrixD1;)F

    move-result p0

    return p0
.end method

.method public static elementSumAbs(Lorg/ejml/data/FMatrixD1;)F
    .locals 0

    .line 1604
    invoke-static {p0}, Lorg/ejml/dense/row/misc/ImplCommonOps_FDRM;->elementSumAbs(Lorg/ejml/data/FMatrixD1;)F

    move-result p0

    return p0
.end method

.method public static elements(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/BMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 6

    const/4 v0, 0x0

    .line 2630
    invoke-static {p0, p1, v0}, Lorg/ejml/UtilEjml;->checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Z)V

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 2633
    new-instance p2, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p2, v1, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 2635
    :cond_0
    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_FDRM;->countTrue(Lorg/ejml/data/BMatrixRMaj;)I

    move-result v2

    invoke-virtual {p2, v2, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 2637
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumElements()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 2641
    iget-object v3, p1, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_1

    .line 2642
    iget-object v3, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v5, v5, v0

    aput v5, v3, v2

    move v2, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public static extract(Lorg/ejml/data/FMatrixRMaj;IIII)Lorg/ejml/data/FMatrixRMaj;
    .locals 9

    if-le p2, p1, :cond_1

    if-ltz p1, :cond_1

    .line 1210
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-gt p2, v0, :cond_1

    if-le p4, p3, :cond_0

    if-ltz p3, :cond_0

    .line 1212
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-gt p4, v0, :cond_0

    sub-int v8, p4, p3

    sub-int v7, p2, p1

    .line 1218
    new-instance p2, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p2, v7, v8}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p3

    move-object v4, p2

    .line 1220
    invoke-static/range {v1 .. v8}, Lorg/ejml/dense/row/misc/ImplCommonOps_FDRM;->extract(Lorg/ejml/data/FMatrixRMaj;IILorg/ejml/data/FMatrixRMaj;IIII)V

    return-object p2

    .line 1213
    :cond_0
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string/jumbo p1, "srcX1 <= srcX0 || srcX0 < 0 || srcX1 > src.numCols"

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1211
    :cond_1
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string/jumbo p1, "srcY1 <= srcY0 || srcY0 < 0 || srcY1 > src.numRows"

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static extract(Lorg/ejml/data/FMatrixRMaj;[IILorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 4

    if-nez p3, :cond_0

    .line 1262
    new-instance p3, Lorg/ejml/data/FMatrixRMaj;

    const/4 v0, 0x1

    invoke-direct {p3, p2, v0}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 1263
    :cond_0
    invoke-static {p3}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lorg/ejml/data/FMatrixRMaj;->getNumElements()I

    move-result v0

    if-ne p2, v0, :cond_2

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    .line 1267
    iget-object v1, p3, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v2, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v3, p1, v0

    aget v2, v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p3

    .line 1264
    :cond_2
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string p1, "Dst must be a vector and have \'length\' elements"

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static extract(Lorg/ejml/data/FMatrixRMaj;[II[IILorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 9

    .line 1239
    invoke-static {p5, p2, p4}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p2, :cond_1

    .line 1243
    iget v3, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    aget v4, p1, v1

    mul-int/2addr v3, v4

    move v4, v0

    :goto_1
    if-ge v4, p4, :cond_0

    .line 1245
    iget-object v5, p5, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v8, p3, v4

    add-int/2addr v8, v3

    aget v7, v7, v8

    aput v7, v5, v2

    add-int/lit8 v4, v4, 0x1

    move v2, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p5
.end method

.method public static extract(Lorg/ejml/data/FMatrix;IIIILorg/ejml/data/FMatrix;)V
    .locals 8

    .line 1168
    move-object v0, p5

    check-cast v0, Lorg/ejml/data/ReshapeMatrix;

    sub-int v1, p2, p1

    sub-int v2, p4, p3

    invoke-interface {v0, v1, v2}, Lorg/ejml/data/ReshapeMatrix;->reshape(II)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 1169
    invoke-static/range {v0 .. v7}, Lorg/ejml/dense/row/CommonOps_FDRM;->extract(Lorg/ejml/data/FMatrix;IIIILorg/ejml/data/FMatrix;II)V

    return-void
.end method

.method public static extract(Lorg/ejml/data/FMatrix;IIIILorg/ejml/data/FMatrix;II)V
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    if-lt v2, v1, :cond_4

    if-ltz v1, :cond_4

    .line 1133
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v6

    if-gt v2, v6, :cond_4

    if-lt v4, v3, :cond_3

    if-ltz v3, :cond_3

    .line 1135
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v6

    if-gt v4, v6, :cond_3

    sub-int v7, v4, v3

    sub-int v6, v2, v1

    add-int v2, p6, v6

    .line 1141
    invoke-interface {p5}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v4

    const-string v8, " < "

    if-gt v2, v4, :cond_2

    add-int v2, p7, v7

    .line 1143
    invoke-interface {p5}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v4

    if-gt v2, v4, :cond_1

    .line 1147
    instance-of v2, v0, Lorg/ejml/data/FMatrixRMaj;

    if-eqz v2, :cond_0

    instance-of v2, v5, Lorg/ejml/data/FMatrixRMaj;

    if-eqz v2, :cond_0

    .line 1148
    check-cast v0, Lorg/ejml/data/FMatrixRMaj;

    move-object v4, v5

    check-cast v4, Lorg/ejml/data/FMatrixRMaj;

    move v1, p1

    move v2, p3

    move-object v3, v4

    move v4, p6

    move/from16 v5, p7

    invoke-static/range {v0 .. v7}, Lorg/ejml/dense/row/misc/ImplCommonOps_FDRM;->extract(Lorg/ejml/data/FMatrixRMaj;IILorg/ejml/data/FMatrixRMaj;IIII)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p3

    move-object v3, p5

    move v4, p6

    move/from16 v5, p7

    .line 1150
    invoke-static/range {v0 .. v7}, Lorg/ejml/dense/row/misc/ImplCommonOps_FDMA;->extract(Lorg/ejml/data/FMatrix;IILorg/ejml/data/FMatrix;IIII)V

    :goto_0
    return-void

    .line 1144
    :cond_1
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "dst is too small in columns. "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p5}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1142
    :cond_2
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "dst is too small in rows. "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p5}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1136
    :cond_3
    new-instance v1, Lorg/ejml/MatrixDimensionException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "srcX1 < srcX0 || srcX0 < 0 || srcX1 > src.numCols. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p5}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1134
    :cond_4
    new-instance v1, Lorg/ejml/MatrixDimensionException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "srcY1 < srcY0 || srcY0 < 0 || srcY1 > src.numRows. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p5}, Lorg/ejml/UtilEjml;->stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static extract(Lorg/ejml/data/FMatrix;IILorg/ejml/data/FMatrix;)V
    .locals 9

    .line 1186
    invoke-interface {p3}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v0

    add-int v3, p1, v0

    invoke-interface {p3}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v0

    add-int v5, p2, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    move-object v6, p3

    invoke-static/range {v1 .. v8}, Lorg/ejml/dense/row/CommonOps_FDRM;->extract(Lorg/ejml/data/FMatrix;IIIILorg/ejml/data/FMatrix;II)V

    return-void
.end method

.method public static extractColumn(Lorg/ejml/data/FMatrixRMaj;ILorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 3

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 1360
    new-instance p2, Lorg/ejml/data/FMatrixRMaj;

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-direct {p2, v1, v0}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 1361
    :cond_0
    invoke-static {p2}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lorg/ejml/data/FMatrixRMaj;->getNumElements()I

    move-result v1

    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-eq v1, v2, :cond_2

    .line 1362
    :cond_1
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-virtual {p2, v1, v0}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 1365
    :goto_1
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v0, v1, :cond_3

    .line 1366
    iget-object v1, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v2, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v2, v2, p1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 1365
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    add-int/2addr p1, v1

    goto :goto_1

    :cond_3
    return-object p2
.end method

.method public static extractDiag(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 4

    .line 1314
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 1317
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 1319
    :cond_0
    invoke-static {p1}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v3, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v2, v3

    if-eq v2, v0, :cond_2

    .line 1320
    :cond_1
    invoke-virtual {p1, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 1325
    invoke-virtual {p0, v1, v1}, Lorg/ejml/data/FMatrixRMaj;->unsafe_get(II)F

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/ejml/data/FMatrixRMaj;->set(IF)F

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method public static extractRow(Lorg/ejml/data/FMatrixRMaj;ILorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 3

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 1341
    new-instance p2, Lorg/ejml/data/FMatrixRMaj;

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-direct {p2, v0, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 1342
    :cond_0
    invoke-static {p2}, Lorg/ejml/dense/row/MatrixFeatures_FDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lorg/ejml/data/FMatrixRMaj;->getNumElements()I

    move-result v1

    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-eq v1, v2, :cond_2

    .line 1343
    :cond_1
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 1345
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/ejml/data/FMatrixRMaj;->getIndex(II)I

    move-result p1

    iget-object v2, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget p0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {v0, p1, v2, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method public static fill(Lorg/ejml/data/FMatrixD1;F)V
    .locals 2

    .line 2460
    iget-object v0, p0, Lorg/ejml/data/FMatrixD1;->data:[F

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Ljava/util/Arrays;->fill([FIIF)V

    return-void
.end method

.method public static identity(I)Lorg/ejml/data/FMatrixRMaj;
    .locals 3

    .line 979
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, p0, p0}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 982
    invoke-virtual {v0, v1, v1, v2}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static identity(II)Lorg/ejml/data/FMatrixRMaj;
    .locals 2

    .line 996
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, p0, p1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    if-ge p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-ge p1, p0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1001
    invoke-virtual {v0, p1, p1, v1}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static insert(Lorg/ejml/data/FMatrix;Lorg/ejml/data/FMatrix;II)V
    .locals 8

    const/4 v1, 0x0

    .line 1406
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v4

    move-object v0, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lorg/ejml/dense/row/CommonOps_FDRM;->extract(Lorg/ejml/data/FMatrix;IIIILorg/ejml/data/FMatrix;II)V

    return-void
.end method

.method public static insert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;[II[II)V
    .locals 9

    .line 1292
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    const-string/jumbo v1, "src\'s rows don\'t match rowsSize"

    invoke-static {p3, v0, v1}, Lorg/ejml/UtilEjml;->assertEq(IILjava/lang/String;)V

    .line 1293
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const-string/jumbo v1, "src\'s columns don\'t match colsSize"

    invoke-static {p5, v0, v1}, Lorg/ejml/UtilEjml;->assertEq(IILjava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p3, :cond_1

    .line 1297
    iget v3, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    aget v4, p2, v1

    mul-int/2addr v3, v4

    move v4, v0

    :goto_1
    if-ge v4, p5, :cond_0

    .line 1299
    iget-object v5, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v6, p4, v4

    add-int/2addr v6, v3

    iget-object v7, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v8, v2, 0x1

    aget v2, v7, v2

    aput v2, v5, v6

    add-int/lit8 v4, v4, 0x1

    move v2, v8

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static invert(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 3

    .line 751
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-gt v0, v1, :cond_2

    .line 752
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_1

    .line 756
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 757
    invoke-static {p0, p0}, Lorg/ejml/dense/row/misc/UnrolledInverseFromMinor_FDRM;->inv(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 759
    invoke-virtual {p0, v2}, Lorg/ejml/data/FMatrixRMaj;->get(I)F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Lorg/ejml/data/FMatrixRMaj;->set(IF)F

    goto :goto_0

    .line 753
    :cond_1
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string v0, "Must be a square matrix."

    invoke-direct {p0, v0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 762
    :cond_2
    new-instance v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;-><init>()V

    .line 763
    new-instance v1, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_FDRM;

    invoke-direct {v1, v0}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_FDRM;-><init>(Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;)V

    .line 764
    invoke-virtual {v1, p0}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_FDRM;->setA(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 765
    invoke-virtual {v1, p0}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_FDRM;->invert(Lorg/ejml/data/FMatrixRMaj;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    return v2
.end method

.method public static invert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 3

    .line 798
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {p1, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 800
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-gt v0, v1, :cond_2

    .line 801
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_1

    .line 804
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 805
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledInverseFromMinor_FDRM;->inv(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 807
    invoke-virtual {p0, v2}, Lorg/ejml/data/FMatrixRMaj;->get(I)F

    move-result p0

    div-float/2addr v0, p0

    invoke-virtual {p1, v2, v0}, Lorg/ejml/data/FMatrixRMaj;->set(IF)F

    goto :goto_0

    .line 802
    :cond_1
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string p1, "Must be a square matrix."

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 810
    :cond_2
    new-instance v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_FDRM;-><init>()V

    .line 811
    new-instance v1, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_FDRM;

    invoke-direct {v1, v0}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_FDRM;-><init>(Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;)V

    .line 813
    invoke-virtual {v1}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_FDRM;->modifiesA()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 814
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->copy()Lorg/ejml/data/FMatrixRMaj;

    move-result-object p0

    .line 816
    :cond_3
    invoke-virtual {v1, p0}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_FDRM;->setA(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    .line 818
    :cond_4
    invoke-virtual {v1, p1}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_FDRM;->invert(Lorg/ejml/data/FMatrixRMaj;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static invertSPD(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 3

    .line 834
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_4

    .line 836
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-virtual {p1, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 838
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-gt v0, v1, :cond_1

    .line 840
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledCholesky_FDRM;->lower(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Z

    move-result p0

    if-nez p0, :cond_0

    return v2

    .line 843
    :cond_0
    iget-object p0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {p0, v0}, Lorg/ejml/dense/row/decomposition/TriangularSolver_FDRM;->invertLower([FI)V

    .line 845
    invoke-static {p1}, Lorg/ejml/dense/row/SpecializedOps_FDRM;->multLowerTranA(Lorg/ejml/data/FMatrixRMaj;)V

    goto :goto_0

    .line 847
    :cond_1
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {v0}, Lorg/ejml/dense/row/factory/LinearSolverFactory_FDRM;->chol(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object v0

    .line 848
    invoke-interface {v0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->modifiesA()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 849
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->copy()Lorg/ejml/data/FMatrixRMaj;

    move-result-object p0

    .line 851
    :cond_2
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->setA(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    .line 853
    :cond_3
    invoke-interface {v0, p1}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->invert(Lorg/ejml/data/Matrix;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    .line 835
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must be a square matrix"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static kron(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 9

    .line 1084
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v0, v1

    .line 1085
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v2, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    mul-int/2addr v1, v2

    .line 1087
    invoke-static {p2, v1, v0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    .line 1092
    :goto_0
    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v1, v2, :cond_3

    move v2, v0

    .line 1093
    :goto_1
    iget v3, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v2, v3, :cond_2

    .line 1094
    invoke-virtual {p0, v1, v2}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v3

    move v4, v0

    .line 1096
    :goto_2
    iget v5, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v4, v5, :cond_1

    move v5, v0

    .line 1097
    :goto_3
    iget v6, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v5, v6, :cond_0

    .line 1098
    invoke-virtual {p1, v4, v5}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v6

    mul-float/2addr v6, v3

    .line 1099
    iget v7, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    mul-int/2addr v7, v1

    add-int/2addr v7, v4

    iget v8, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v8, v2

    add-int/2addr v8, v5

    invoke-virtual {p2, v7, v8, v6}, Lorg/ejml/data/FMatrixRMaj;->unsafe_set(IIF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p2
.end method

.method public static maxCols(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 6

    const/4 v0, 0x1

    .line 1942
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    const/4 v0, 0x0

    .line 1944
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_2

    .line 1948
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    const v2, -0x800001

    move v3, v0

    :goto_1
    if-ge v3, v1, :cond_1

    .line 1950
    iget-object v4, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v4, v4, v3

    cmpl-float v5, v4, v2

    if-lez v5, :cond_0

    move v2, v4

    .line 1949
    :cond_0
    iget v4, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    add-int/2addr v3, v4

    goto :goto_1

    .line 1955
    :cond_1
    invoke-virtual {p1, v0, v2}, Lorg/ejml/data/FMatrixRMaj;->set(IF)F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static maxRows(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 7

    .line 1855
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    const/4 v0, 0x0

    .line 1857
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    .line 1860
    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v2, v1

    .line 1861
    iget v3, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v3, v0

    const v4, -0x800001

    :goto_1
    if-ge v3, v2, :cond_1

    .line 1862
    iget-object v5, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v5, v5, v3

    cmpl-float v6, v5, v4

    if-lez v6, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1867
    :cond_1
    invoke-virtual {p1, v0, v4}, Lorg/ejml/data/FMatrixRMaj;->set(IF)F

    move v0, v1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static minCols(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 6

    const/4 v0, 0x1

    .line 1912
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    const/4 v0, 0x0

    .line 1914
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_2

    .line 1918
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    move v3, v0

    :goto_1
    if-ge v3, v1, :cond_1

    .line 1920
    iget-object v4, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v4, v4, v3

    cmpg-float v5, v4, v2

    if-gez v5, :cond_0

    move v2, v4

    .line 1919
    :cond_0
    iget v4, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    add-int/2addr v3, v4

    goto :goto_1

    .line 1925
    :cond_1
    invoke-virtual {p1, v0, v2}, Lorg/ejml/data/FMatrixRMaj;->set(IF)F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static minRows(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 7

    .line 1826
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    const/4 v0, 0x0

    .line 1828
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    .line 1831
    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v2, v1

    .line 1832
    iget v3, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v3, v0

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    :goto_1
    if-ge v3, v2, :cond_1

    .line 1833
    iget-object v5, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v5, v5, v3

    cmpg-float v6, v5, v4

    if-gez v6, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1838
    :cond_1
    invoke-virtual {p1, v0, v4}, Lorg/ejml/data/FMatrixRMaj;->set(IF)F

    move v0, v1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static mult(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrix1Row;",
            ">(FTT;TT;TT;)TT;"
        }
    .end annotation

    .line 109
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v1, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    invoke-static {p3, p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p3

    check-cast p3, Lorg/ejml/data/FMatrix1Row;

    .line 110
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    iget v0, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    .line 115
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_FDRM;->mult_reorder(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_FDRM;->mult_small(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    :goto_0
    return-object p3
.end method

.method public static mult(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrix1Row;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    .line 80
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    invoke-static {p2, p0, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/FMatrix1Row;

    .line 81
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 85
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixVectorMult_FDRM;->mult(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)V

    goto :goto_0

    .line 86
    :cond_0
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_1

    .line 87
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_FDRM;->mult_reorder(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_FDRM;->mult_small(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    :goto_0
    return-object p2
.end method

.method public static multAdd(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 2

    .line 404
    iget v0, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    .line 405
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_FDRM;->multAdd_reorder(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    goto :goto_0

    .line 407
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_FDRM;->multAdd_small(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    :goto_0
    return-void
.end method

.method public static multAdd(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 2

    .line 378
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 379
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixVectorMult_FDRM;->multAdd(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)V

    goto :goto_0

    .line 381
    :cond_0
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_1

    .line 382
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_FDRM;->multAdd_reorder(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    goto :goto_0

    .line 384
    :cond_1
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_FDRM;->multAdd_small(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    :goto_0
    return-void
.end method

.method public static multAddTransA(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 2

    .line 455
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-ge v0, v1, :cond_1

    iget v0, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 459
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_FDRM;->multAddTransA_small(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    goto :goto_1

    .line 457
    :cond_1
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_FDRM;->multAddTransA_reorder(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    :goto_1
    return-void
.end method

.method public static multAddTransA(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 2

    .line 424
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 425
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    .line 426
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixVectorMult_FDRM;->multAddTransA_reorder(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)V

    goto :goto_1

    .line 428
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixVectorMult_FDRM;->multAddTransA_small(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)V

    goto :goto_1

    .line 431
    :cond_1
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-ge v0, v1, :cond_3

    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_2

    goto :goto_0

    .line 435
    :cond_2
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_FDRM;->multAddTransA_small(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    goto :goto_1

    .line 433
    :cond_3
    :goto_0
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_FDRM;->multAddTransA_reorder(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    :goto_1
    return-void
.end method

.method public static multAddTransAB(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 2

    .line 532
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_TRANAB_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 533
    invoke-static {p0, p1, p2, p3, v0}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_FDRM;->multAddTransAB_aux(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;[F)V

    goto :goto_0

    .line 535
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_FDRM;->multAddTransAB(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    :goto_0
    return-void
.end method

.method public static multAddTransAB(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 2

    .line 510
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_TRANAB_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 511
    invoke-static {p0, p1, p2, v0}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_FDRM;->multAddTransAB_aux(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;[F)V

    goto :goto_0

    .line 513
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_FDRM;->multAddTransAB(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    :goto_0
    return-void
.end method

.method public static multAddTransB(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 0

    .line 494
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_FDRM;->multAddTransB(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    return-void
.end method

.method public static multAddTransB(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V
    .locals 0

    .line 476
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_FDRM;->multAddTransB(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    return-void
.end method

.method public static multCols(Lorg/ejml/data/FMatrixRMaj;[F)V
    .locals 7

    .line 1724
    array-length v0, p1

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1729
    :goto_0
    iget v3, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v1, v3, :cond_1

    move v3, v0

    .line 1730
    :goto_1
    iget v4, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v3, v4, :cond_0

    .line 1731
    iget-object v4, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v5, v4, v2

    aget v6, p1, v3

    mul-float/2addr v5, v6

    aput v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 1725
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not enough elements in values."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static multInner(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrix1Row;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 334
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    invoke-static {p1, p0, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/FMatrix1Row;

    .line 336
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_INNER_SWITCH:I

    if-lt v0, v1, :cond_0

    .line 337
    invoke-static {p0, p1}, Lorg/ejml/dense/row/mult/MatrixMultProduct_FDRM;->inner_small(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    goto :goto_0

    .line 339
    :cond_0
    invoke-static {p0, p1}, Lorg/ejml/dense/row/mult/MatrixMultProduct_FDRM;->inner_reorder(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    :goto_0
    return-object p1
.end method

.method public static multOuter(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrix1Row;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 360
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    invoke-static {p1, p0, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/FMatrix1Row;

    .line 361
    invoke-static {p0, p1}, Lorg/ejml/dense/row/mult/MatrixMultProduct_FDRM;->outer(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    return-object p1
.end method

.method public static multRows([FLorg/ejml/data/FMatrixRMaj;)V
    .locals 7

    .line 1684
    array-length v0, p0

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1689
    :goto_0
    iget v3, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v1, v3, :cond_1

    .line 1690
    aget v3, p0, v1

    move v4, v0

    .line 1691
    :goto_1
    iget v5, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v4, v5, :cond_0

    .line 1692
    iget-object v5, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v6, v5, v2

    mul-float/2addr v6, v3

    aput v6, v5, v2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 1685
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not enough elements in values."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static multTransA(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrix1Row;",
            ">(FTT;TT;TT;)TT;"
        }
    .end annotation

    .line 172
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v1, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    invoke-static {p3, p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p3

    check-cast p3, Lorg/ejml/data/FMatrix1Row;

    .line 173
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 177
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-ge v0, v1, :cond_1

    iget v0, p2, Lorg/ejml/data/FMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_FDRM;->multTransA_small(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    goto :goto_1

    .line 179
    :cond_1
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_FDRM;->multTransA_reorder(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    :goto_1
    return-object p3
.end method

.method public static multTransA(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrix1Row;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    .line 136
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    invoke-static {p2, p0, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/FMatrix1Row;

    .line 137
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 143
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    .line 144
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixVectorMult_FDRM;->multTransA_reorder(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)V

    goto :goto_1

    .line 146
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixVectorMult_FDRM;->multTransA_small(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)V

    goto :goto_1

    .line 148
    :cond_1
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-ge v0, v1, :cond_3

    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_2

    goto :goto_0

    .line 152
    :cond_2
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_FDRM;->multTransA_small(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    goto :goto_1

    .line 150
    :cond_3
    :goto_0
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_FDRM;->multTransA_reorder(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    :goto_1
    return-object p2
.end method

.method public static multTransAB(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrix1Row;",
            ">(FTT;TT;TT;)TT;"
        }
    .end annotation

    .line 284
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v1, p2, Lorg/ejml/data/FMatrix1Row;->numRows:I

    invoke-static {p3, p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p3

    check-cast p3, Lorg/ejml/data/FMatrix1Row;

    .line 285
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 286
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 289
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_TRANAB_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 290
    invoke-static {p0, p1, p2, p3, v0}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_FDRM;->multTransAB_aux(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;[F)V

    goto :goto_0

    .line 292
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_FDRM;->multTransAB(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    :goto_0
    return-object p3
.end method

.method public static multTransAB(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrix1Row;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    .line 250
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    invoke-static {p2, p0, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/FMatrix1Row;

    .line 251
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 252
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 254
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 256
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    .line 257
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixVectorMult_FDRM;->multTransA_reorder(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)V

    goto :goto_0

    .line 259
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixVectorMult_FDRM;->multTransA_small(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)V

    goto :goto_0

    .line 261
    :cond_1
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_TRANAB_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 262
    invoke-static {p0, p1, p2, v0}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_FDRM;->multTransAB_aux(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;[F)V

    goto :goto_0

    .line 264
    :cond_2
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_FDRM;->multTransAB(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    :goto_0
    return-object p2
.end method

.method public static multTransB(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrix1Row;",
            ">(FTT;TT;TT;)TT;"
        }
    .end annotation

    .line 227
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v1, p2, Lorg/ejml/data/FMatrix1Row;->numRows:I

    invoke-static {p3, p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p3

    check-cast p3, Lorg/ejml/data/FMatrix1Row;

    .line 228
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 229
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 232
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_FDRM;->multTransB(FLorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    return-object p3
.end method

.method public static multTransB(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Lorg/ejml/data/FMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrix1Row;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    .line 200
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    invoke-static {p2, p0, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/FMatrix1Row;

    .line 201
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 202
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 204
    iget v0, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 205
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixVectorMult_FDRM;->mult(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)V

    goto :goto_0

    .line 207
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_FDRM;->multTransB(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    :goto_0
    return-object p2
.end method

.method public static permuteRowInv([ILorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 6

    .line 2763
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    array-length v1, p0

    if-gt v0, v1, :cond_1

    .line 2766
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p2

    .line 2768
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v1, 0x0

    .line 2769
    :goto_0
    iget v2, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v1, v2, :cond_0

    .line 2770
    iget-object v2, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    mul-int v3, v1, v0

    iget-object v4, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v5, p0, v1

    mul-int/2addr v5, v0

    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p2

    .line 2764
    :cond_1
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string p1, "permutation vector must have at least as many elements as input has rows"

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static pinv(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 2

    const/4 v0, 0x1

    .line 876
    invoke-static {v0}, Lorg/ejml/dense/row/factory/LinearSolverFactory_FDRM;->pseudoInverse(Z)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object v0

    .line 877
    invoke-interface {v0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->modifiesA()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 878
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->copy()Lorg/ejml/data/FMatrixRMaj;

    move-result-object p0

    .line 880
    :cond_0
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->setA(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 883
    invoke-interface {v0, p1}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->invert(Lorg/ejml/data/Matrix;)V

    return-void

    .line 881
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invert failed, maybe a bug?"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static removeColumns(Lorg/ejml/data/FMatrixRMaj;II)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p1, p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "col1 must be >= col0"

    .line 1379
    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    if-ltz p1, :cond_1

    .line 1380
    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-gt p2, v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    const-string v3, "Columns which are to be removed must be in bounds"

    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    sub-int v2, p2, p1

    add-int/2addr v2, v1

    move v3, v0

    move v4, v3

    move v5, v4

    .line 1384
    :goto_2
    iget v6, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v3, v6, :cond_4

    move v6, v0

    :goto_3
    if-ge v6, p1, :cond_2

    .line 1386
    iget-object v7, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v8, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int v9, v5, v4

    aget v8, v8, v9

    aput v8, v7, v5

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    add-int/2addr v4, v2

    add-int/lit8 v6, p2, 0x1

    .line 1389
    :goto_4
    iget v7, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v6, v7, :cond_3

    .line 1390
    iget-object v7, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v8, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int v9, v5, v4

    aget v8, v8, v9

    aput v8, v7, v5

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1393
    :cond_4
    iget p1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    return-void
.end method

.method public static rowsToVector(Lorg/ejml/data/FMatrixRMaj;[Lorg/ejml/data/FMatrixRMaj;)[Lorg/ejml/data/FMatrixRMaj;
    .locals 5

    if-eqz p1, :cond_0

    .line 925
    array-length v0, p1

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v0, v1, :cond_1

    .line 926
    :cond_0
    iget p1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    new-array p1, p1, [Lorg/ejml/data/FMatrixRMaj;

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 932
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 933
    aget-object v2, p1, v1

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 934
    new-instance v2, Lorg/ejml/data/FMatrixRMaj;

    iget v4, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-direct {v2, v4, v3}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    aput-object v2, p1, v1

    goto :goto_1

    .line 936
    :cond_2
    iget v4, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {v2, v4, v3, v0}, Lorg/ejml/data/FMatrixRMaj;->reshape(IIZ)V

    .line 939
    :goto_1
    aget-object v2, p1, v1

    move v3, v0

    .line 941
    :goto_2
    iget v4, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v3, v4, :cond_3

    .line 942
    invoke-virtual {p0, v1, v3}, Lorg/ejml/data/FMatrixRMaj;->get(II)F

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p1
.end method

.method public static rref(Lorg/ejml/data/FMatrixRMaj;ILorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 4

    .line 2487
    invoke-static {p2, p0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/FMatrixRMaj;

    if-gtz p1, :cond_0

    .line 2490
    iget p1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2492
    :cond_0
    new-instance v0, Lorg/ejml/dense/row/misc/RrefGaussJordanRowPivot_FDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/misc/RrefGaussJordanRowPivot_FDRM;-><init>()V

    .line 2493
    invoke-static {p0}, Lorg/ejml/dense/row/CommonOps_FDRM;->elementMaxAbs(Lorg/ejml/data/FMatrixD1;)F

    move-result v1

    sget v2, Lorg/ejml/UtilEjml;->F_EPS:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v3, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-interface {v0, v1}, Lorg/ejml/interfaces/linsol/ReducedRowEchelonForm_F32;->setTolerance(F)V

    .line 2495
    invoke-virtual {p2, p0}, Lorg/ejml/data/FMatrixRMaj;->set(Lorg/ejml/data/FMatrixD1;)V

    .line 2496
    invoke-interface {v0, p2, p1}, Lorg/ejml/interfaces/linsol/ReducedRowEchelonForm_F32;->reduce(Lorg/ejml/data/Matrix;I)V

    return-object p2
.end method

.method public static scale(FLorg/ejml/data/FMatrixD1;)V
    .locals 4

    .line 2271
    invoke-virtual {p1}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2274
    iget-object v2, p1, Lorg/ejml/data/FMatrixD1;->data:[F

    aget v3, v2, v1

    mul-float/2addr v3, p0

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static scale(FLorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)V
    .locals 4

    .line 2290
    iget v0, p1, Lorg/ejml/data/FMatrixD1;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixD1;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/FMatrixD1;->reshape(II)V

    .line 2292
    invoke-virtual {p1}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2295
    iget-object v2, p2, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v3, p1, Lorg/ejml/data/FMatrixD1;->data:[F

    aget v3, v3, v1

    mul-float/2addr v3, p0

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static scaleCol(FLorg/ejml/data/FMatrixRMaj;I)V
    .locals 3

    const/4 v0, 0x0

    .line 2322
    :goto_0
    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v0, v1, :cond_0

    .line 2323
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v2, v1, p2

    mul-float/2addr v2, p0

    aput v2, v1, p2

    add-int/lit8 v0, v0, 0x1

    .line 2322
    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    add-int/2addr p2, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static scaleRow(FLorg/ejml/data/FMatrixRMaj;I)V
    .locals 4

    .line 2307
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr p2, v0

    const/4 v0, 0x0

    .line 2308
    :goto_0
    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_0

    .line 2309
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v2, p2, 0x1

    aget v3, v1, p2

    mul-float/2addr v3, p0

    aput v3, v1, p2

    add-int/lit8 v0, v0, 0x1

    move p2, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setIdentity(Lorg/ejml/data/FMatrix1Row;)V
    .locals 5

    .line 957
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    .line 959
    :goto_0
    iget-object v1, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    invoke-virtual {p0}, Lorg/ejml/data/FMatrix1Row;->getNumElements()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Ljava/util/Arrays;->fill([FIIF)V

    move v1, v4

    :goto_1
    if-ge v4, v0, :cond_1

    .line 963
    iget-object v2, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v1

    add-int/lit8 v4, v4, 0x1

    .line 962
    iget v2, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static solve(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 2

    .line 567
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 569
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {v0, v1}, Lorg/ejml/dense/row/factory/LinearSolverFactory_FDRM;->general(II)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object v0

    .line 572
    new-instance v1, Lorg/ejml/LinearSolverSafe;

    invoke-direct {v1, v0}, Lorg/ejml/LinearSolverSafe;-><init>(Lorg/ejml/interfaces/linsol/LinearSolverDense;)V

    .line 574
    invoke-interface {v1, p0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->setA(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 577
    :cond_0
    invoke-interface {v1, p1, p2}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static solveSPD(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 4

    .line 595
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_4

    .line 598
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 600
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v1, :cond_2

    .line 601
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->createLike()Lorg/ejml/data/FMatrixRMaj;

    move-result-object v0

    .line 604
    invoke-static {p0, v0}, Lorg/ejml/dense/row/misc/UnrolledCholesky_FDRM;->lower(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 608
    :cond_0
    iget v1, p2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v1, v3, :cond_1

    .line 609
    invoke-virtual {p2, p1}, Lorg/ejml/data/FMatrixRMaj;->set(Lorg/ejml/data/FMatrixD1;)V

    .line 610
    iget-object p0, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object p1, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v1, v0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {p0, p1, v1}, Lorg/ejml/dense/row/decomposition/TriangularSolver_FDRM;->solveL([F[FI)V

    .line 611
    iget-object p0, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object p1, p2, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget p2, v0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/TriangularSolver_FDRM;->solveTranL([F[FI)V

    goto :goto_0

    .line 613
    :cond_1
    iget p0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    new-array p0, p0, [F

    .line 614
    invoke-static {v0, p1, p2, p0}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_FDRM;->solveLower(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;[F)V

    :goto_0
    return v3

    .line 617
    :cond_2
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {v0}, Lorg/ejml/dense/row/factory/LinearSolverFactory_FDRM;->chol(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object v0

    .line 618
    new-instance v1, Lorg/ejml/LinearSolverSafe;

    invoke-direct {v1, v0}, Lorg/ejml/LinearSolverSafe;-><init>(Lorg/ejml/interfaces/linsol/LinearSolverDense;)V

    .line 620
    invoke-interface {v1, p0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->setA(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    .line 623
    :cond_3
    invoke-interface {v1, p1, p2}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    return v3

    .line 596
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must be a square matrix"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static subtract(FLorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrixD1;",
            ">(FTT;TT;)TT;"
        }
    .end annotation

    .line 2200
    invoke-static {p2, p1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/FMatrixD1;

    .line 2202
    invoke-virtual {p1}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2205
    iget-object v2, p2, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v3, p1, Lorg/ejml/data/FMatrixD1;->data:[F

    aget v3, v3, v1

    sub-float v3, p0, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public static subtract(Lorg/ejml/data/FMatrixD1;FLorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrixD1;",
            ">(TT;FTT;)TT;"
        }
    .end annotation

    .line 2176
    invoke-static {p2, p0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/FMatrixD1;

    .line 2178
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2181
    iget-object v2, p2, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v3, p0, Lorg/ejml/data/FMatrixD1;->data:[F

    aget v3, v3, v1

    sub-float/2addr v3, p1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public static subtract(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)Lorg/ejml/data/FMatrixD1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/FMatrixD1;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2246
    invoke-static {p0, p1, v0}, Lorg/ejml/UtilEjml;->checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Z)V

    .line 2247
    invoke-static {p2, p0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/FMatrixD1;

    .line 2249
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2252
    iget-object v2, p2, Lorg/ejml/data/FMatrixD1;->data:[F

    iget-object v3, p0, Lorg/ejml/data/FMatrixD1;->data:[F

    aget v3, v3, v1

    iget-object v4, p1, Lorg/ejml/data/FMatrixD1;->data:[F

    aget v4, v4, v1

    sub-float/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public static subtractEquals(Lorg/ejml/data/FMatrixD1;Lorg/ejml/data/FMatrixD1;)V
    .locals 5

    const/4 v0, 0x1

    .line 2222
    invoke-static {p0, p1, v0}, Lorg/ejml/UtilEjml;->checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Z)V

    .line 2223
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2226
    iget-object v2, p0, Lorg/ejml/data/FMatrixD1;->data:[F

    aget v3, v2, v1

    iget-object v4, p1, Lorg/ejml/data/FMatrixD1;->data:[F

    aget v4, v4, v1

    sub-float/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static sumCols(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 5

    const/4 v0, 0x1

    .line 1884
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    const/4 v0, 0x0

    .line 1886
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_1

    .line 1890
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    const/4 v2, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v1, :cond_0

    .line 1892
    iget-object v4, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v4, v4, v3

    add-float/2addr v2, v4

    .line 1891
    iget v4, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    add-int/2addr v3, v4

    goto :goto_1

    .line 1895
    :cond_0
    invoke-virtual {p1, v0, v2}, Lorg/ejml/data/FMatrixRMaj;->set(IF)F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static sumRows(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 6

    .line 1799
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    const/4 v0, 0x0

    .line 1801
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 1804
    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v2, v1

    .line 1805
    iget v3, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 1806
    iget-object v5, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v5, v5, v3

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1809
    :cond_0
    invoke-virtual {p1, v0, v4}, Lorg/ejml/data/FMatrixRMaj;->set(IF)F

    move v0, v1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static symmLowerToFull(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 8

    .line 2819
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_2

    .line 2822
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v1, 0x0

    .line 2824
    :goto_0
    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_0

    .line 2826
    iget-object v4, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    mul-int v5, v1, v0

    add-int/2addr v5, v3

    iget-object v6, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    mul-int v7, v3, v0

    add-int/2addr v7, v1

    aget v6, v6, v7

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return-void

    .line 2820
    :cond_2
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string v0, "Must be a square matrix"

    invoke-direct {p0, v0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static symmUpperToFull(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 8

    .line 2838
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_2

    .line 2841
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    const/4 v1, 0x0

    move v2, v1

    .line 2843
    :goto_0
    iget v3, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v2, v3, :cond_1

    move v3, v1

    :goto_1
    if-gt v3, v2, :cond_0

    .line 2845
    iget-object v4, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    mul-int v5, v2, v0

    add-int/2addr v5, v3

    iget-object v6, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    mul-int v7, v3, v0

    add-int/2addr v7, v2

    aget v6, v6, v7

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 2839
    :cond_2
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string v0, "Must be a square matrix"

    invoke-direct {p0, v0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static trace(Lorg/ejml/data/FMatrix1Row;)F
    .locals 5

    .line 686
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    .line 690
    invoke-virtual {p0, v3}, Lorg/ejml/data/FMatrix1Row;->get(I)F

    move-result v4

    add-float/2addr v1, v4

    .line 691
    iget v4, p0, Lorg/ejml/data/FMatrix1Row;->numCols:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static transpose(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 2

    .line 664
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    .line 666
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    sget v1, Lorg/ejml/EjmlParameters;->TRANSPOSE_SWITCH:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->TRANSPOSE_SWITCH:I

    if-le v0, v1, :cond_0

    .line 668
    sget v0, Lorg/ejml/EjmlParameters;->BLOCK_WIDTH:I

    invoke-static {p0, p1, v0}, Lorg/ejml/dense/row/misc/TransposeAlgs_FDRM;->block(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;I)V

    goto :goto_0

    .line 670
    :cond_0
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/TransposeAlgs_FDRM;->standard(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)V

    :goto_0
    return-object p1
.end method

.method public static transpose(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 3

    .line 642
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    .line 643
    invoke-static {p0}, Lorg/ejml/dense/row/misc/TransposeAlgs_FDRM;->square(Lorg/ejml/data/FMatrix1Row;)V

    goto :goto_0

    .line 645
    :cond_0
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 646
    invoke-static {p0, v0}, Lorg/ejml/dense/row/CommonOps_FDRM;->transpose(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

    .line 647
    invoke-virtual {p0, v0}, Lorg/ejml/data/FMatrixRMaj;->set(Lorg/ejml/data/FMatrixD1;)V

    :goto_0
    return-void
.end method
