.class public Lorg/ejml/dense/row/mult/SubmatrixOps_DDRM;
.super Ljava/lang/Object;
.source "SubmatrixOps_DDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setSubMatrix(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;IIIIII)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p6, :cond_1

    move v2, v0

    :goto_1
    if-ge v2, p7, :cond_0

    add-int v3, v1, p2

    add-int v4, v2, p3

    .line 35
    invoke-virtual {p0, v3, v4}, Lorg/ejml/data/DMatrix1Row;->get(II)D

    move-result-wide v3

    add-int v5, v1, p4

    add-int v6, v2, p5

    .line 36
    invoke-virtual {p1, v5, v6, v3, v4}, Lorg/ejml/data/DMatrix1Row;->set(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
