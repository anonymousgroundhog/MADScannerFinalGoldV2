.class public Lorg/ejml/data/DMatrix4x4;
.super Ljava/lang/Object;
.source "DMatrix4x4.java"

# interfaces
.implements Lorg/ejml/data/DMatrixFixed;


# instance fields
.field public a11:D

.field public a12:D

.field public a13:D

.field public a14:D

.field public a21:D

.field public a22:D

.field public a23:D

.field public a24:D

.field public a31:D

.field public a32:D

.field public a33:D

.field public a34:D

.field public a41:D

.field public a42:D

.field public a43:D

.field public a44:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDDDDDDDDDDDDDD)V
    .locals 3

    move-object v0, p0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 47
    iput-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a11:D

    move-wide v1, p3

    iput-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a12:D

    move-wide v1, p5

    iput-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a13:D

    move-wide v1, p7

    iput-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a14:D

    move-wide v1, p9

    .line 48
    iput-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a21:D

    move-wide v1, p11

    iput-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a22:D

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a23:D

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a24:D

    move-wide/from16 v1, p17

    .line 49
    iput-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a31:D

    move-wide/from16 v1, p19

    iput-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a32:D

    move-wide/from16 v1, p21

    iput-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a33:D

    move-wide/from16 v1, p23

    iput-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a34:D

    move-wide/from16 v1, p25

    .line 50
    iput-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a41:D

    move-wide/from16 v1, p27

    iput-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a42:D

    move-wide/from16 v1, p29

    iput-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a43:D

    move-wide/from16 v1, p31

    iput-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public constructor <init>(Lorg/ejml/data/DMatrix4x4;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iget-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 55
    iget-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 56
    iget-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 57
    iget-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

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

    .line 229
    new-instance v0, Lorg/ejml/data/DMatrix4x4;

    invoke-direct {v0, p0}, Lorg/ejml/data/DMatrix4x4;-><init>(Lorg/ejml/data/DMatrix4x4;)V

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

    .line 244
    new-instance v0, Lorg/ejml/data/DMatrix4x4;

    invoke-direct {v0}, Lorg/ejml/data/DMatrix4x4;-><init>()V

    return-object v0
.end method

.method public get(II)D
    .locals 0

    .line 88
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/DMatrix4x4;->unsafe_get(II)D

    move-result-wide p1

    return-wide p1
.end method

.method public getNumCols()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getNumElements()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getNumRows()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getType()Lorg/ejml/data/MatrixType;
    .locals 1

    .line 249
    sget-object v0, Lorg/ejml/data/MatrixType;->UNSPECIFIED:Lorg/ejml/data/MatrixType;

    return-object v0
.end method

.method public print()V
    .locals 2

    .line 234
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v1, 0xb

    invoke-static {v0, p0, v1}, Lorg/ejml/ops/MatrixIO;->printFancy(Ljava/io/PrintStream;Lorg/ejml/data/DMatrix;I)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1

    .line 239
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, p0, p1}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/DMatrix;Ljava/lang/String;)V

    return-void
.end method

.method public set(DDDDDDDDDDDDDDDD)V
    .locals 3

    move-object v0, p0

    move-wide v1, p1

    .line 73
    iput-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a11:D

    move-wide v1, p3

    iput-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a12:D

    move-wide v1, p5

    iput-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a13:D

    move-wide v1, p7

    iput-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a14:D

    move-wide v1, p9

    .line 74
    iput-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a21:D

    move-wide v1, p11

    iput-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a22:D

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a23:D

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a24:D

    move-wide/from16 v1, p17

    .line 75
    iput-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a31:D

    move-wide/from16 v1, p19

    iput-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a32:D

    move-wide/from16 v1, p21

    iput-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a33:D

    move-wide/from16 v1, p23

    iput-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a34:D

    move-wide/from16 v1, p25

    .line 76
    iput-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a41:D

    move-wide/from16 v1, p27

    iput-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a42:D

    move-wide/from16 v1, p29

    iput-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a43:D

    move-wide/from16 v1, p31

    iput-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public set(IID)V
    .locals 0

    .line 139
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/data/DMatrix4x4;->unsafe_set(IID)V

    return-void
.end method

