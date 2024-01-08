.class public Lorg/ejml/data/DMatrix5;
.super Ljava/lang/Object;
.source "DMatrix5.java"

# interfaces
.implements Lorg/ejml/data/DMatrixFixed;


# instance fields
.field public a1:D

.field public a2:D

.field public a3:D

.field public a4:D

.field public a5:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDDD)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lorg/ejml/data/DMatrix5;->a1:D

    .line 38
    iput-wide p3, p0, Lorg/ejml/data/DMatrix5;->a2:D

    .line 39
    iput-wide p5, p0, Lorg/ejml/data/DMatrix5;->a3:D

    .line 40
    iput-wide p7, p0, Lorg/ejml/data/DMatrix5;->a4:D

    .line 41
    iput-wide p9, p0, Lorg/ejml/data/DMatrix5;->a5:D

    return-void
.end method

.method public constructor <init>(Lorg/ejml/data/DMatrix5;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iget-wide v0, p1, Lorg/ejml/data/DMatrix5;->a1:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a1:D

    .line 46
    iget-wide v0, p1, Lorg/ejml/data/DMatrix5;->a2:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a2:D

    .line 47
    iget-wide v0, p1, Lorg/ejml/data/DMatrix5;->a3:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a3:D

    .line 48
    iget-wide v0, p1, Lorg/ejml/data/DMatrix5;->a4:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a4:D

    .line 49
    iget-wide v0, p1, Lorg/ejml/data/DMatrix5;->a5:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a5:D

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

    .line 170
    new-instance v0, Lorg/ejml/data/DMatrix5;

    invoke-direct {v0, p0}, Lorg/ejml/data/DMatrix5;-><init>(Lorg/ejml/data/DMatrix5;)V

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

    .line 185
    new-instance v0, Lorg/ejml/data/DMatrix5;

    invoke-direct {v0}, Lorg/ejml/data/DMatrix5;-><init>()V

    return-object v0
.end method

.method public get(II)D
    .locals 0

    .line 80
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/DMatrix5;->unsafe_get(II)D

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

    const/4 v0, 0x5

    return v0
.end method

.method public getNumRows()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getType()Lorg/ejml/data/MatrixType;
    .locals 1

    .line 190
    sget-object v0, Lorg/ejml/data/MatrixType;->UNSPECIFIED:Lorg/ejml/data/MatrixType;

    return-object v0
.end method

.method public print()V
    .locals 2

    .line 175
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v1, 0xb

    invoke-static {v0, p0, v1}, Lorg/ejml/ops/MatrixIO;->printFancy(Ljava/io/PrintStream;Lorg/ejml/data/DMatrix;I)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1

    .line 180
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, p0, p1}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/DMatrix;Ljava/lang/String;)V

    return-void
.end method

.method public set(DDDDD)V
    .locals 0

    .line 63
    iput-wide p1, p0, Lorg/ejml/data/DMatrix5;->a1:D

    .line 64
    iput-wide p3, p0, Lorg/ejml/data/DMatrix5;->a2:D

    .line 65
    iput-wide p5, p0, Lorg/ejml/data/DMatrix5;->a3:D

    .line 66
    iput-wide p7, p0, Lorg/ejml/data/DMatrix5;->a4:D

    .line 67
    iput-wide p9, p0, Lorg/ejml/data/DMatrix5;->a5:D

    return-void
.end method

.method public set(IID)V
    .locals 0

    .line 107
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/data/DMatrix5;->unsafe_set(IID)V

    return-void
.end method

.method public set(I[D)V
    .locals 2

    add-int/lit8 v0, p1, 0x0

    .line 71
    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a1:D

    add-int/lit8 v0, p1, 0x1

    .line 72
    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a2:D

    add-int/lit8 v0, p1, 0x2

    .line 73
    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a3:D

    add-int/lit8 v0, p1, 0x3

    .line 74
    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a4:D

    add-int/lit8 p1, p1, 0x4

    .line 75
    aget-wide p1, p2, p1

    iput-wide p1, p0, Lorg/ejml/data/DMatrix5;->a5:D

    return-void
.end method

.method public set(Lorg/ejml/data/Matrix;)V
    .locals 9

    .line 134
    check-cast p1, Lorg/ejml/data/DMatrix;

    .line 136
    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 137
    invoke-interface {p1, v5, v5}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v7

    iput-wide v7, p0, Lorg/ejml/data/DMatrix5;->a1:D

    .line 138
    invoke-interface {p1, v6, v5}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/ejml/data/DMatrix5;->a2:D

    .line 139
    invoke-interface {p1, v3, v5}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v3

    iput-wide v3, p0, Lorg/ejml/data/DMatrix5;->a3:D

    .line 140
    invoke-interface {p1, v2, v5}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5;->a4:D

    .line 141
    invoke-interface {p1, v1, v5}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a5:D

    goto :goto_0

    .line 142
    :cond_0
    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v0

    if-ne v0, v6, :cond_1

    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 143
    invoke-interface {p1, v5, v5}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v7

    iput-wide v7, p0, Lorg/ejml/data/DMatrix5;->a1:D

    .line 144
    invoke-interface {p1, v5, v6}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/ejml/data/DMatrix5;->a2:D

    .line 145
    invoke-interface {p1, v5, v3}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v3

    iput-wide v3, p0, Lorg/ejml/data/DMatrix5;->a3:D

    .line 146
    invoke-interface {p1, v5, v2}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5;->a4:D

    .line 147
    invoke-interface {p1, v5, v1}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a5:D

    :goto_0
    return-void

    .line 149
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

    .line 86
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Row or column must be zero since this is a vector"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-nez p1, :cond_2

    .line 91
    iget-wide p1, p0, Lorg/ejml/data/DMatrix5;->a1:D

    return-wide p1

    :cond_2
    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 93
    iget-wide p1, p0, Lorg/ejml/data/DMatrix5;->a2:D

    return-wide p1

    :cond_3
    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    .line 95
    iget-wide p1, p0, Lorg/ejml/data/DMatrix5;->a3:D

    return-wide p1

    :cond_4
    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    .line 97
    iget-wide p1, p0, Lorg/ejml/data/DMatrix5;->a4:D

    return-wide p1

    :cond_5
    const/4 p2, 0x4

    if-ne p1, p2, :cond_6

    .line 99
    iget-wide p1, p0, Lorg/ejml/data/DMatrix5;->a5:D

    return-wide p1

    .line 101
    :cond_6
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

    .line 113
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Row or column must be zero since this is a vector"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-nez p1, :cond_2

    .line 118
    iput-wide p3, p0, Lorg/ejml/data/DMatrix5;->a1:D

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 120
    iput-wide p3, p0, Lorg/ejml/data/DMatrix5;->a2:D

    goto :goto_1

    :cond_3
    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    .line 122
    iput-wide p3, p0, Lorg/ejml/data/DMatrix5;->a3:D

    goto :goto_1

    :cond_4
    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    .line 124
    iput-wide p3, p0, Lorg/ejml/data/DMatrix5;->a4:D

    goto :goto_1

    :cond_5
    const/4 p2, 0x4

    if-ne p1, p2, :cond_6

    .line 126
    iput-wide p3, p0, Lorg/ejml/data/DMatrix5;->a5:D

    :goto_1
    return-void

    .line 128
    :cond_6
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

    .line 54
    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a1:D

    .line 55
    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a2:D

    .line 56
    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a3:D

    .line 57
    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a4:D

    .line 58
    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a5:D

    return-void
.end method
