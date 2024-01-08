.class public abstract Lorg/ejml/sparse/ComputePermutation;
.super Ljava/lang/Object;
.source "ComputePermutation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/ejml/data/Matrix;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected pcol:Lorg/ejml/data/IGrowArray;

.field protected prow:Lorg/ejml/data/IGrowArray;


# direct methods
.method protected constructor <init>(ZZ)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 35
    new-instance p1, Lorg/ejml/data/IGrowArray;

    invoke-direct {p1}, Lorg/ejml/data/IGrowArray;-><init>()V

    iput-object p1, p0, Lorg/ejml/sparse/ComputePermutation;->prow:Lorg/ejml/data/IGrowArray;

    :cond_0
    if-eqz p2, :cond_1

    .line 37
    new-instance p1, Lorg/ejml/data/IGrowArray;

    invoke-direct {p1}, Lorg/ejml/data/IGrowArray;-><init>()V

    iput-object p1, p0, Lorg/ejml/sparse/ComputePermutation;->pcol:Lorg/ejml/data/IGrowArray;

    :cond_1
    return-void
.end method


# virtual methods
.method public getColumn()Lorg/ejml/data/IGrowArray;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/ejml/sparse/ComputePermutation;->pcol:Lorg/ejml/data/IGrowArray;

    return-object v0
.end method

.method public getRow()Lorg/ejml/data/IGrowArray;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/ejml/sparse/ComputePermutation;->prow:Lorg/ejml/data/IGrowArray;

    return-object v0
.end method

.method public hasColumnPermutation()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/ejml/sparse/ComputePermutation;->pcol:Lorg/ejml/data/IGrowArray;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRowPermutation()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/ejml/sparse/ComputePermutation;->prow:Lorg/ejml/data/IGrowArray;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract process(Lorg/ejml/data/Matrix;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
