.class public Lorg/ejml/dense/row/CommonOps_DDRM;
.super Ljava/lang/Object;
.source "CommonOps_DDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abs(Lorg/ejml/data/DMatrixD1;)V
    .locals 5

    .line 2803
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2806
    iget-object v2, p0, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v3, p0, Lorg/ejml/data/DMatrixD1;->data:[D

    aget-wide v3, v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static abs(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)V
    .locals 5

    .line 2784
    iget v0, p0, Lorg/ejml/data/DMatrixD1;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixD1;->numCols:I

    invoke-virtual {p1, v0, v1}, Lorg/ejml/data/DMatrixD1;->reshape(II)V

    .line 2786
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2789
    iget-object v2, p1, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v3, p0, Lorg/ejml/data/DMatrixD1;->data:[D

    aget-wide v3, v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static add(DLorg/ejml/data/DMatrixD1;DLorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrixD1;",
            ">(DTT;DTT;TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2077
    invoke-static {p2, p5, v0}, Lorg/ejml/UtilEjml;->checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Z)V

    .line 2078
    invoke-static {p6, p2}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p6

    check-cast p6, Lorg/ejml/data/DMatrixD1;

    .line 2080
    invoke-virtual {p2}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2083
    invoke-virtual {p2, v1}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v2

    mul-double/2addr v2, p0

    invoke-virtual {p5, v1}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v4

    mul-double/2addr v4, p3

    add-double/2addr v2, v4

    invoke-virtual {p6, v1, v2, v3}, Lorg/ejml/data/DMatrixD1;->set(ID)D

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p6
.end method

.method public static add(DLorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrixD1;",
            ">(DTT;TT;TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2107
    invoke-static {p2, p3, v0}, Lorg/ejml/UtilEjml;->checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Z)V

    .line 2108
    invoke-static {p4, p2}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p4

    check-cast p4, Lorg/ejml/data/DMatrixD1;

    .line 2110
    invoke-virtual {p2}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2113
    invoke-virtual {p2, v1}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v2

    mul-double/2addr v2, p0

    invoke-virtual {p3, v1}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {p4, v1, v2, v3}, Lorg/ejml/data/DMatrixD1;->set(ID)D

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p4
.end method

.method public static add(Lorg/ejml/data/DMatrixD1;DLorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrixD1;",
            ">(TT;DTT;)TT;"
        }
    .end annotation

    .line 2150
    invoke-static {p3, p0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p3

    check-cast p3, Lorg/ejml/data/DMatrixD1;

    .line 2152
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2155
    iget-object v2, p3, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v3, p0, Lorg/ejml/data/DMatrixD1;->data:[D

    aget-wide v3, v3, v1

    add-double/2addr v3, p1

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method public static add(Lorg/ejml/data/DMatrixD1;DLorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrixD1;",
            ">(TT;DTT;TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2046
    invoke-static {p0, p3, v0}, Lorg/ejml/UtilEjml;->checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Z)V

    .line 2047
    invoke-static {p4, p0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p4

    check-cast p4, Lorg/ejml/data/DMatrixD1;

    .line 2049
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2052
    invoke-virtual {p0, v1}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v2

    invoke-virtual {p3, v1}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v4

    mul-double/2addr v4, p1

    add-double/2addr v2, v4

    invoke-virtual {p4, v1, v2, v3}, Lorg/ejml/data/DMatrixD1;->set(ID)D

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p4
.end method

.method public static add(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrixD1;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2016
    invoke-static {p0, p1, v0}, Lorg/ejml/UtilEjml;->checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Z)V

    .line 2017
    invoke-static {p2, p0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/DMatrixD1;

    .line 2019
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2022
    invoke-virtual {p0, v1}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v2

    invoke-virtual {p1, v1}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {p2, v1, v2, v3}, Lorg/ejml/data/DMatrixD1;->set(ID)D

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public static add(Lorg/ejml/data/DMatrixD1;D)V
    .locals 2

    .line 2130
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2133
    invoke-virtual {p0, v1, p1, p2}, Lorg/ejml/data/DMatrixD1;->plus(ID)D

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static addEquals(Lorg/ejml/data/DMatrixD1;DLorg/ejml/data/DMatrixD1;)V
    .locals 4

    const/4 v0, 0x1

    .line 1990
    invoke-static {p0, p3, v0}, Lorg/ejml/UtilEjml;->checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Z)V

    .line 1992
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1995
    invoke-virtual {p3, v1}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v2

    mul-double/2addr v2, p1

    invoke-virtual {p0, v1, v2, v3}, Lorg/ejml/data/DMatrixD1;->plus(ID)D

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static addEquals(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)V
    .locals 4

    const/4 v0, 0x1

    .line 1969
    invoke-static {p0, p1, v0}, Lorg/ejml/UtilEjml;->checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Z)V

    .line 1971
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1974
    invoke-virtual {p1, v1}, Lorg/ejml/data/DMatrixD1;->get(I)D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lorg/ejml/data/DMatrixD1;->plus(ID)D

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static apply(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/ops/DOperatorUnary;)Lorg/ejml/data/DMatrixRMaj;
    .locals 0

    .line 2873
    invoke-static {p0, p1, p0}, Lorg/ejml/dense/row/CommonOps_DDRM;->apply(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/ops/DOperatorUnary;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p0

    return-object p0
.end method

.method public static apply(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/ops/DOperatorUnary;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 4

    .line 2863
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p2

    const/4 v0, 0x0

    .line 2865
    :goto_0
    iget-object v1, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2866
    iget-object v1, p2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v2, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v2, v2, v0

    invoke-interface {p1, v2, v3}, Lorg/ejml/ops/DOperatorUnary;->apply(D)D

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public static changeSign(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrixD1;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 2436
    invoke-static {p1, p0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/DMatrixD1;

    .line 2438
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2441
    iget-object v2, p1, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v3, p0, Lorg/ejml/data/DMatrixD1;->data:[D

    aget-wide v3, v3, v1

    neg-double v3, v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static changeSign(Lorg/ejml/data/DMatrixD1;)V
    .locals 5

    .line 2419
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2422
    iget-object v2, p0, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v3, p0, Lorg/ejml/data/DMatrixD1;->data:[D

    aget-wide v3, v3, v1

    neg-double v3, v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static columnsToVector(Lorg/ejml/data/DMatrixRMaj;[Lorg/ejml/data/DMatrixRMaj;)[Lorg/ejml/data/DMatrixRMaj;
    .locals 6

    if-eqz p1, :cond_0

    .line 892
    array-length v0, p1

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_1

    .line 893
    :cond_0
    iget p1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    new-array p1, p1, [Lorg/ejml/data/DMatrixRMaj;

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 898
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 899
    aget-object v2, p1, v1

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 900
    new-instance v2, Lorg/ejml/data/DMatrixRMaj;

    iget v4, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-direct {v2, v4, v3}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    aput-object v2, p1, v1

    goto :goto_1

    .line 902
    :cond_2
    iget v4, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-virtual {v2, v4, v3, v0}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    .line 905
    :goto_1
    aget-object v2, p1, v1

    move v3, v0

    .line 907
    :goto_2
    iget v4, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v3, v4, :cond_3

    .line 908
    invoke-virtual {p0, v3, v1}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v4

    invoke-virtual {v2, v3, v0, v4, v5}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p1
.end method

.method public static concatColumns(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 3

    .line 2670
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2671
    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v2, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    add-int/2addr v1, v2

    .line 2673
    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p2

    .line 2674
    invoke-virtual {p2}, Lorg/ejml/data/DMatrixRMaj;->zero()V

    const/4 v0, 0x0

    .line 2676
    invoke-static {p0, p2, v0, v0}, Lorg/ejml/dense/row/CommonOps_DDRM;->insert(Lorg/ejml/data/DMatrix;Lorg/ejml/data/DMatrix;II)V

    .line 2677
    iget p0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {p1, p2, v0, p0}, Lorg/ejml/dense/row/CommonOps_DDRM;->insert(Lorg/ejml/data/DMatrix;Lorg/ejml/data/DMatrix;II)V

    return-object p2
.end method

.method public static varargs concatColumnsMulti([Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 2695
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_0

    .line 2696
    aget-object v4, p0, v1

    iget v4, v4, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2697
    aget-object v4, p0, v1

    iget v4, v4, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2699
    :cond_0
    new-instance v1, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v1, v2, v3}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    move v2, v0

    move v3, v2

    .line 2702
    :goto_1
    array-length v4, p0

    if-ge v2, v4, :cond_1

    .line 2703
    aget-object v4, p0, v2

    invoke-static {v4, v1, v0, v3}, Lorg/ejml/dense/row/CommonOps_DDRM;->insert(Lorg/ejml/data/DMatrix;Lorg/ejml/data/DMatrix;II)V

    .line 2704
    aget-object v4, p0, v2

    iget v4, v4, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public static concatRows(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 3

    .line 2714
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    add-int/2addr v0, v1

    .line 2715
    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v2, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2717
    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 2718
    invoke-virtual {p2}, Lorg/ejml/data/DMatrixRMaj;->zero()V

    const/4 v0, 0x0

    .line 2720
    invoke-static {p0, p2, v0, v0}, Lorg/ejml/dense/row/CommonOps_DDRM;->insert(Lorg/ejml/data/DMatrix;Lorg/ejml/data/DMatrix;II)V

    .line 2721
    iget p0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-static {p1, p2, p0, v0}, Lorg/ejml/dense/row/CommonOps_DDRM;->insert(Lorg/ejml/data/DMatrix;Lorg/ejml/data/DMatrix;II)V

    return-void
.end method

.method public static varargs concatRowsMulti([Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 2737
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_0

    .line 2738
    aget-object v4, p0, v1

    iget v4, v4, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    add-int/2addr v2, v4

    .line 2739
    aget-object v4, p0, v1

    iget v4, v4, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2741
    :cond_0
    new-instance v1, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v1, v2, v3}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    move v2, v0

    move v3, v2

    .line 2744
    :goto_1
    array-length v4, p0

    if-ge v2, v4, :cond_1

    .line 2745
    aget-object v4, p0, v2

    invoke-static {v4, v1, v3, v0}, Lorg/ejml/dense/row/CommonOps_DDRM;->insert(Lorg/ejml/data/DMatrix;Lorg/ejml/data/DMatrix;II)V

    .line 2746
    aget-object v4, p0, v2

    iget v4, v4, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public static countTrue(Lorg/ejml/data/BMatrixRMaj;)I
    .locals 4

    .line 2656
    invoke-virtual {p0}, Lorg/ejml/data/BMatrixRMaj;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2659
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

.method public static det(Lorg/ejml/data/DMatrixRMaj;)D
    .locals 2

    .line 704
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumCols()I

    move-result v0

    .line 705
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumRows()I

    move-result v1

    if-ne v0, v1, :cond_4

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 714
    invoke-static {p0}, Lorg/ejml/dense/row/misc/UnrolledDeterminantFromMinor_DDRM;->det(Lorg/ejml/data/DMatrix1Row;)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    .line 716
    invoke-virtual {p0, v0}, Lorg/ejml/data/DMatrixRMaj;->get(I)D

    move-result-wide v0

    return-wide v0

    .line 719
    :cond_1
    new-instance v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;-><init>()V

    .line 721
    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->inputModified()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 722
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->copy()Lorg/ejml/data/DMatrixRMaj;

    move-result-object p0

    .line 725
    :cond_2
    invoke-virtual {v0, p0}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->decompose(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p0

    if-nez p0, :cond_3

    const-wide/16 v0, 0x0

    return-wide v0

    .line 727
    :cond_3
    invoke-virtual {v0}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;->computeDeterminant()Lorg/ejml/data/Complex_F64;

    move-result-object p0

    iget-wide v0, p0, Lorg/ejml/data/Complex_F64;->real:D

    return-wide v0

    .line 708
    :cond_4
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string v0, "Must be a square matrix."

    invoke-direct {p0, v0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs diag(Lorg/ejml/data/DMatrixRMaj;I[D)Lorg/ejml/data/DMatrixRMaj;
    .locals 3

    if-nez p0, :cond_0

    .line 1027
    new-instance p0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {p0, p1, p1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 1029
    :cond_0
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, p1, :cond_2

    const-wide/16 v0, 0x0

    .line 1032
    invoke-static {p0, v0, v1}, Lorg/ejml/dense/row/CommonOps_DDRM;->fill(Lorg/ejml/data/DMatrixD1;D)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_1

    .line 1036
    aget-wide v1, p2, v0

    invoke-virtual {p0, v0, v0, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->unsafe_set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p0

    .line 1030
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected matrix size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs diag([D)Lorg/ejml/data/DMatrixRMaj;
    .locals 2

    const/4 v0, 0x0

    .line 1019
    array-length v1, p0

    invoke-static {v0, v1, p0}, Lorg/ejml/dense/row/CommonOps_DDRM;->diag(Lorg/ejml/data/DMatrixRMaj;I[D)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p0

    return-object p0
.end method

.method public static varargs diagR(II[D)Lorg/ejml/data/DMatrixRMaj;
    .locals 3

    .line 1058
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, p0, p1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 1060
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_0

    .line 1063
    aget-wide v1, p2, p1

    invoke-virtual {v0, p1, p1, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static divide(DLorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrixD1;",
            ">(DTT;TT;)TT;"
        }
    .end annotation

    .line 2374
    invoke-static {p3, p2}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p3

    check-cast p3, Lorg/ejml/data/DMatrixD1;

    .line 2376
    invoke-virtual {p2}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2379
    iget-object v2, p3, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v3, p2, Lorg/ejml/data/DMatrixD1;->data:[D

    aget-wide v3, v3, v1

    div-double v3, p0, v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method public static divide(Lorg/ejml/data/DMatrixD1;DLorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrixD1;",
            ">(TT;DTT;)TT;"
        }
    .end annotation

    .line 2398
    invoke-static {p3, p0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p3

    check-cast p3, Lorg/ejml/data/DMatrixD1;

    .line 2400
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2403
    iget-object v2, p3, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v3, p0, Lorg/ejml/data/DMatrixD1;->data:[D

    aget-wide v3, v3, v1

    div-double/2addr v3, p1

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method public static divide(DLorg/ejml/data/DMatrixD1;)V
    .locals 5

    .line 2336
    invoke-virtual {p2}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2339
    iget-object v2, p2, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v3, p2, Lorg/ejml/data/DMatrixD1;->data:[D

    aget-wide v3, v3, v1

    div-double v3, p0, v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static divide(Lorg/ejml/data/DMatrixD1;D)V
    .locals 5

    .line 2354
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2357
    iget-object v2, p0, Lorg/ejml/data/DMatrixD1;->data:[D

    aget-wide v3, v2, v1

    div-double/2addr v3, p1

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static divideCols(Lorg/ejml/data/DMatrixRMaj;[D)V
    .locals 9

    .line 1741
    array-length v0, p1

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1746
    :goto_0
    iget v3, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v1, v3, :cond_1

    move v3, v0

    .line 1747
    :goto_1
    iget v4, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v3, v4, :cond_0

    .line 1748
    iget-object v4, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v5, v4, v2

    aget-wide v7, p1, v3

    div-double/2addr v5, v7

    aput-wide v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 1742
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not enough elements in values."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static divideRows([DLorg/ejml/data/DMatrixRMaj;)V
    .locals 9

    .line 1702
    array-length v0, p0

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1707
    :goto_0
    iget v3, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v1, v3, :cond_1

    .line 1708
    aget-wide v3, p0, v1

    move v5, v0

    .line 1709
    :goto_1
    iget v6, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v5, v6, :cond_0

    .line 1710
    iget-object v6, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v7, v6, v2

    div-double/2addr v7, v3

    aput-wide v7, v6, v2

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 1703
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not enough elements in values."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static divideRowsCols([DILorg/ejml/data/DMatrixRMaj;[DI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1766
    array-length v3, v0

    sub-int v3, v3, p1

    iget v4, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-lt v3, v4, :cond_3

    .line 1769
    array-length v3, v2

    sub-int v3, v3, p4

    iget v4, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-lt v3, v4, :cond_2

    .line 1773
    iget v3, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    .line 1774
    iget v4, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v6, v3, :cond_1

    add-int v8, p1, v6

    .line 1778
    aget-wide v8, v0, v8

    move v10, v5

    :goto_1
    if-ge v10, v4, :cond_0

    .line 1780
    iget-object v11, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v12, v11, v7

    add-int v14, p4, v10

    aget-wide v14, v2, v14

    mul-double/2addr v14, v8

    div-double/2addr v12, v14

    aput-wide v12, v11, v7

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 1770
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not enough elements in diagC."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1767
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not enough elements in diagA."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static dot(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)D
    .locals 1

    .line 309
    invoke-static {p0}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-static {p0, p1}, Lorg/ejml/dense/row/mult/VectorVectorMult_DDRM;->innerProd(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)D

    move-result-wide p0

    return-wide p0

    .line 310
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Both inputs must be vectors"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static elementDiv(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrixD1;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    .line 1574
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/misc/ImplCommonOps_DDRM;->elementDiv(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;

    move-result-object p0

    return-object p0
.end method

.method public static elementDiv(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)V
    .locals 0

    .line 1560
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/ImplCommonOps_DDRM;->elementDiv(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)V

    return-void
.end method

.method public static elementExp(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrixD1;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 1672
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/ImplCommonOps_DDRM;->elementExp(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;

    move-result-object p0

    return-object p0
.end method

.method public static elementLessThan(Lorg/ejml/data/DMatrixRMaj;DLorg/ejml/data/BMatrixRMaj;)Lorg/ejml/data/BMatrixRMaj;
    .locals 6

    .line 2508
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {p3, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/BMatrixRMaj;II)Lorg/ejml/data/BMatrixRMaj;

    move-result-object p3

    .line 2510
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2513
    iget-object v3, p3, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    iget-object v4, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v4, v4, v2

    cmpg-double v4, v4, p1

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
    return-object p3
.end method

.method public static elementLessThan(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/BMatrixRMaj;)Lorg/ejml/data/BMatrixRMaj;
    .locals 8

    .line 2588
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/BMatrixRMaj;II)Lorg/ejml/data/BMatrixRMaj;

    move-result-object p2

    .line 2590
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2593
    iget-object v3, p2, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    iget-object v4, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v4, v4, v2

    iget-object v6, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v6, v6, v2

    cmpg-double v4, v4, v6

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

.method public static elementLessThanOrEqual(Lorg/ejml/data/DMatrixRMaj;DLorg/ejml/data/BMatrixRMaj;)Lorg/ejml/data/BMatrixRMaj;
    .locals 6

    .line 2528
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {p3, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/BMatrixRMaj;II)Lorg/ejml/data/BMatrixRMaj;

    move-result-object p3

    .line 2530
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2533
    iget-object v3, p3, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    iget-object v4, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v4, v4, v2

    cmpg-double v4, v4, p1

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
    return-object p3
.end method

.method public static elementLessThanOrEqual(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/BMatrixRMaj;)Lorg/ejml/data/BMatrixRMaj;
    .locals 8

    .line 2608
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/BMatrixRMaj;II)Lorg/ejml/data/BMatrixRMaj;

    move-result-object p2

    .line 2610
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2613
    iget-object v3, p2, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    iget-object v4, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v4, v4, v2

    iget-object v6, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v6, v6, v2

    cmpg-double v4, v4, v6

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

.method public static elementLog(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrixD1;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 1658
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/ImplCommonOps_DDRM;->elementLog(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;

    move-result-object p0

    return-object p0
.end method

.method public static elementMax(Lorg/ejml/data/DMatrixD1;)D
    .locals 2

    const/4 v0, 0x0

    .line 1418
    invoke-static {p0, v0}, Lorg/ejml/dense/row/misc/ImplCommonOps_DDRM;->elementMax(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/ElementLocation;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static elementMax(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/ElementLocation;)D
    .locals 0

    .line 1433
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/ImplCommonOps_DDRM;->elementMax(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/ElementLocation;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static elementMaxAbs(Lorg/ejml/data/DMatrixD1;)D
    .locals 2

    const/4 v0, 0x0

    .line 1447
    invoke-static {p0, v0}, Lorg/ejml/dense/row/misc/ImplCommonOps_DDRM;->elementMaxAbs(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/ElementLocation;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static elementMaxAbs(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/ElementLocation;)D
    .locals 0

    .line 1462
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/ImplCommonOps_DDRM;->elementMaxAbs(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/ElementLocation;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static elementMin(Lorg/ejml/data/DMatrixD1;)D
    .locals 2

    const/4 v0, 0x0

    .line 1476
    invoke-static {p0, v0}, Lorg/ejml/dense/row/misc/ImplCommonOps_DDRM;->elementMin(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/ElementLocation;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static elementMin(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/ElementLocation;)D
    .locals 0

    .line 1491
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/ImplCommonOps_DDRM;->elementMin(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/ElementLocation;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static elementMinAbs(Lorg/ejml/data/DMatrixD1;)D
    .locals 2

    const/4 v0, 0x0

    .line 1505
    invoke-static {p0, v0}, Lorg/ejml/dense/row/misc/ImplCommonOps_DDRM;->elementMinAbs(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/ElementLocation;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static elementMinAbs(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/ElementLocation;)D
    .locals 0

    .line 1520
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/ImplCommonOps_DDRM;->elementMinAbs(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/ElementLocation;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static elementMoreThan(Lorg/ejml/data/DMatrixRMaj;DLorg/ejml/data/BMatrixRMaj;)Lorg/ejml/data/BMatrixRMaj;
    .locals 6

    .line 2548
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {p3, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/BMatrixRMaj;II)Lorg/ejml/data/BMatrixRMaj;

    move-result-object p3

    .line 2550
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2553
    iget-object v3, p3, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    iget-object v4, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v4, v4, v2

    cmpl-double v4, v4, p1

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
    return-object p3
.end method

.method public static elementMoreThanOrEqual(Lorg/ejml/data/DMatrixRMaj;DLorg/ejml/data/BMatrixRMaj;)Lorg/ejml/data/BMatrixRMaj;
    .locals 6

    .line 2568
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {p3, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/BMatrixRMaj;II)Lorg/ejml/data/BMatrixRMaj;

    move-result-object p3

    .line 2570
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2573
    iget-object v3, p3, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    iget-object v4, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v4, v4, v2

    cmpl-double v4, v4, p1

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
    return-object p3
.end method

.method public static elementMult(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrixD1;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    .line 1547
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/misc/ImplCommonOps_DDRM;->elementMult(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;

    move-result-object p0

    return-object p0
.end method

.method public static elementMult(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)V
    .locals 0

    .line 1533
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/ImplCommonOps_DDRM;->elementMult(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)V

    return-void
.end method

.method public static elementPower(DLorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrixD1;",
            ">(DTT;TT;)TT;"
        }
    .end annotation

    .line 1630
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/dense/row/misc/ImplCommonOps_DDRM;->elementPower(DLorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;

    move-result-object p0

    return-object p0
.end method

.method public static elementPower(Lorg/ejml/data/DMatrixD1;DLorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrixD1;",
            ">(TT;DTT;)TT;"
        }
    .end annotation

    .line 1644
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/dense/row/misc/ImplCommonOps_DDRM;->elementPower(Lorg/ejml/data/DMatrixD1;DLorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;

    move-result-object p0

    return-object p0
.end method

.method public static elementPower(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrixD1;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    .line 1616
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/misc/ImplCommonOps_DDRM;->elementPower(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;

    move-result-object p0

    return-object p0
.end method

.method public static elementSum(Lorg/ejml/data/DMatrixD1;)D
    .locals 2

    .line 1588
    invoke-static {p0}, Lorg/ejml/dense/row/misc/ImplCommonOps_DDRM;->elementSum(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static elementSumAbs(Lorg/ejml/data/DMatrixD1;)D
    .locals 2

    .line 1602
    invoke-static {p0}, Lorg/ejml/dense/row/misc/ImplCommonOps_DDRM;->elementSumAbs(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static elements(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/BMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 7

    const/4 v0, 0x0

    .line 2628
    invoke-static {p0, p1, v0}, Lorg/ejml/UtilEjml;->checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Z)V

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 2631
    new-instance p2, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {p2, v1, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 2633
    :cond_0
    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_DDRM;->countTrue(Lorg/ejml/data/BMatrixRMaj;)I

    move-result v2

    invoke-virtual {p2, v2, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 2635
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 2639
    iget-object v3, p1, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_1

    .line 2640
    iget-object v3, p2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v5, v5, v0

    aput-wide v5, v3, v2

    move v2, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public static extract(Lorg/ejml/data/DMatrixRMaj;IIII)Lorg/ejml/data/DMatrixRMaj;
    .locals 9

    if-le p2, p1, :cond_1

    if-ltz p1, :cond_1

    .line 1208
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-gt p2, v0, :cond_1

    if-le p4, p3, :cond_0

    if-ltz p3, :cond_0

    .line 1210
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-gt p4, v0, :cond_0

    sub-int v8, p4, p3

    sub-int v7, p2, p1

    .line 1216
    new-instance p2, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {p2, v7, v8}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p3

    move-object v4, p2

    .line 1218
    invoke-static/range {v1 .. v8}, Lorg/ejml/dense/row/misc/ImplCommonOps_DDRM;->extract(Lorg/ejml/data/DMatrixRMaj;IILorg/ejml/data/DMatrixRMaj;IIII)V

    return-object p2

    .line 1211
    :cond_0
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string/jumbo p1, "srcX1 <= srcX0 || srcX0 < 0 || srcX1 > src.numCols"

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1209
    :cond_1
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string/jumbo p1, "srcY1 <= srcY0 || srcY0 < 0 || srcY1 > src.numRows"

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static extract(Lorg/ejml/data/DMatrixRMaj;[IILorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 4

    if-nez p3, :cond_0

    .line 1260
    new-instance p3, Lorg/ejml/data/DMatrixRMaj;

    const/4 v0, 0x1

    invoke-direct {p3, p2, v0}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 1261
    :cond_0
    invoke-static {p3}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v0

    if-ne p2, v0, :cond_2

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    .line 1265
    iget-object v1, p3, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v2, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget v3, p1, v0

    aget-wide v2, v2, v3

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p3

    .line 1262
    :cond_2
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string p1, "Dst must be a vector and have \'length\' elements"

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static extract(Lorg/ejml/data/DMatrixRMaj;[II[IILorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 9

    .line 1237
    invoke-static {p5, p2, p4}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p2, :cond_1

    .line 1241
    iget v3, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    aget v4, p1, v1

    mul-int/2addr v3, v4

    move v4, v0

    :goto_1
    if-ge v4, p4, :cond_0

    .line 1243
    iget-object v5, p5, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget v8, p3, v4

    add-int/2addr v8, v3

    aget-wide v7, v7, v8

    aput-wide v7, v5, v2

    add-int/lit8 v4, v4, 0x1

    move v2, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p5
.end method

.method public static extract(Lorg/ejml/data/DMatrix;IIIILorg/ejml/data/DMatrix;)V
    .locals 8

    .line 1166
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

    .line 1167
    invoke-static/range {v0 .. v7}, Lorg/ejml/dense/row/CommonOps_DDRM;->extract(Lorg/ejml/data/DMatrix;IIIILorg/ejml/data/DMatrix;II)V

    return-void
.end method

.method public static extract(Lorg/ejml/data/DMatrix;IIIILorg/ejml/data/DMatrix;II)V
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    if-lt v2, v1, :cond_4

    if-ltz v1, :cond_4

    .line 1131
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v6

    if-gt v2, v6, :cond_4

    if-lt v4, v3, :cond_3

    if-ltz v3, :cond_3

    .line 1133
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v6

    if-gt v4, v6, :cond_3

    sub-int v7, v4, v3

    sub-int v6, v2, v1

    add-int v2, p6, v6

    .line 1139
    invoke-interface {p5}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v4

    const-string v8, " < "

    if-gt v2, v4, :cond_2

    add-int v2, p7, v7

    .line 1141
    invoke-interface {p5}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v4

    if-gt v2, v4, :cond_1

    .line 1145
    instance-of v2, v0, Lorg/ejml/data/DMatrixRMaj;

    if-eqz v2, :cond_0

    instance-of v2, v5, Lorg/ejml/data/DMatrixRMaj;

    if-eqz v2, :cond_0

    .line 1146
    check-cast v0, Lorg/ejml/data/DMatrixRMaj;

    move-object v4, v5

    check-cast v4, Lorg/ejml/data/DMatrixRMaj;

    move v1, p1

    move v2, p3

    move-object v3, v4

    move v4, p6

    move/from16 v5, p7

    invoke-static/range {v0 .. v7}, Lorg/ejml/dense/row/misc/ImplCommonOps_DDRM;->extract(Lorg/ejml/data/DMatrixRMaj;IILorg/ejml/data/DMatrixRMaj;IIII)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p3

    move-object v3, p5

    move v4, p6

    move/from16 v5, p7

    .line 1148
    invoke-static/range {v0 .. v7}, Lorg/ejml/dense/row/misc/ImplCommonOps_DDMA;->extract(Lorg/ejml/data/DMatrix;IILorg/ejml/data/DMatrix;IIII)V

    :goto_0
    return-void

    .line 1142
    :cond_1
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "dst is too small in columns. "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p5}, Lorg/ejml/data/DMatrix;->getNumCols()I

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

    .line 1140
    :cond_2
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "dst is too small in rows. "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p5}, Lorg/ejml/data/DMatrix;->getNumRows()I

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

    .line 1134
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

    .line 1132
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

.method public static extract(Lorg/ejml/data/DMatrix;IILorg/ejml/data/DMatrix;)V
    .locals 9

    .line 1184
    invoke-interface {p3}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v0

    add-int v3, p1, v0

    invoke-interface {p3}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v0

    add-int v5, p2, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    move-object v6, p3

    invoke-static/range {v1 .. v8}, Lorg/ejml/dense/row/CommonOps_DDRM;->extract(Lorg/ejml/data/DMatrix;IIIILorg/ejml/data/DMatrix;II)V

    return-void
.end method

.method public static extractColumn(Lorg/ejml/data/DMatrixRMaj;ILorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 4

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 1358
    new-instance p2, Lorg/ejml/data/DMatrixRMaj;

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-direct {p2, v1, v0}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 1359
    :cond_0
    invoke-static {p2}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v1

    iget v2, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-eq v1, v2, :cond_2

    .line 1360
    :cond_1
    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-virtual {p2, v1, v0}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 1363
    :goto_1
    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v0, v1, :cond_3

    .line 1364
    iget-object v1, p2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v2, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v2, v2, p1

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 1363
    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    add-int/2addr p1, v1

    goto :goto_1

    :cond_3
    return-object p2
.end method

.method public static extractDiag(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 4

    .line 1312
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 1315
    new-instance p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 1317
    :cond_0
    invoke-static {p1}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v3, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v2, v3

    if-eq v2, v0, :cond_2

    .line 1318
    :cond_1
    invoke-virtual {p1, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 1323
    invoke-virtual {p0, v1, v1}, Lorg/ejml/data/DMatrixRMaj;->unsafe_get(II)D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lorg/ejml/data/DMatrixRMaj;->set(ID)D

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method public static extractRow(Lorg/ejml/data/DMatrixRMaj;ILorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 3

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 1339
    new-instance p2, Lorg/ejml/data/DMatrixRMaj;

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-direct {p2, v0, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 1340
    :cond_0
    invoke-static {p2}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v1

    iget v2, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-eq v1, v2, :cond_2

    .line 1341
    :cond_1
    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 1343
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/ejml/data/DMatrixRMaj;->getIndex(II)I

    move-result p1

    iget-object v2, p2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget p0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {v0, p1, v2, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method public static fill(Lorg/ejml/data/DMatrixD1;D)V
    .locals 2

    .line 2458
    iget-object v0, p0, Lorg/ejml/data/DMatrixD1;->data:[D

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result p0

    invoke-static {v0, v1, p0, p1, p2}, Ljava/util/Arrays;->fill([DIID)V

    return-void
.end method

.method public static identity(I)Lorg/ejml/data/DMatrixRMaj;
    .locals 4

    .line 977
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, p0, p0}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 980
    invoke-virtual {v0, v1, v1, v2, v3}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static identity(II)Lorg/ejml/data/DMatrixRMaj;
    .locals 3

    .line 994
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, p0, p1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    if-ge p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-ge p1, p0, :cond_1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 999
    invoke-virtual {v0, p1, p1, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static insert(Lorg/ejml/data/DMatrix;Lorg/ejml/data/DMatrix;II)V
    .locals 8

    const/4 v1, 0x0

    .line 1404
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v4

    move-object v0, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lorg/ejml/dense/row/CommonOps_DDRM;->extract(Lorg/ejml/data/DMatrix;IIIILorg/ejml/data/DMatrix;II)V

    return-void
.end method

.method public static insert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;[II[II)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p5

    .line 1290
    iget v4, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    const-string/jumbo v5, "src\'s rows don\'t match rowsSize"

    invoke-static {v2, v4, v5}, Lorg/ejml/UtilEjml;->assertEq(IILjava/lang/String;)V

    .line 1291
    iget v4, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const-string/jumbo v5, "src\'s columns don\'t match colsSize"

    invoke-static {v3, v4, v5}, Lorg/ejml/UtilEjml;->assertEq(IILjava/lang/String;)V

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v2, :cond_1

    .line 1295
    iget v7, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    aget v8, p2, v5

    mul-int/2addr v7, v8

    move v8, v4

    :goto_1
    if-ge v8, v3, :cond_0

    .line 1297
    iget-object v9, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget v10, p4, v8

    add-int/2addr v10, v7

    iget-object v11, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v12, v6, 0x1

    aget-wide v13, v11, v6

    aput-wide v13, v9, v10

    add-int/lit8 v8, v8, 0x1

    move v6, v12

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static invert(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 5

    .line 749
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-gt v0, v1, :cond_2

    .line 750
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_1

    .line 754
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 755
    invoke-static {p0, p0}, Lorg/ejml/dense/row/misc/UnrolledInverseFromMinor_DDRM;->inv(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 757
    invoke-virtual {p0, v2}, Lorg/ejml/data/DMatrixRMaj;->get(I)D

    move-result-wide v3

    div-double/2addr v0, v3

    invoke-virtual {p0, v2, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->set(ID)D

    goto :goto_0

    .line 751
    :cond_1
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string v0, "Must be a square matrix."

    invoke-direct {p0, v0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 760
    :cond_2
    new-instance v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;-><init>()V

    .line 761
    new-instance v1, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_DDRM;

    invoke-direct {v1, v0}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_DDRM;-><init>(Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;)V

    .line 762
    invoke-virtual {v1, p0}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_DDRM;->setA(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 763
    invoke-virtual {v1, p0}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_DDRM;->invert(Lorg/ejml/data/DMatrixRMaj;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    return v2
.end method

.method public static invert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 5

    .line 796
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {p1, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 798
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-gt v0, v1, :cond_2

    .line 799
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_1

    .line 802
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 803
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledInverseFromMinor_DDRM;->inv(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 805
    invoke-virtual {p0, v2}, Lorg/ejml/data/DMatrixRMaj;->get(I)D

    move-result-wide v3

    div-double/2addr v0, v3

    invoke-virtual {p1, v2, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->set(ID)D

    goto :goto_0

    .line 800
    :cond_1
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string p1, "Must be a square matrix."

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 808
    :cond_2
    new-instance v0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionAlt_DDRM;-><init>()V

    .line 809
    new-instance v1, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_DDRM;

    invoke-direct {v1, v0}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_DDRM;-><init>(Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;)V

    .line 811
    invoke-virtual {v1}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_DDRM;->modifiesA()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 812
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->copy()Lorg/ejml/data/DMatrixRMaj;

    move-result-object p0

    .line 814
    :cond_3
    invoke-virtual {v1, p0}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_DDRM;->setA(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    .line 816
    :cond_4
    invoke-virtual {v1, p1}, Lorg/ejml/dense/row/linsol/lu/LinearSolverLu_DDRM;->invert(Lorg/ejml/data/DMatrixRMaj;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static invertSPD(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 3

    .line 832
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_4

    .line 834
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-virtual {p1, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 836
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-gt v0, v1, :cond_1

    .line 838
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledCholesky_DDRM;->lower(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Z

    move-result p0

    if-nez p0, :cond_0

    return v2

    .line 841
    :cond_0
    iget-object p0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {p0, v0}, Lorg/ejml/dense/row/decomposition/TriangularSolver_DDRM;->invertLower([DI)V

    .line 843
    invoke-static {p1}, Lorg/ejml/dense/row/SpecializedOps_DDRM;->multLowerTranA(Lorg/ejml/data/DMatrixRMaj;)V

    goto :goto_0

    .line 845
    :cond_1
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {v0}, Lorg/ejml/dense/row/factory/LinearSolverFactory_DDRM;->chol(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object v0

    .line 846
    invoke-interface {v0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->modifiesA()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 847
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->copy()Lorg/ejml/data/DMatrixRMaj;

    move-result-object p0

    .line 849
    :cond_2
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->setA(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    .line 851
    :cond_3
    invoke-interface {v0, p1}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->invert(Lorg/ejml/data/Matrix;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    .line 833
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must be a square matrix"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static kron(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 11

    .line 1082
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v0, v1

    .line 1083
    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v2, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    mul-int/2addr v1, v2

    .line 1085
    invoke-static {p2, v1, v0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    .line 1090
    :goto_0
    iget v2, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v1, v2, :cond_3

    move v2, v0

    .line 1091
    :goto_1
    iget v3, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v2, v3, :cond_2

    .line 1092
    invoke-virtual {p0, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v3

    move v5, v0

    .line 1094
    :goto_2
    iget v6, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v5, v6, :cond_1

    move v6, v0

    .line 1095
    :goto_3
    iget v7, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v6, v7, :cond_0

    .line 1096
    invoke-virtual {p1, v5, v6}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v7

    mul-double/2addr v7, v3

    .line 1097
    iget v9, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    mul-int/2addr v9, v1

    add-int/2addr v9, v5

    iget v10, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v10, v2

    add-int/2addr v10, v6

    invoke-virtual {p2, v9, v10, v7, v8}, Lorg/ejml/data/DMatrixRMaj;->unsafe_set(IID)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v5, v5, 0x1

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

.method public static maxCols(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 8

    const/4 v0, 0x1

    .line 1940
    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    const/4 v0, 0x0

    .line 1942
    :goto_0
    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_2

    .line 1946
    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v2, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    const-wide v2, -0x10000000000001L

    move v4, v0

    :goto_1
    if-ge v4, v1, :cond_1

    .line 1948
    iget-object v5, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v5, v5, v4

    cmpl-double v7, v5, v2

    if-lez v7, :cond_0

    move-wide v2, v5

    .line 1947
    :cond_0
    iget v5, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    add-int/2addr v4, v5

    goto :goto_1

    .line 1953
    :cond_1
    invoke-virtual {p1, v0, v2, v3}, Lorg/ejml/data/DMatrixRMaj;->set(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static maxRows(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 9

    .line 1853
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    const/4 v0, 0x0

    .line 1855
    :goto_0
    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    .line 1858
    iget v2, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v2, v1

    .line 1859
    iget v3, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v3, v0

    const-wide v4, -0x10000000000001L

    :goto_1
    if-ge v3, v2, :cond_1

    .line 1860
    iget-object v6, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v6, v6, v3

    cmpl-double v8, v6, v4

    if-lez v8, :cond_0

    move-wide v4, v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1865
    :cond_1
    invoke-virtual {p1, v0, v4, v5}, Lorg/ejml/data/DMatrixRMaj;->set(ID)D

    move v0, v1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static minCols(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 8

    const/4 v0, 0x1

    .line 1910
    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    const/4 v0, 0x0

    .line 1912
    :goto_0
    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_2

    .line 1916
    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v2, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move v4, v0

    :goto_1
    if-ge v4, v1, :cond_1

    .line 1918
    iget-object v5, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v5, v5, v4

    cmpg-double v7, v5, v2

    if-gez v7, :cond_0

    move-wide v2, v5

    .line 1917
    :cond_0
    iget v5, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    add-int/2addr v4, v5

    goto :goto_1

    .line 1923
    :cond_1
    invoke-virtual {p1, v0, v2, v3}, Lorg/ejml/data/DMatrixRMaj;->set(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static minRows(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 9

    .line 1824
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    const/4 v0, 0x0

    .line 1826
    :goto_0
    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    .line 1829
    iget v2, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v2, v1

    .line 1830
    iget v3, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v3, v0

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_1
    if-ge v3, v2, :cond_1

    .line 1831
    iget-object v6, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v6, v6, v3

    cmpg-double v8, v6, v4

    if-gez v8, :cond_0

    move-wide v4, v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1836
    :cond_1
    invoke-virtual {p1, v0, v4, v5}, Lorg/ejml/data/DMatrixRMaj;->set(ID)D

    move v0, v1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static mult(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrix1Row;",
            ">(DTT;TT;TT;)TT;"
        }
    .end annotation

    .line 107
    iget v0, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v1, p3, Lorg/ejml/data/DMatrix1Row;->numCols:I

    invoke-static {p4, p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p4

    check-cast p4, Lorg/ejml/data/DMatrix1Row;

    .line 108
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    iget v0, p3, Lorg/ejml/data/DMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    .line 113
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_DDRM;->mult_reorder(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_DDRM;->mult_small(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    :goto_0
    return-object p4
.end method

.method public static mult(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrix1Row;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    .line 78
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    invoke-static {p2, p0, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/DMatrix1Row;

    .line 79
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    iget v0, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 83
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixVectorMult_DDRM;->mult(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)V

    goto :goto_0

    .line 84
    :cond_0
    iget v0, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_1

    .line 85
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_DDRM;->mult_reorder(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    goto :goto_0

    .line 87
    :cond_1
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_DDRM;->mult_small(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    :goto_0
    return-object p2
.end method

.method public static multAdd(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 2

    .line 402
    iget v0, p3, Lorg/ejml/data/DMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    .line 403
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_DDRM;->multAdd_reorder(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    goto :goto_0

    .line 405
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_DDRM;->multAdd_small(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    :goto_0
    return-void
.end method

.method public static multAdd(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 2

    .line 376
    iget v0, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 377
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixVectorMult_DDRM;->multAdd(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)V

    goto :goto_0

    .line 379
    :cond_0
    iget v0, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_1

    .line 380
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_DDRM;->multAdd_reorder(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    goto :goto_0

    .line 382
    :cond_1
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_DDRM;->multAdd_small(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    :goto_0
    return-void
.end method

.method public static multAddTransA(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 2

    .line 453
    iget v0, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-ge v0, v1, :cond_1

    iget v0, p3, Lorg/ejml/data/DMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 457
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_DDRM;->multAddTransA_small(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    goto :goto_1

    .line 455
    :cond_1
    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_DDRM;->multAddTransA_reorder(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    :goto_1
    return-void
.end method

.method public static multAddTransA(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 2

    .line 422
    iget v0, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 423
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    .line 424
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixVectorMult_DDRM;->multAddTransA_reorder(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)V

    goto :goto_1

    .line 426
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixVectorMult_DDRM;->multAddTransA_small(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)V

    goto :goto_1

    .line 429
    :cond_1
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-ge v0, v1, :cond_3

    iget v0, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_2

    goto :goto_0

    .line 433
    :cond_2
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_DDRM;->multAddTransA_small(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    goto :goto_1

    .line 431
    :cond_3
    :goto_0
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_DDRM;->multAddTransA_reorder(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    :goto_1
    return-void
.end method

.method public static multAddTransAB(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 8

    .line 530
    iget v0, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_TRANAB_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    const/4 v7, 0x0

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 531
    invoke-static/range {v2 .. v7}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_DDRM;->multAddTransAB_aux(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;[D)V

    goto :goto_0

    .line 533
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_DDRM;->multAddTransAB(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    :goto_0
    return-void
.end method

.method public static multAddTransAB(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 2

    .line 508
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_TRANAB_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 509
    invoke-static {p0, p1, p2, v0}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_DDRM;->multAddTransAB_aux(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;[D)V

    goto :goto_0

    .line 511
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_DDRM;->multAddTransAB(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    :goto_0
    return-void
.end method

.method public static multAddTransB(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 0

    .line 492
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_DDRM;->multAddTransB(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    return-void
.end method

.method public static multAddTransB(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V
    .locals 0

    .line 474
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_DDRM;->multAddTransB(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    return-void
.end method

.method public static multCols(Lorg/ejml/data/DMatrixRMaj;[D)V
    .locals 9

    .line 1722
    array-length v0, p1

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1727
    :goto_0
    iget v3, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v1, v3, :cond_1

    move v3, v0

    .line 1728
    :goto_1
    iget v4, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v3, v4, :cond_0

    .line 1729
    iget-object v4, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v5, v4, v2

    aget-wide v7, p1, v3

    mul-double/2addr v5, v7

    aput-wide v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 1723
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not enough elements in values."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static multInner(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrix1Row;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 332
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    invoke-static {p1, p0, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/DMatrix1Row;

    .line 334
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_INNER_SWITCH:I

    if-lt v0, v1, :cond_0

    .line 335
    invoke-static {p0, p1}, Lorg/ejml/dense/row/mult/MatrixMultProduct_DDRM;->inner_small(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    goto :goto_0

    .line 337
    :cond_0
    invoke-static {p0, p1}, Lorg/ejml/dense/row/mult/MatrixMultProduct_DDRM;->inner_reorder(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    :goto_0
    return-object p1
.end method

.method public static multOuter(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrix1Row;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 358
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    invoke-static {p1, p0, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p1

    check-cast p1, Lorg/ejml/data/DMatrix1Row;

    .line 359
    invoke-static {p0, p1}, Lorg/ejml/dense/row/mult/MatrixMultProduct_DDRM;->outer(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    return-object p1
.end method

.method public static multRows([DLorg/ejml/data/DMatrixRMaj;)V
    .locals 9

    .line 1682
    array-length v0, p0

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1687
    :goto_0
    iget v3, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v1, v3, :cond_1

    .line 1688
    aget-wide v3, p0, v1

    move v5, v0

    .line 1689
    :goto_1
    iget v6, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v5, v6, :cond_0

    .line 1690
    iget-object v6, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v7, v6, v2

    mul-double/2addr v7, v3

    aput-wide v7, v6, v2

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 1683
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not enough elements in values."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static multTransA(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrix1Row;",
            ">(DTT;TT;TT;)TT;"
        }
    .end annotation

    .line 170
    iget v0, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v1, p3, Lorg/ejml/data/DMatrix1Row;->numCols:I

    invoke-static {p4, p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p4

    check-cast p4, Lorg/ejml/data/DMatrix1Row;

    .line 171
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 172
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    iget v0, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-ge v0, v1, :cond_1

    iget v0, p3, Lorg/ejml/data/DMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_DDRM;->multTransA_small(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    goto :goto_1

    .line 177
    :cond_1
    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_DDRM;->multTransA_reorder(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    :goto_1
    return-object p4
.end method

.method public static multTransA(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrix1Row;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    .line 134
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    invoke-static {p2, p0, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/DMatrix1Row;

    .line 135
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    iget v0, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 141
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    .line 142
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixVectorMult_DDRM;->multTransA_reorder(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)V

    goto :goto_1

    .line 144
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixVectorMult_DDRM;->multTransA_small(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)V

    goto :goto_1

    .line 146
    :cond_1
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-ge v0, v1, :cond_3

    iget v0, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_2

    goto :goto_0

    .line 150
    :cond_2
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_DDRM;->multTransA_small(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    goto :goto_1

    .line 148
    :cond_3
    :goto_0
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_DDRM;->multTransA_reorder(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    :goto_1
    return-object p2
.end method

.method public static multTransAB(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrix1Row;",
            ">(DTT;TT;TT;)TT;"
        }
    .end annotation

    .line 282
    iget v0, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v1, p3, Lorg/ejml/data/DMatrix1Row;->numRows:I

    invoke-static {p4, p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p4

    check-cast p4, Lorg/ejml/data/DMatrix1Row;

    .line 283
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 284
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 287
    iget v0, p2, Lorg/ejml/data/DMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_TRANAB_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    const/4 v5, 0x0

    move-wide v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 288
    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_DDRM;->multTransAB_aux(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;[D)V

    goto :goto_0

    .line 290
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_DDRM;->multTransAB(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    :goto_0
    return-object p4
.end method

.method public static multTransAB(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrix1Row;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    .line 248
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    invoke-static {p2, p0, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/DMatrix1Row;

    .line 249
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 250
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 252
    iget v0, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 254
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_0

    .line 255
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixVectorMult_DDRM;->multTransA_reorder(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)V

    goto :goto_0

    .line 257
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixVectorMult_DDRM;->multTransA_small(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)V

    goto :goto_0

    .line 259
    :cond_1
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->MULT_TRANAB_COLUMN_SWITCH:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 260
    invoke-static {p0, p1, p2, v0}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_DDRM;->multTransAB_aux(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;[D)V

    goto :goto_0

    .line 262
    :cond_2
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_DDRM;->multTransAB(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    :goto_0
    return-object p2
.end method

.method public static multTransB(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrix1Row;",
            ">(DTT;TT;TT;)TT;"
        }
    .end annotation

    .line 225
    iget v0, p2, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v1, p3, Lorg/ejml/data/DMatrix1Row;->numRows:I

    invoke-static {p4, p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p4

    check-cast p4, Lorg/ejml/data/DMatrix1Row;

    .line 226
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 227
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 230
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_DDRM;->multTransB(DLorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    return-object p4
.end method

.method public static multTransB(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Lorg/ejml/data/DMatrix1Row;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrix1Row;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    .line 198
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    invoke-static {p2, p0, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/DMatrix1Row;

    .line 199
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 200
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 202
    iget v0, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 203
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixVectorMult_DDRM;->mult(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)V

    goto :goto_0

    .line 205
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/mult/MatrixMatrixMult_DDRM;->multTransB(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    :goto_0
    return-object p2
.end method

.method public static permuteRowInv([ILorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 6

    .line 2761
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    array-length v1, p0

    if-gt v0, v1, :cond_1

    .line 2764
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {p2, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p2

    .line 2766
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v1, 0x0

    .line 2767
    :goto_0
    iget v2, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v1, v2, :cond_0

    .line 2768
    iget-object v2, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    mul-int v3, v1, v0

    iget-object v4, p2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget v5, p0, v1

    mul-int/2addr v5, v0

    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p2

    .line 2762
    :cond_1
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string/jumbo p1, "permutation vector must have at least as many elements as input has rows"

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static pinv(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 2

    const/4 v0, 0x1

    .line 874
    invoke-static {v0}, Lorg/ejml/dense/row/factory/LinearSolverFactory_DDRM;->pseudoInverse(Z)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object v0

    .line 875
    invoke-interface {v0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->modifiesA()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 876
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->copy()Lorg/ejml/data/DMatrixRMaj;

    move-result-object p0

    .line 878
    :cond_0
    invoke-interface {v0, p0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->setA(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 881
    invoke-interface {v0, p1}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->invert(Lorg/ejml/data/Matrix;)V

    return-void

    .line 879
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invert failed, maybe a bug?"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static removeColumns(Lorg/ejml/data/DMatrixRMaj;II)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p1, p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x0

    sget-object v3, Landroidx/core/view/contentcapture/cO/WfeUtUoIBm;->clqJmxeJ:Ljava/lang/String;

    .line 1377
    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->assertTrue(ZLjava/lang/String;)V

    if-ltz p1, :cond_1

    .line 1378
    iget v2, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

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

    .line 1382
    :goto_2
    iget v6, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v3, v6, :cond_4

    move v6, v0

    :goto_3
    if-ge v6, p1, :cond_2

    .line 1384
    iget-object v7, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v8, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int v9, v5, v4

    aget-wide v8, v8, v9

    aput-wide v8, v7, v5

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    add-int/2addr v4, v2

    add-int/lit8 v6, p2, 0x1

    .line 1387
    :goto_4
    iget v7, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v6, v7, :cond_3

    .line 1388
    iget-object v7, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v8, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int v9, v5, v4

    aget-wide v8, v8, v9

    aput-wide v8, v7, v5

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1391
    :cond_4
    iget p1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    return-void
.end method

.method public static rowsToVector(Lorg/ejml/data/DMatrixRMaj;[Lorg/ejml/data/DMatrixRMaj;)[Lorg/ejml/data/DMatrixRMaj;
    .locals 6

    if-eqz p1, :cond_0

    .line 923
    array-length v0, p1

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v0, v1, :cond_1

    .line 924
    :cond_0
    iget p1, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    new-array p1, p1, [Lorg/ejml/data/DMatrixRMaj;

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 930
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 931
    aget-object v2, p1, v1

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 932
    new-instance v2, Lorg/ejml/data/DMatrixRMaj;

    iget v4, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-direct {v2, v4, v3}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    aput-object v2, p1, v1

    goto :goto_1

    .line 934
    :cond_2
    iget v4, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {v2, v4, v3, v0}, Lorg/ejml/data/DMatrixRMaj;->reshape(IIZ)V

    .line 937
    :goto_1
    aget-object v2, p1, v1

    move v3, v0

    .line 939
    :goto_2
    iget v4, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v3, v4, :cond_3

    .line 940
    invoke-virtual {p0, v1, v3}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v4

    invoke-virtual {v2, v3, v0, v4, v5}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p1
.end method

.method public static rref(Lorg/ejml/data/DMatrixRMaj;ILorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 5

    .line 2485
    invoke-static {p2, p0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/DMatrixRMaj;

    if-gtz p1, :cond_0

    .line 2488
    iget p1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2490
    :cond_0
    new-instance v0, Lorg/ejml/dense/row/misc/RrefGaussJordanRowPivot_DDRM;

    invoke-direct {v0}, Lorg/ejml/dense/row/misc/RrefGaussJordanRowPivot_DDRM;-><init>()V

    .line 2491
    invoke-static {p0}, Lorg/ejml/dense/row/CommonOps_DDRM;->elementMaxAbs(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v1

    sget-wide v3, Lorg/ejml/UtilEjml;->EPS:D

    mul-double/2addr v1, v3

    iget v3, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v4, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lorg/ejml/interfaces/linsol/ReducedRowEchelonForm_F64;->setTolerance(D)V

    .line 2493
    invoke-virtual {p2, p0}, Lorg/ejml/data/DMatrixRMaj;->set(Lorg/ejml/data/DMatrixD1;)V

    .line 2494
    invoke-interface {v0, p2, p1}, Lorg/ejml/interfaces/linsol/ReducedRowEchelonForm_F64;->reduce(Lorg/ejml/data/Matrix;I)V

    return-object p2
.end method

.method public static scale(DLorg/ejml/data/DMatrixD1;)V
    .locals 5

    .line 2269
    invoke-virtual {p2}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2272
    iget-object v2, p2, Lorg/ejml/data/DMatrixD1;->data:[D

    aget-wide v3, v2, v1

    mul-double/2addr v3, p0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static scale(DLorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)V
    .locals 5

    .line 2288
    iget v0, p2, Lorg/ejml/data/DMatrixD1;->numRows:I

    iget v1, p2, Lorg/ejml/data/DMatrixD1;->numCols:I

    invoke-virtual {p3, v0, v1}, Lorg/ejml/data/DMatrixD1;->reshape(II)V

    .line 2290
    invoke-virtual {p2}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2293
    iget-object v2, p3, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v3, p2, Lorg/ejml/data/DMatrixD1;->data:[D

    aget-wide v3, v3, v1

    mul-double/2addr v3, p0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static scaleCol(DLorg/ejml/data/DMatrixRMaj;I)V
    .locals 4

    const/4 v0, 0x0

    .line 2320
    :goto_0
    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v0, v1, :cond_0

    .line 2321
    iget-object v1, p2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v2, v1, p3

    mul-double/2addr v2, p0

    aput-wide v2, v1, p3

    add-int/lit8 v0, v0, 0x1

    .line 2320
    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    add-int/2addr p3, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static scaleRow(DLorg/ejml/data/DMatrixRMaj;I)V
    .locals 5

    .line 2305
    iget v0, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr p3, v0

    const/4 v0, 0x0

    .line 2306
    :goto_0
    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_0

    .line 2307
    iget-object v1, p2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v2, p3, 0x1

    aget-wide v3, v1, p3

    mul-double/2addr v3, p0

    aput-wide v3, v1, p3

    add-int/lit8 v0, v0, 0x1

    move p3, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setIdentity(Lorg/ejml/data/DMatrix1Row;)V
    .locals 6

    .line 955
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    .line 957
    :goto_0
    iget-object v1, p0, Lorg/ejml/data/DMatrix1Row;->data:[D

    invoke-virtual {p0}, Lorg/ejml/data/DMatrix1Row;->getNumElements()I

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v3, v4}, Ljava/util/Arrays;->fill([DIID)V

    move v1, v5

    :goto_1
    if-ge v5, v0, :cond_1

    .line 961
    iget-object v2, p0, Lorg/ejml/data/DMatrix1Row;->data:[D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    aput-wide v3, v2, v1

    add-int/lit8 v5, v5, 0x1

    .line 960
    iget v2, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static solve(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 2

    .line 565
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 567
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {v0, v1}, Lorg/ejml/dense/row/factory/LinearSolverFactory_DDRM;->general(II)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object v0

    .line 570
    new-instance v1, Lorg/ejml/LinearSolverSafe;

    invoke-direct {v1, v0}, Lorg/ejml/LinearSolverSafe;-><init>(Lorg/ejml/interfaces/linsol/LinearSolverDense;)V

    .line 572
    invoke-interface {v1, p0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->setA(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 575
    :cond_0
    invoke-interface {v1, p1, p2}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static solveSPD(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 4

    .line 593
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_4

    .line 596
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {p2, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 598
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v1, :cond_2

    .line 599
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->createLike()Lorg/ejml/data/DMatrixRMaj;

    move-result-object v0

    .line 602
    invoke-static {p0, v0}, Lorg/ejml/dense/row/misc/UnrolledCholesky_DDRM;->lower(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 606
    :cond_0
    iget v1, p2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v1, v3, :cond_1

    .line 607
    invoke-virtual {p2, p1}, Lorg/ejml/data/DMatrixRMaj;->set(Lorg/ejml/data/DMatrixD1;)V

    .line 608
    iget-object p0, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object p1, p2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v1, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {p0, p1, v1}, Lorg/ejml/dense/row/decomposition/TriangularSolver_DDRM;->solveL([D[DI)V

    .line 609
    iget-object p0, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object p1, p2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget p2, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {p0, p1, p2}, Lorg/ejml/dense/row/decomposition/TriangularSolver_DDRM;->solveTranL([D[DI)V

    goto :goto_0

    .line 611
    :cond_1
    iget p0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    new-array p0, p0, [D

    .line 612
    invoke-static {v0, p1, p2, p0}, Lorg/ejml/dense/row/linsol/chol/LinearSolverChol_DDRM;->solveLower(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;[D)V

    :goto_0
    return v3

    .line 615
    :cond_2
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {v0}, Lorg/ejml/dense/row/factory/LinearSolverFactory_DDRM;->chol(I)Lorg/ejml/interfaces/linsol/LinearSolverDense;

    move-result-object v0

    .line 616
    new-instance v1, Lorg/ejml/LinearSolverSafe;

    invoke-direct {v1, v0}, Lorg/ejml/LinearSolverSafe;-><init>(Lorg/ejml/interfaces/linsol/LinearSolverDense;)V

    .line 618
    invoke-interface {v1, p0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->setA(Lorg/ejml/data/Matrix;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    .line 621
    :cond_3
    invoke-interface {v1, p1, p2}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    return v3

    .line 594
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must be a square matrix"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static subtract(DLorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrixD1;",
            ">(DTT;TT;)TT;"
        }
    .end annotation

    .line 2198
    invoke-static {p3, p2}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p3

    check-cast p3, Lorg/ejml/data/DMatrixD1;

    .line 2200
    invoke-virtual {p2}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2203
    iget-object v2, p3, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v3, p2, Lorg/ejml/data/DMatrixD1;->data:[D

    aget-wide v3, v3, v1

    sub-double v3, p0, v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method public static subtract(Lorg/ejml/data/DMatrixD1;DLorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrixD1;",
            ">(TT;DTT;)TT;"
        }
    .end annotation

    .line 2174
    invoke-static {p3, p0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p3

    check-cast p3, Lorg/ejml/data/DMatrixD1;

    .line 2176
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2179
    iget-object v2, p3, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v3, p0, Lorg/ejml/data/DMatrixD1;->data:[D

    aget-wide v3, v3, v1

    sub-double/2addr v3, p1

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method public static subtract(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/data/DMatrixD1;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2244
    invoke-static {p0, p1, v0}, Lorg/ejml/UtilEjml;->checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Z)V

    .line 2245
    invoke-static {p2, p0}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;

    move-result-object p2

    check-cast p2, Lorg/ejml/data/DMatrixD1;

    .line 2247
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2250
    iget-object v2, p2, Lorg/ejml/data/DMatrixD1;->data:[D

    iget-object v3, p0, Lorg/ejml/data/DMatrixD1;->data:[D

    aget-wide v3, v3, v1

    iget-object v5, p1, Lorg/ejml/data/DMatrixD1;->data:[D

    aget-wide v5, v5, v1

    sub-double/2addr v3, v5

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public static subtractEquals(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)V
    .locals 7

    const/4 v0, 0x1

    .line 2220
    invoke-static {p0, p1, v0}, Lorg/ejml/UtilEjml;->checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Z)V

    .line 2221
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixD1;->getNumElements()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2224
    iget-object v2, p0, Lorg/ejml/data/DMatrixD1;->data:[D

    aget-wide v3, v2, v1

    iget-object v5, p1, Lorg/ejml/data/DMatrixD1;->data:[D

    aget-wide v5, v5, v1

    sub-double/2addr v3, v5

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static sumCols(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 7

    const/4 v0, 0x1

    .line 1882
    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    const/4 v0, 0x0

    .line 1884
    :goto_0
    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_1

    .line 1888
    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v2, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    const-wide/16 v2, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v1, :cond_0

    .line 1890
    iget-object v5, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v5, v5, v4

    add-double/2addr v2, v5

    .line 1889
    iget v5, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    add-int/2addr v4, v5

    goto :goto_1

    .line 1893
    :cond_0
    invoke-virtual {p1, v0, v2, v3}, Lorg/ejml/data/DMatrixRMaj;->set(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static sumRows(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 8

    .line 1797
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    const/4 v0, 0x0

    .line 1799
    :goto_0
    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 1802
    iget v2, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v2, v1

    .line 1803
    iget v3, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v3, v0

    const-wide/16 v4, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 1804
    iget-object v6, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v6, v6, v3

    add-double/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1807
    :cond_0
    invoke-virtual {p1, v0, v4, v5}, Lorg/ejml/data/DMatrixRMaj;->set(ID)D

    move v0, v1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static symmLowerToFull(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 8

    .line 2817
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_2

    .line 2820
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v1, 0x0

    .line 2822
    :goto_0
    iget v2, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_0

    .line 2824
    iget-object v4, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    mul-int v5, v1, v0

    add-int/2addr v5, v3

    iget-object v6, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    mul-int v7, v3, v0

    add-int/2addr v7, v1

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return-void

    .line 2818
    :cond_2
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string v0, "Must be a square matrix"

    invoke-direct {p0, v0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static symmUpperToFull(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 8

    .line 2836
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_2

    .line 2839
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v1, 0x0

    move v2, v1

    .line 2841
    :goto_0
    iget v3, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v2, v3, :cond_1

    move v3, v1

    :goto_1
    if-gt v3, v2, :cond_0

    .line 2843
    iget-object v4, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    mul-int v5, v2, v0

    add-int/2addr v5, v3

    iget-object v6, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    mul-int v7, v3, v0

    add-int/2addr v7, v2

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 2837
    :cond_2
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    const-string v0, "Must be a square matrix"

    invoke-direct {p0, v0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static trace(Lorg/ejml/data/DMatrix1Row;)D
    .locals 7

    .line 684
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_0

    .line 688
    invoke-virtual {p0, v4}, Lorg/ejml/data/DMatrix1Row;->get(I)D

    move-result-wide v5

    add-double/2addr v1, v5

    .line 689
    iget v5, p0, Lorg/ejml/data/DMatrix1Row;->numCols:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static transpose(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 2

    .line 662
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-static {p1, v0, v1}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    .line 664
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    sget v1, Lorg/ejml/EjmlParameters;->TRANSPOSE_SWITCH:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    sget v1, Lorg/ejml/EjmlParameters;->TRANSPOSE_SWITCH:I

    if-le v0, v1, :cond_0

    .line 666
    sget v0, Lorg/ejml/EjmlParameters;->BLOCK_WIDTH:I

    invoke-static {p0, p1, v0}, Lorg/ejml/dense/row/misc/TransposeAlgs_DDRM;->block(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;I)V

    goto :goto_0

    .line 668
    :cond_0
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/TransposeAlgs_DDRM;->standard(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)V

    :goto_0
    return-object p1
.end method

.method public static transpose(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 3

    .line 640
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_0

    .line 641
    invoke-static {p0}, Lorg/ejml/dense/row/misc/TransposeAlgs_DDRM;->square(Lorg/ejml/data/DMatrix1Row;)V

    goto :goto_0

    .line 643
    :cond_0
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v2, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 644
    invoke-static {p0, v0}, Lorg/ejml/dense/row/CommonOps_DDRM;->transpose(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    .line 645
    invoke-virtual {p0, v0}, Lorg/ejml/data/DMatrixRMaj;->set(Lorg/ejml/data/DMatrixD1;)V

    :goto_0
    return-void
.end method