.method public set(I[D)V
    .locals 2

    add-int/lit8 v0, p1, 0x0

    .line 80
    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    add-int/lit8 v0, p1, 0x1

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    add-int/lit8 v0, p1, 0x2

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    add-int/lit8 v0, p1, 0x3

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    add-int/lit8 v0, p1, 0x4

    .line 81
    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    add-int/lit8 v0, p1, 0x5

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    add-int/lit8 v0, p1, 0x6

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    add-int/lit8 v0, p1, 0x7

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    add-int/lit8 v0, p1, 0x8

    .line 82
    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    add-int/lit8 v0, p1, 0x9

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    add-int/lit8 v0, p1, 0xa

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    add-int/lit8 v0, p1, 0xb

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    add-int/lit8 v0, p1, 0xc

    .line 83
    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    add-int/lit8 v0, p1, 0xd

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    add-int/lit8 v0, p1, 0xe

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    add-int/lit8 p1, p1, 0xf

    aget-wide p1, p2, p1

    iput-wide p1, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public set(Lorg/ejml/data/Matrix;)V
    .locals 6

    .line 190
    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 192
    check-cast p1, Lorg/ejml/data/DMatrix;

    const/4 v0, 0x0

    .line 194
    invoke-interface {p1, v0, v0}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v1

    iput-wide v1, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    const/4 v1, 0x1

    .line 195
    invoke-interface {p1, v0, v1}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    const/4 v2, 0x2

    .line 196
    invoke-interface {p1, v0, v2}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v3

    iput-wide v3, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    const/4 v3, 0x3

    .line 197
    invoke-interface {p1, v0, v3}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 198
    invoke-interface {p1, v1, v0}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    .line 199
    invoke-interface {p1, v1, v1}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    .line 200
    invoke-interface {p1, v1, v2}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    .line 201
    invoke-interface {p1, v1, v3}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 202
    invoke-interface {p1, v2, v0}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    .line 203
    invoke-interface {p1, v2, v1}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    .line 204
    invoke-interface {p1, v2, v2}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    .line 205
    invoke-interface {p1, v2, v3}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 206
    invoke-interface {p1, v3, v0}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    .line 207
    invoke-interface {p1, v3, v1}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    .line 208
    invoke-interface {p1, v3, v2}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    .line 209
    invoke-interface {p1, v3, v3}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void

    .line 191
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Rows and/or columns do not match"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unsafe_get(II)D
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_3

    if-nez p2, :cond_0

    .line 95
    iget-wide p1, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    return-wide p1

    :cond_0
    if-ne p2, v2, :cond_1

    .line 97
    iget-wide p1, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    return-wide p1

    :cond_1
    if-ne p2, v1, :cond_2

    .line 99
    iget-wide p1, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    return-wide p1

    :cond_2
    if-ne p2, v0, :cond_f

    .line 101
    iget-wide p1, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    return-wide p1

    :cond_3
    if-ne p1, v2, :cond_7

    if-nez p2, :cond_4

    .line 105
    iget-wide p1, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    return-wide p1

    :cond_4
    if-ne p2, v2, :cond_5

    .line 107
    iget-wide p1, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    return-wide p1

    :cond_5
    if-ne p2, v1, :cond_6

    .line 109
    iget-wide p1, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    return-wide p1

    :cond_6
    if-ne p2, v0, :cond_f

    .line 111
    iget-wide p1, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    return-wide p1

    :cond_7
    if-ne p1, v1, :cond_b

    if-nez p2, :cond_8

    .line 115
    iget-wide p1, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    return-wide p1

    :cond_8
    if-ne p2, v2, :cond_9

    .line 117
    iget-wide p1, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    return-wide p1

    :cond_9
    if-ne p2, v1, :cond_a

    .line 119
    iget-wide p1, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    return-wide p1

    :cond_a
    if-ne p2, v0, :cond_f

    .line 121
    iget-wide p1, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    return-wide p1

    :cond_b
    if-ne p1, v0, :cond_f

    if-nez p2, :cond_c

    .line 125
    iget-wide p1, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    return-wide p1

    :cond_c
    if-ne p2, v2, :cond_d

    .line 127
    iget-wide p1, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    return-wide p1

    :cond_d
    if-ne p2, v1, :cond_e

    .line 129
    iget-wide p1, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    return-wide p1

    :cond_e
    if-ne p2, v0, :cond_f

    .line 131
    iget-wide p1, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-wide p1

    .line 134
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Row and/or column out of range. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unsafe_set(IID)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_3

    if-nez p2, :cond_0

    .line 146
    iput-wide p3, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    return-void

    :cond_0
    if-ne p2, v2, :cond_1

    .line 148
    iput-wide p3, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    return-void

    :cond_1
    if-ne p2, v1, :cond_2

    .line 150
    iput-wide p3, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    return-void

    :cond_2
    if-ne p2, v0, :cond_f

    .line 152
    iput-wide p3, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    return-void

    :cond_3
    if-ne p1, v2, :cond_7

    if-nez p2, :cond_4

    .line 156
    iput-wide p3, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    return-void

    :cond_4
    if-ne p2, v2, :cond_5

    .line 158
    iput-wide p3, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    return-void

    :cond_5
    if-ne p2, v1, :cond_6

    .line 160
    iput-wide p3, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    return-void

    :cond_6
    if-ne p2, v0, :cond_f

    .line 162
    iput-wide p3, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    return-void

    :cond_7
    if-ne p1, v1, :cond_b

    if-nez p2, :cond_8

    .line 166
    iput-wide p3, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    return-void

    :cond_8
    if-ne p2, v2, :cond_9

    .line 168
    iput-wide p3, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    return-void

    :cond_9
    if-ne p2, v1, :cond_a

    .line 170
    iput-wide p3, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    return-void

    :cond_a
    if-ne p2, v0, :cond_f

    .line 172
    iput-wide p3, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    return-void

    :cond_b
    if-ne p1, v0, :cond_f

    if-nez p2, :cond_c

    .line 176
    iput-wide p3, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    return-void

    :cond_c
    if-ne p2, v2, :cond_d

    .line 178
    iput-wide p3, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    return-void

    :cond_d
    if-ne p2, v1, :cond_e

    .line 180
    iput-wide p3, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    return-void

    :cond_e
    if-ne p2, v0, :cond_f

    .line 182
    iput-wide p3, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void

    .line 185
    :cond_f
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Row and/or column out of range. "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, " "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public zero()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 62
    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 63
    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 64
    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 65
    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method
