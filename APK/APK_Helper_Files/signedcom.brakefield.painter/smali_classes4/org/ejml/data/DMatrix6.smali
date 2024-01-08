.class public Lorg/ejml/data/DMatrix6;
.super Ljava/lang/Object;
.source "DMatrix6.java"

# interfaces
.implements Lorg/ejml/data/DMatrixFixed;


# instance fields
.field public a1:D

.field public a2:D

.field public a3:D

.field public a4:D

.field public a5:D

.field public a6:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDDDD)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lorg/ejml/data/DMatrix6;->a1:D

    .line 38
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6;->a2:D

    .line 39
    iput-wide p5, p0, Lorg/ejml/data/DMatrix6;->a3:D

    .line 40
    iput-wide p7, p0, Lorg/ejml/data/DMatrix6;->a4:D

    .line 41
    iput-wide p9, p0, Lorg/ejml/data/DMatrix6;->a5:D

    .line 42
    iput-wide p11, p0, Lorg/ejml/data/DMatrix6;->a6:D

    return-void
.end method

.method public constructor <init>(Lorg/ejml/data/DMatrix6;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iget-wide v0, p1, Lorg/ejml/data/DMatrix6;->a1:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    .line 47
    iget-wide v0, p1, Lorg/ejml/data/DMatrix6;->a2:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a2:D

    .line 48
    iget-wide v0, p1, Lorg/ejml/data/DMatrix6;->a3:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a3:D

    .line 49
    iget-wide v0, p1, Lorg/ejml/data/DMatrix6;->a4:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a4:D

    .line 50
    iget-wide v0, p1, Lorg/ejml/data/DMatrix6;->a5:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a5:D

    .line 51
    iget-wide v0, p1, Lorg/ejml/data/DMatrix6;->a6:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a6:D

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

    .line 181
    new-instance v0, Lorg/ejml/data/DMatrix6;

    invoke-direct {v0, p0}, Lorg/ejml/data/DMatrix6;-><init>(Lorg/ejml/data/DMatrix6;)V

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

    .line 196
    new-instance v0, Lorg/ejml/data/DMatrix6;

    invoke-direct {v0}, Lorg/ejml/data/DMatrix6;-><init>()V

    return-object v0
.end method

.method public get(II)D
    .locals 0

    .line 85
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/DMatrix6;->unsafe_get(II)D

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

    const/4 v0, 0x6

    return v0
.end method

.method public getNumRows()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getType()Lorg/ejml/data/MatrixType;
    .locals 1

    .line 201
    sget-object v0, Lorg/ejml/data/MatrixType;->UNSPECIFIED:Lorg/ejml/data/MatrixType;

    return-object v0
.end method

.method public print()V
    .locals 2

    .line 186
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v1, 0xb

    invoke-static {v0, p0, v1}, Lorg/ejml/ops/MatrixIO;->printFancy(Ljava/io/PrintStream;Lorg/ejml/data/DMatrix;I)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1

    .line 191
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, p0, p1}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/DMatrix;Ljava/lang/String;)V

    return-void
.end method

.method public set(DDDDDD)V
    .locals 0

    .line 66
    iput-wide p1, p0, Lorg/ejml/data/DMatrix6;->a1:D

    .line 67
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6;->a2:D

    .line 68
    iput-wide p5, p0, Lorg/ejml/data/DMatrix6;->a3:D

    .line 69
    iput-wide p7, p0, Lorg/ejml/data/DMatrix6;->a4:D

    .line 70
    iput-wide p9, p0, Lorg/ejml/data/DMatrix6;->a5:D

    .line 71
    iput-wide p11, p0, Lorg/ejml/data/DMatrix6;->a6:D

    return-void
.end method

.method public set(IID)V
    .locals 0

    .line 114
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/data/DMatrix6;->unsafe_set(IID)V

    return-void
.end method

