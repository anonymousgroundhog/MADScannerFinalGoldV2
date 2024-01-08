.class public Lorg/ejml/dense/row/mult/SubmatrixOps_FDRM;
.super Ljava/lang/Object;
.source "SubmatrixOps_FDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setSubMatrix(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;IIIIII)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p6, :cond_1

    move v2, v0

    :goto_1
    if-ge v2, p7, :cond_0

    add-int v3, v1, p2

    add-int v4, v2, p3

    .line 37
    invoke-virtual {p0, v3, v4}, Lorg/ejml/data/FMatrix1Row;->get(II)F

    move-result v3

    add-int v4, v1, p4

    add-int v5, v2, p5

    .line 38
    invoke-virtual {p1, v4, v5, v3}, Lorg/ejml/data/FMatrix1Row;->set(IIF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
