.class public Lorg/ejml/data/DMatrix5x5;
.super Ljava/lang/Object;
.source "DMatrix5x5.java"

# interfaces
.implements Lorg/ejml/data/DMatrixFixed;


# instance fields
.field public a11:D

.field public a12:D

.field public a13:D

.field public a14:D

.field public a15:D

.field public a21:D

.field public a22:D

.field public a23:D

.field public a24:D

.field public a25:D

.field public a31:D

.field public a32:D

.field public a33:D

.field public a34:D

.field public a35:D

.field public a41:D

.field public a42:D

.field public a43:D

.field public a44:D

.field public a45:D

.field public a51:D

.field public a52:D

.field public a53:D

.field public a54:D

.field public a55:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDDDDDDDDDDDDDDDDDDDDDDD)V
    .locals 3

    move-object v0, p0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 49
    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a11:D

    move-wide v1, p3

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a12:D

    move-wide v1, p5

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a13:D

    move-wide v1, p7

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a14:D

    move-wide v1, p9

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a15:D

    move-wide v1, p11

    .line 50
    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a21:D

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a22:D

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a23:D

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a24:D

    move-wide/from16 v1, p19

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a25:D

    move-wide/from16 v1, p21

    .line 51
    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a31:D

    move-wide/from16 v1, p23

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a32:D

    move-wide/from16 v1, p25

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a33:D

    move-wide/from16 v1, p27

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a34:D

    move-wide/from16 v1, p29

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a35:D

    move-wide/from16 v1, p31

    .line 52
    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a41:D

    move-wide/from16 v1, p33

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a42:D

    move-wide/from16 v1, p35

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a43:D

    move-wide/from16 v1, p37

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a44:D

    move-wide/from16 v1, p39

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a45:D

    move-wide/from16 v1, p41

    .line 53
    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a51:D

    move-wide/from16 v1, p43

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a52:D

    move-wide/from16 v1, p45

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a53:D

    move-wide/from16 v1, p47

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a54:D

    move-wide/from16 v1, p49

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public constructor <init>(Lorg/ejml/data/DMatrix5x5;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iget-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 58
    iget-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 59
    iget-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 60
    iget-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 61
    iget-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

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

    .line 286
    new-instance v0, Lorg/ejml/data/DMatrix5x5;

    invoke-direct {v0, p0}, Lorg/ejml/data/DMatrix5x5;-><init>(Lorg/ejml/data/DMatrix5x5;)V

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

    .line 301
    new-instance v0, Lorg/ejml/data/DMatrix5x5;

    invoke-direct {v0}, Lorg/ejml/data/DMatrix5x5;-><init>()V

    return-object v0
.end method

.method public get(II)D
    .locals 0

    .line 96
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/DMatrix5x5;->unsafe_get(II)D

    move-result-wide p1

    return-wide p1
.end method

.method public getNumCols()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getNumElements()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method

.method public getNumRows()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getType()Lorg/ejml/data/MatrixType;
    .locals 1

    .line 306
    sget-object v0, Lorg/ejml/data/MatrixType;->UNSPECIFIED:Lorg/ejml/data/MatrixType;

    return-object v0
.end method

.method public print()V
    .locals 2

    .line 291
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v1, 0xb

    invoke-static {v0, p0, v1}, Lorg/ejml/ops/MatrixIO;->printFancy(Ljava/io/PrintStream;Lorg/ejml/data/DMatrix;I)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1

    .line 296
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, p0, p1}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/DMatrix;Ljava/lang/String;)V

    return-void
.end method

.method public set(DDDDDDDDDDDDDDDDDDDDDDDDD)V
    .locals 3

    move-object v0, p0

    move-wide v1, p1

    .line 79
    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a11:D

    move-wide v1, p3

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a12:D

    move-wide v1, p5

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a13:D

    move-wide v1, p7

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a14:D

    move-wide v1, p9

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a15:D

    move-wide v1, p11

    .line 80
    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a21:D

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a22:D

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a23:D

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a24:D

    move-wide/from16 v1, p19

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a25:D

    move-wide/from16 v1, p21

    .line 81
    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a31:D

    move-wide/from16 v1, p23

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a32:D

    move-wide/from16 v1, p25

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a33:D

    move-wide/from16 v1, p27

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a34:D

    move-wide/from16 v1, p29

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a35:D

    move-wide/from16 v1, p31

    .line 82
    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a41:D

    move-wide/from16 v1, p33

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a42:D

    move-wide/from16 v1, p35

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a43:D

    move-wide/from16 v1, p37

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a44:D

    move-wide/from16 v1, p39

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a45:D

    move-wide/from16 v1, p41

    .line 83
    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a51:D

    move-wide/from16 v1, p43

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a52:D

    move-wide/from16 v1, p45

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a53:D

    move-wide/from16 v1, p47

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a54:D

    move-wide/from16 v1, p49

    iput-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public set(IID)V
    .locals 0

    .line 167
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/data/DMatrix5x5;->unsafe_set(IID)V

    return-void