.method public set(I[D)V
    .locals 2

    add-int/lit8 v0, p1, 0x0

    .line 75
    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    add-int/lit8 v0, p1, 0x1

    .line 76
    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a2:D

    add-int/lit8 v0, p1, 0x2

    .line 77
    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a3:D

    add-int/lit8 v0, p1, 0x3

    .line 78
    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a4:D

    add-int/lit8 v0, p1, 0x4

    .line 79
    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a5:D

    add-int/lit8 p1, p1, 0x5

    .line 80
    aget-wide p1, p2, p1

    iput-wide p1, p0, Lorg/ejml/data/DMatrix6;->a6:D

    return-void
.end method

.method public set(Lorg/ejml/data/Matrix;)V
    .locals 10

    .line 143
    check-cast p1, Lorg/ejml/data/DMatrix;

    .line 145
    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_0

    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 146
    invoke-interface {p1, v6, v6}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v8

    iput-wide v8, p0, Lorg/ejml/data/DMatrix6;->a1:D

    .line 147
    invoke-interface {p1, v7, v6}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v7

    iput-wide v7, p0, Lorg/ejml/data/DMatrix6;->a2:D

    .line 148
    invoke-interface {p1, v4, v6}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/ejml/data/DMatrix6;->a3:D

    .line 149
    invoke-interface {p1, v3, v6}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v3

    iput-wide v3, p0, Lorg/ejml/data/DMatrix6;->a4:D

    .line 150
    invoke-interface {p1, v2, v6}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6;->a5:D

    .line 151
    invoke-interface {p1, v1, v6}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a6:D

    goto :goto_0

    .line 152
    :cond_0
    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v0

    if-ne v0, v7, :cond_1

    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 153
    invoke-interface {p1, v6, v6}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v8

    iput-wide v8, p0, Lorg/ejml/data/DMatrix6;->a1:D

    .line 154
    invoke-interface {p1, v6, v7}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v7

    iput-wide v7, p0, Lorg/ejml/data/DMatrix6;->a2:D

    .line 155
    invoke-interface {p1, v6, v4}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/ejml/data/DMatrix6;->a3:D

    .line 156
    invoke-interface {p1, v6, v3}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v3

    iput-wide v3, p0, Lorg/ejml/data/DMatrix6;->a4:D

    .line 157
    invoke-interface {p1, v6, v2}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6;->a5:D

    .line 158
    invoke-interface {p1, v6, v1}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a6:D

    :goto_0
    return-void

    .line 160
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

    .line 91
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Row or column must be zero since this is a vector"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-nez p1, :cond_2

    .line 96
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6;->a1:D

    return-wide p1

    :cond_2
    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 98
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6;->a2:D

    return-wide p1

    :cond_3
    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    .line 100
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6;->a3:D

    return-wide p1

    :cond_4
    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    .line 102
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6;->a4:D

    return-wide p1

    :cond_5
    const/4 p2, 0x4

    if-ne p1, p2, :cond_6

    .line 104
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6;->a5:D

    return-wide p1

    :cond_6
    const/4 p2, 0x5

    if-ne p1, p2, :cond_7

    .line 106
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6;->a6:D

    return-wide p1

    .line 108
    :cond_7
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

    .line 120
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p2, 0x0

    sget-object p2, Lcom/brakefield/infinitestudio/utils/ifg/GJoEneiVdp;->fvlGxAxIAjtV:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-nez p1, :cond_2

    .line 125
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6;->a1:D

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 127
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6;->a2:D

    goto :goto_1

    :cond_3
    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    .line 129
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6;->a3:D

    goto :goto_1

    :cond_4
    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    .line 131
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6;->a4:D

    goto :goto_1

    :cond_5
    const/4 p2, 0x4

    if-ne p1, p2, :cond_6

    .line 133
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6;->a5:D

    goto :goto_1

    :cond_6
    const/4 p2, 0x5

    if-ne p1, p2, :cond_7

    .line 135
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6;->a6:D

    :goto_1
    return-void

    .line 137
    :cond_7
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

    .line 56
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    .line 57
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a2:D

    .line 58
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a3:D

    .line 59
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a4:D

    .line 60
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a5:D

    .line 61
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a6:D

    return-void
.end method
