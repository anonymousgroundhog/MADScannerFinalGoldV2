.class public Lorg/ejml/dense/row/misc/ImplCommonOps_DDMA;
.super Ljava/lang/Object;
.source "ImplCommonOps_DDMA.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extract(Lorg/ejml/data/DMatrix;IILorg/ejml/data/DMatrix;IIII)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p6, :cond_1

    move v2, v0

    :goto_1
    if-ge v2, p7, :cond_0

    add-int v3, v1, p1

    add-int v4, v2, p2

    .line 38
    invoke-interface {p0, v3, v4}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v3

    add-int v5, p4, v1

    add-int v6, p5, v2

    .line 39
    invoke-interface {p3, v5, v6, v3, v4}, Lorg/ejml/data/DMatrix;->set(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
