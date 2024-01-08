.class public Lorg/ejml/data/DMatrix3;
.super Ljava/lang/Object;
.source "DMatrix3.java"

# interfaces
.implements Lorg/ejml/data/DMatrixFixed;


# instance fields
.field public a1:D

.field public a2:D

.field public a3:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lorg/ejml/data/DMatrix3;->a1:D

    .line 38
    iput-wide p3, p0, Lorg/ejml/data/DMatrix3;->a2:D

    .line 39
    iput-wide p5, p0, Lorg/ejml/data/DMatrix3;->a3:D

    return-void
.end method

.method public constructor <init>(Lorg/ejml/data/DMatrix3;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iget-wide v0, p1, Lorg/ejml/data/DMatrix3;->a1:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3;->a1:D

    .line 44
    iget-wide v0, p1, Lorg/ejml/data/DMatrix3;->a2:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3;->a2:D

    .line 45
    iget-wide v0, p1, Lorg/ejml/data/DMatrix3;->a3:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3;->a3:D

    return-void
.end method


# virtual methods
.method public copy()Lorg/ejml/data/Matrix;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/ejml/data/Matrix;",
            ">()TT;"
        }
    .end annotation

    .line 148
    new-instance v0, Lorg/ejml/data/DMatrix3;

    invoke-direct {v0, p0}, Lorg/ejml/data/DMatrix3;-><init>(Lorg/ejml/data/DMatrix3;)V

    return-object v0
.end method

.method public createLike()Lorg/ejml/data/Matrix;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/ejml/data/Matrix;",
            ">()TT;"
        }
    .end annotation

    .line 163
    new-instance v0, Lorg/ejml/data/DMatrix3;

    invoke-direct {v0}, Lorg/ejml/data/DMatrix3;-><init>()V

    return-object v0
.end method

.method public get(II)D
    .locals 0

    .line 70
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/DMatrix3;->unsafe_get(II)D

    move-result-wide p1

    return-wide p1
.end method

.method public getNumCols()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getNumElements()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getNumRows()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getType()Lorg/ejml/data/MatrixType;
    .locals 1

    .line 168
    sget-object v0, Lorg/ejml/data/MatrixType;->UNSPECIFIED:Lorg/ejml/data/MatrixType;

    return-object v0
.end method

.method public print()V
    .locals 2

    .line 153
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v1, 0xb

    invoke-static {v0, p0, v1}, Lorg/ejml/ops/MatrixIO;->printFancy(Ljava/io/PrintStream;Lorg/ejml/data/DMatrix;I)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1

    .line 158
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, p0, p1}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/DMatrix;Ljava/lang/String;)V

    return-void
.end method

.method public set(DDD)V
    .locals 0

    .line 57
    iput-wide p1, p0, Lorg/ejml/data/DMatrix3;->a1:D

    .line 58
    iput-wide p3, p0, Lorg/ejml/data/DMatrix3;->a2:D

    .line 59
    iput-wide p5, p0, Lorg/ejml/data/DMatrix3;->a3:D

    return-void
.end method

.method public set(IID)V
    .locals 0

    .line 93
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/data/DMatrix3;->unsafe_set(IID)V

    return-void
.end method

.method public set(I[D)V
    .locals 2

    add-int/lit8 v0, p1, 0x0

    .line 63
    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3;->a1:D

    add-int/lit8 v0, p1, 0x1

    .line 64
    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3;->a2:D

    add-int/lit8 p1, p1, 0x2

    .line 65
    aget-wide p1, p2, p1

    iput-wide p1, p0, Lorg/ejml/data/DMatrix3;->a3:D

    return-void
.end method

.method public set(Lorg/ejml/data/Matrix;)V
    .locals 7

    .line 116
    check-cast p1, Lorg/ejml/data/DMatrix;

    .line 118
    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 119
    invoke-interface {p1, v3, v3}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v5

    iput-wide v5, p0, Lorg/ejml/data/DMatrix3;->a1:D

    .line 120
    invoke-interface {p1, v4, v3}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/ejml/data/DMatrix3;->a2:D

    .line 121
    invoke-interface {p1, v1, v3}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3;->a3:D

    goto :goto_0

    .line 122
    :cond_0
    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v0

    if-ne v0, v4, :cond_1

    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 123
    invoke-interface {p1, v3, v3}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v5

    iput-wide v5, p0, Lorg/ejml/data/DMatrix3;->a1:D

    .line 124
    invoke-interface {p1, v3, v4}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/ejml/data/DMatrix3;->a2:D

    .line 125
    invoke-interface {p1, v3, v1}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3;->a3:D

    :goto_0
    return-void

    .line 127
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Incompatible shape"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unsafe_get(II)D
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Row or column must be zero since this is a vector"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-nez p1, :cond_2

    .line 81
    iget-wide p1, p0, Lorg/ejml/data/DMatrix3;->a1:D

    return-wide p1

    :cond_2
    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 83
    iget-wide p1, p0, Lorg/ejml/data/DMatrix3;->a2:D

    return-wide p1

    :cond_3
    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    .line 85
    iget-wide p1, p0, Lorg/ejml/data/DMatrix3;->a3:D

    return-wide p1

    .line 87
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Out of range.  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public unsafe_set(IID)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Row or column must be zero since this is a vector"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-nez p1, :cond_2

    .line 104
    iput-wide p3, p0, Lorg/ejml/data/DMatrix3;->a1:D

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 106
    iput-wide p3, p0, Lorg/ejml/data/DMatrix3;->a2:D

    goto :goto_1

    :cond_3
    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    .line 108
    iput-wide p3, p0, Lorg/ejml/data/DMatrix3;->a3:D

    :goto_1
    return-void

    .line 110
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Out of range.  "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public zero()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lorg/ejml/data/DMatrix3;->a1:D

    .line 51
    iput-wide v0, p0, Lorg/ejml/data/DMatrix3;->a2:D

    .line 52
    iput-wide v0, p0, Lorg/ejml/data/DMatrix3;->a3:D

    return-void
.end method