.end method

.method public set(I[D)V
    .locals 2

    add-int/lit8 v0, p1, 0x0

    .line 87
    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    add-int/lit8 v0, p1, 0x1

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    add-int/lit8 v0, p1, 0x2

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    add-int/lit8 v0, p1, 0x3

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    add-int/lit8 v0, p1, 0x4

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    add-int/lit8 v0, p1, 0x5

    .line 88
    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    add-int/lit8 v0, p1, 0x6

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    add-int/lit8 v0, p1, 0x7

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    add-int/lit8 v0, p1, 0x8

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    add-int/lit8 v0, p1, 0x9

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    add-int/lit8 v0, p1, 0xa

    .line 89
    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    add-int/lit8 v0, p1, 0xb

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    add-int/lit8 v0, p1, 0xc

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    add-int/lit8 v0, p1, 0xd

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    add-int/lit8 v0, p1, 0xe

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    add-int/lit8 v0, p1, 0xf

    .line 90
    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    add-int/lit8 v0, p1, 0x10

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    add-int/lit8 v0, p1, 0x11

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    add-int/lit8 v0, p1, 0x12

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    add-int/lit8 v0, p1, 0x13

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    add-int/lit8 v0, p1, 0x14

    .line 91
    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    add-int/lit8 v0, p1, 0x15

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    add-int/lit8 v0, p1, 0x16

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    add-int/lit8 v0, p1, 0x17

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    add-int/lit8 p1, p1, 0x18

    aget-wide p1, p2, p1

    iput-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public set(Lorg/ejml/data/Matrix;)V
    .locals 7

    .line 238
    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 240
    check-cast p1, Lorg/ejml/data/DMatrix;

    const/4 v0, 0x0

    .line 242
    invoke-interface {p1, v0, v0}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v1

    iput-wide v1, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    const/4 v1, 0x1

    .line 243
    invoke-interface {p1, v0, v1}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    const/4 v2, 0x2

    .line 244
    invoke-interface {p1, v0, v2}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v3

    iput-wide v3, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    const/4 v3, 0x3

    .line 245
    invoke-interface {p1, v0, v3}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    const/4 v4, 0x4

    .line 246
    invoke-interface {p1, v0, v4}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v5

    iput-wide v5, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 247
    invoke-interface {p1, v1, v0}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v5

    iput-wide v5, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    .line 248
    invoke-interface {p1, v1, v1}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v5

    iput-wide v5, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    .line 249
    invoke-interface {p1, v1, v2}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v5

    iput-wide v5, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    .line 250
    invoke-interface {p1, v1, v3}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v5

    iput-wide v5, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    .line 251
    invoke-interface {p1, v1, v4}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v5

    iput-wide v5, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 252
    invoke-interface {p1, v2, v0}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v5

    iput-wide v5, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    .line 253
    invoke-interface {p1, v2, v1}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v5

    iput-wide v5, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    .line 254
    invoke-interface {p1, v2, v2}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v5

    iput-wide v5, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    .line 255
    invoke-interface {p1, v2, v3}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v5

    iput-wide v5, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    .line 256
    invoke-interface {p1, v2, v4}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v5

    iput-wide v5, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 257
    invoke-interface {p1, v3, v0}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v5

    iput-wide v5, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    .line 258
    invoke-interface {p1, v3, v1}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v5

    iput-wide v5, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    .line 259
    invoke-interface {p1, v3, v2}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v5

    iput-wide v5, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    .line 260
    invoke-interface {p1, v3, v3}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v5

    iput-wide v5, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    .line 261
    invoke-interface {p1, v3, v4}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v5

    iput-wide v5, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 262
    invoke-interface {p1, v4, v0}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v5

    iput-wide v5, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    .line 263
    invoke-interface {p1, v4, v1}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    .line 264
    invoke-interface {p1, v4, v2}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    .line 265
    invoke-interface {p1, v4, v3}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    .line 266
    invoke-interface {p1, v4, v4}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void

    .line 239
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Rows and/or columns do not match"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unsafe_get(II)D
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez p1, :cond_4

    if-nez p2, :cond_0

    .line 103
    iget-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    return-wide p1

    :cond_0
    if-ne p2, v3, :cond_1

    .line 105
    iget-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    return-wide p1

    :cond_1
    if-ne p2, v2, :cond_2

    .line 107
    iget-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    return-wide p1

    :cond_2
    if-ne p2, v1, :cond_3

    .line 109
    iget-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    return-wide p1

    :cond_3
    if-ne p2, v0, :cond_18

    .line 111
    iget-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    return-wide p1

    :cond_4
    if-ne p1, v3, :cond_9

    if-nez p2, :cond_5

    .line 115
    iget-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    return-wide p1

    :cond_5
    if-ne p2, v3, :cond_6

    .line 117
    iget-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    return-wide p1

    :cond_6
    if-ne p2, v2, :cond_7

    .line 119
    iget-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    return-wide p1

    :cond_7
    if-ne p2, v1, :cond_8

    .line 121
    iget-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    return-wide p1

    :cond_8
    if-ne p2, v0, :cond_18

    .line 123
    iget-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    return-wide p1

    :cond_9
    if-ne p1, v2, :cond_e

    if-nez p2, :cond_a

    .line 127
    iget-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    return-wide p1

    :cond_a
    if-ne p2, v3, :cond_b

    .line 129
    iget-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    return-wide p1

    :cond_b
    if-ne p2, v2, :cond_c

    .line 131
    iget-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    return-wide p1

    :cond_c
    if-ne p2, v1, :cond_d

    .line 133
    iget-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    return-wide p1

    :cond_d
    if-ne p2, v0, :cond_18

    .line 135
    iget-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    return-wide p1

    :cond_e
    if-ne p1, v1, :cond_13

    if-nez p2, :cond_f

    .line 139
    iget-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    return-wide p1

    :cond_f
    if-ne p2, v3, :cond_10

    .line 141
    iget-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    return-wide p1

    :cond_10
    if-ne p2, v2, :cond_11

    .line 143
    iget-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    return-wide p1

    :cond_11
    if-ne p2, v1, :cond_12

    .line 145
    iget-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    return-wide p1

    :cond_12
    if-ne p2, v0, :cond_18

    .line 147
    iget-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    return-wide p1

    :cond_13
    if-ne p1, v0, :cond_18

    if-nez p2, :cond_14

    .line 151
    iget-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    return-wide p1

    :cond_14
    if-ne p2, v3, :cond_15

    .line 153
    iget-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    return-wide p1

    :cond_15
    if-ne p2, v2, :cond_16

    .line 155
    iget-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    return-wide p1

    :cond_16
    if-ne p2, v1, :cond_17

    .line 157
    iget-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    return-wide p1

    :cond_17
    if-ne p2, v0, :cond_18

    .line 159
    iget-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-wide p1

    .line 162
    :cond_18
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
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez p1, :cond_4

    if-nez p2, :cond_0

    .line 174
    iput-wide p3, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    return-void

    :cond_0
    if-ne p2, v3, :cond_1

    .line 176
    iput-wide p3, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    return-void

    :cond_1
    if-ne p2, v2, :cond_2

    .line 178
    iput-wide p3, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    return-void

    :cond_2
    if-ne p2, v1, :cond_3

    .line 180
    iput-wide p3, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    return-void

    :cond_3
    if-ne p2, v0, :cond_18

    .line 182
    iput-wide p3, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    return-void

    :cond_4
    if-ne p1, v3, :cond_9

    if-nez p2, :cond_5

    .line 186
    iput-wide p3, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    return-void

    :cond_5
    if-ne p2, v3, :cond_6

    .line 188
    iput-wide p3, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    return-void

    :cond_6
    if-ne p2, v2, :cond_7

    .line 190
    iput-wide p3, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    return-void

    :cond_7
    if-ne p2, v1, :cond_8

    .line 192
    iput-wide p3, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    return-void

    :cond_8
    if-ne p2, v0, :cond_18

    .line 194
    iput-wide p3, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    return-void

    :cond_9
    if-ne p1, v2, :cond_e

    if-nez p2, :cond_a

    .line 198
    iput-wide p3, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    return-void

    :cond_a
    if-ne p2, v3, :cond_b

    .line 200
    iput-wide p3, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    return-void

    :cond_b
    if-ne p2, v2, :cond_c

    .line 202
    iput-wide p3, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    return-void

    :cond_c
    if-ne p2, v1, :cond_d

    .line 204
    iput-wide p3, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    return-void

    :cond_d
    if-ne p2, v0, :cond_18

    .line 206
    iput-wide p3, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    return-void

    :cond_e
    if-ne p1, v1, :cond_13

    if-nez p2, :cond_f

    .line 210
    iput-wide p3, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    return-void

    :cond_f
    if-ne p2, v3, :cond_10

    .line 212
    iput-wide p3, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    return-void

    :cond_10
    if-ne p2, v2, :cond_11

    .line 214
    iput-wide p3, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    return-void

    :cond_11
    if-ne p2, v1, :cond_12

    .line 216
    iput-wide p3, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    return-void

    :cond_12
    if-ne p2, v0, :cond_18

    .line 218
    iput-wide p3, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    return-void

    :cond_13
    if-ne p1, v0, :cond_18

    if-nez p2, :cond_14

    .line 222
    iput-wide p3, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    return-void

    :cond_14
    if-ne p2, v3, :cond_15

    .line 224
    iput-wide p3, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    return-void

    :cond_15
    if-ne p2, v2, :cond_16

    .line 226
    iput-wide p3, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    return-void

    :cond_16
    if-ne p2, v1, :cond_17

    .line 228
    iput-wide p3, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    return-void

    :cond_17
    if-ne p2, v0, :cond_18

    .line 230
    iput-wide p3, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void

    .line 233
    :cond_18
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

    .line 66
    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 67
    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 68
    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 69
    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 70
    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method
