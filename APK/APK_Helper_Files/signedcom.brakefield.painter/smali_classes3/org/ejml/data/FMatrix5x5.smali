.class public Lorg/ejml/data/FMatrix5x5;
.super Ljava/lang/Object;
.source "FMatrix5x5.java"

# interfaces
.implements Lorg/ejml/data/FMatrixFixed;


# instance fields
.field public a11:F

.field public a12:F

.field public a13:F

.field public a14:F

.field public a15:F

.field public a21:F

.field public a22:F

.field public a23:F

.field public a24:F

.field public a25:F

.field public a31:F

.field public a32:F

.field public a33:F

.field public a34:F

.field public a35:F

.field public a41:F

.field public a42:F

.field public a43:F

.field public a44:F

.field public a45:F

.field public a51:F

.field public a52:F

.field public a53:F

.field public a54:F

.field public a55:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFFFFFFFFFFFFFFFFFFFFFFF)V
    .locals 2

    move-object v0, p0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 49
    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a11:F

    move v1, p2

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a12:F

    move v1, p3

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a13:F

    move v1, p4

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a14:F

    move v1, p5

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a15:F

    move v1, p6

    .line 50
    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a21:F

    move v1, p7

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a22:F

    move v1, p8

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a23:F

    move v1, p9

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a24:F

    move v1, p10

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a25:F

    move v1, p11

    .line 51
    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a31:F

    move v1, p12

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a32:F

    move v1, p13

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a33:F

    move/from16 v1, p14

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a34:F

    move/from16 v1, p15

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a35:F

    move/from16 v1, p16

    .line 52
    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a41:F

    move/from16 v1, p17

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a42:F

    move/from16 v1, p18

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a43:F

    move/from16 v1, p19

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a44:F

    move/from16 v1, p20

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a45:F

    move/from16 v1, p21

    .line 53
    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a51:F

    move/from16 v1, p22

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a52:F

    move/from16 v1, p23

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a53:F

    move/from16 v1, p24

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a54:F

    move/from16 v1, p25

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a55:F

    return-void
.end method

.method public constructor <init>(Lorg/ejml/data/FMatrix5x5;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iget v0, p1, Lorg/ejml/data/FMatrix5x5;->a11:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a11:F

    iget v0, p1, Lorg/ejml/data/FMatrix5x5;->a12:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a12:F

    iget v0, p1, Lorg/ejml/data/FMatrix5x5;->a13:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a13:F

    iget v0, p1, Lorg/ejml/data/FMatrix5x5;->a14:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a14:F

    iget v0, p1, Lorg/ejml/data/FMatrix5x5;->a15:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a15:F

    .line 58
    iget v0, p1, Lorg/ejml/data/FMatrix5x5;->a21:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a21:F

    iget v0, p1, Lorg/ejml/data/FMatrix5x5;->a22:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a22:F

    iget v0, p1, Lorg/ejml/data/FMatrix5x5;->a23:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a23:F

    iget v0, p1, Lorg/ejml/data/FMatrix5x5;->a24:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a24:F

    iget v0, p1, Lorg/ejml/data/FMatrix5x5;->a25:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a25:F

    .line 59
    iget v0, p1, Lorg/ejml/data/FMatrix5x5;->a31:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a31:F

    iget v0, p1, Lorg/ejml/data/FMatrix5x5;->a32:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a32:F

    iget v0, p1, Lorg/ejml/data/FMatrix5x5;->a33:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a33:F

    iget v0, p1, Lorg/ejml/data/FMatrix5x5;->a34:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a34:F

    iget v0, p1, Lorg/ejml/data/FMatrix5x5;->a35:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a35:F

    .line 60
    iget v0, p1, Lorg/ejml/data/FMatrix5x5;->a41:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a41:F

    iget v0, p1, Lorg/ejml/data/FMatrix5x5;->a42:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a42:F

    iget v0, p1, Lorg/ejml/data/FMatrix5x5;->a43:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a43:F

    iget v0, p1, Lorg/ejml/data/FMatrix5x5;->a44:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a44:F

    iget v0, p1, Lorg/ejml/data/FMatrix5x5;->a45:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a45:F

    .line 61
    iget v0, p1, Lorg/ejml/data/FMatrix5x5;->a51:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a51:F

    iget v0, p1, Lorg/ejml/data/FMatrix5x5;->a52:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a52:F

    iget v0, p1, Lorg/ejml/data/FMatrix5x5;->a53:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a53:F

    iget v0, p1, Lorg/ejml/data/FMatrix5x5;->a54:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a54:F

    iget p1, p1, Lorg/ejml/data/FMatrix5x5;->a55:F

    iput p1, p0, Lorg/ejml/data/FMatrix5x5;->a55:F

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
    new-instance v0, Lorg/ejml/data/FMatrix5x5;

    invoke-direct {v0, p0}, Lorg/ejml/data/FMatrix5x5;-><init>(Lorg/ejml/data/FMatrix5x5;)V

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
    new-instance v0, Lorg/ejml/data/FMatrix5x5;

    invoke-direct {v0}, Lorg/ejml/data/FMatrix5x5;-><init>()V

    return-object v0
.end method

.method public get(II)F
    .locals 0

    .line 96
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/FMatrix5x5;->unsafe_get(II)F

    move-result p1

    return p1
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

    invoke-static {v0, p0, v1}, Lorg/ejml/ops/MatrixIO;->printFancy(Ljava/io/PrintStream;Lorg/ejml/data/FMatrix;I)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1

    .line 296
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, p0, p1}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/FMatrix;Ljava/lang/String;)V

    return-void
.end method

.method public set(FFFFFFFFFFFFFFFFFFFFFFFFF)V
    .locals 2

    move-object v0, p0

    move v1, p1

    .line 79
    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a11:F

    move v1, p2

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a12:F

    move v1, p3

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a13:F

    move v1, p4

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a14:F

    move v1, p5

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a15:F

    move v1, p6

    .line 80
    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a21:F

    move v1, p7

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a22:F

    move v1, p8

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a23:F

    move v1, p9

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a24:F

    move v1, p10

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a25:F

    move v1, p11

    .line 81
    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a31:F

    move v1, p12

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a32:F

    move v1, p13

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a33:F

    move/from16 v1, p14

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a34:F

    move/from16 v1, p15

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a35:F

    move/from16 v1, p16

    .line 82
    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a41:F

    move/from16 v1, p17

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a42:F

    move/from16 v1, p18

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a43:F

    move/from16 v1, p19

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a44:F

    move/from16 v1, p20

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a45:F

    move/from16 v1, p21

    .line 83
    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a51:F

    move/from16 v1, p22

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a52:F

    move/from16 v1, p23

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a53:F

    move/from16 v1, p24

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a54:F

    move/from16 v1, p25

    iput v1, v0, Lorg/ejml/data/FMatrix5x5;->a55:F

    return-void
.end method

.method public set(IIF)V
    .locals 0

    .line 167
    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/data/FMatrix5x5;->unsafe_set(IIF)V

    return-void
.end method

.method public set(I[F)V
    .locals 1

    add-int/lit8 v0, p1, 0x0

    .line 87
    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a11:F

    add-int/lit8 v0, p1, 0x1

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a12:F

    add-int/lit8 v0, p1, 0x2

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a13:F

    add-int/lit8 v0, p1, 0x3

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a14:F

    add-int/lit8 v0, p1, 0x4

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a15:F

    add-int/lit8 v0, p1, 0x5

    .line 88
    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a21:F

    add-int/lit8 v0, p1, 0x6

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a22:F

    add-int/lit8 v0, p1, 0x7

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a23:F

    add-int/lit8 v0, p1, 0x8

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a24:F

    add-int/lit8 v0, p1, 0x9

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a25:F

    add-int/lit8 v0, p1, 0xa

    .line 89
    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a31:F

    add-int/lit8 v0, p1, 0xb

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a32:F

    add-int/lit8 v0, p1, 0xc

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a33:F

    add-int/lit8 v0, p1, 0xd

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a34:F

    add-int/lit8 v0, p1, 0xe

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a35:F

    add-int/lit8 v0, p1, 0xf

    .line 90
    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a41:F

    add-int/lit8 v0, p1, 0x10

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a42:F

    add-int/lit8 v0, p1, 0x11

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a43:F

    add-int/lit8 v0, p1, 0x12

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a44:F

    add-int/lit8 v0, p1, 0x13

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a45:F

    add-int/lit8 v0, p1, 0x14

    .line 91
    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a51:F

    add-int/lit8 v0, p1, 0x15

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a52:F

    add-int/lit8 v0, p1, 0x16

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a53:F

    add-int/lit8 v0, p1, 0x17

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a54:F

    add-int/lit8 p1, p1, 0x18

    aget p1, p2, p1

    iput p1, p0, Lorg/ejml/data/FMatrix5x5;->a55:F

    return-void
.end method

.method public set(Lorg/ejml/data/Matrix;)V
    .locals 6

    .line 238
    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 240
    check-cast p1, Lorg/ejml/data/FMatrix;

    const/4 v0, 0x0

    .line 242
    invoke-interface {p1, v0, v0}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v1

    iput v1, p0, Lorg/ejml/data/FMatrix5x5;->a11:F

    const/4 v1, 0x1

    .line 243
    invoke-interface {p1, v0, v1}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v2

    iput v2, p0, Lorg/ejml/data/FMatrix5x5;->a12:F

    const/4 v2, 0x2

    .line 244
    invoke-interface {p1, v0, v2}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v3

    iput v3, p0, Lorg/ejml/data/FMatrix5x5;->a13:F

    const/4 v3, 0x3

    .line 245
    invoke-interface {p1, v0, v3}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v4

    iput v4, p0, Lorg/ejml/data/FMatrix5x5;->a14:F

    const/4 v4, 0x4

    .line 246
    invoke-interface {p1, v0, v4}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v5

    iput v5, p0, Lorg/ejml/data/FMatrix5x5;->a15:F

    .line 247
    invoke-interface {p1, v1, v0}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v5

    iput v5, p0, Lorg/ejml/data/FMatrix5x5;->a21:F

    .line 248
    invoke-interface {p1, v1, v1}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v5

    iput v5, p0, Lorg/ejml/data/FMatrix5x5;->a22:F

    .line 249
    invoke-interface {p1, v1, v2}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v5

    iput v5, p0, Lorg/ejml/data/FMatrix5x5;->a23:F

    .line 250
    invoke-interface {p1, v1, v3}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v5

    iput v5, p0, Lorg/ejml/data/FMatrix5x5;->a24:F

    .line 251
    invoke-interface {p1, v1, v4}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v5

    iput v5, p0, Lorg/ejml/data/FMatrix5x5;->a25:F

    .line 252
    invoke-interface {p1, v2, v0}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v5

    iput v5, p0, Lorg/ejml/data/FMatrix5x5;->a31:F

    .line 253
    invoke-interface {p1, v2, v1}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v5

    iput v5, p0, Lorg/ejml/data/FMatrix5x5;->a32:F

    .line 254
    invoke-interface {p1, v2, v2}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v5

    iput v5, p0, Lorg/ejml/data/FMatrix5x5;->a33:F

    .line 255
    invoke-interface {p1, v2, v3}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v5

    iput v5, p0, Lorg/ejml/data/FMatrix5x5;->a34:F

    .line 256
    invoke-interface {p1, v2, v4}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v5

    iput v5, p0, Lorg/ejml/data/FMatrix5x5;->a35:F

    .line 257
    invoke-interface {p1, v3, v0}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v5

    iput v5, p0, Lorg/ejml/data/FMatrix5x5;->a41:F

    .line 258
    invoke-interface {p1, v3, v1}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v5

    iput v5, p0, Lorg/ejml/data/FMatrix5x5;->a42:F

    .line 259
    invoke-interface {p1, v3, v2}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v5

    iput v5, p0, Lorg/ejml/data/FMatrix5x5;->a43:F

    .line 260
    invoke-interface {p1, v3, v3}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v5

    iput v5, p0, Lorg/ejml/data/FMatrix5x5;->a44:F

    .line 261
    invoke-interface {p1, v3, v4}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v5

    iput v5, p0, Lorg/ejml/data/FMatrix5x5;->a45:F

    .line 262
    invoke-interface {p1, v4, v0}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v0

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a51:F

    .line 263
    invoke-interface {p1, v4, v1}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v0

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a52:F

    .line 264
    invoke-interface {p1, v4, v2}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v0

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a53:F

    .line 265
    invoke-interface {p1, v4, v3}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v0

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a54:F

    .line 266
    invoke-interface {p1, v4, v4}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result p1

    iput p1, p0, Lorg/ejml/data/FMatrix5x5;->a55:F

    return-void

    .line 239
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Rows and/or columns do not match"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unsafe_get(II)F
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez p1, :cond_4

    if-nez p2, :cond_0

    .line 103
    iget p1, p0, Lorg/ejml/data/FMatrix5x5;->a11:F

    return p1

    :cond_0
    if-ne p2, v3, :cond_1

    .line 105
    iget p1, p0, Lorg/ejml/data/FMatrix5x5;->a12:F

    return p1

    :cond_1
    if-ne p2, v2, :cond_2

    .line 107
    iget p1, p0, Lorg/ejml/data/FMatrix5x5;->a13:F

    return p1

    :cond_2
    if-ne p2, v1, :cond_3

    .line 109
    iget p1, p0, Lorg/ejml/data/FMatrix5x5;->a14:F

    return p1

    :cond_3
    if-ne p2, v0, :cond_18

    .line 111
    iget p1, p0, Lorg/ejml/data/FMatrix5x5;->a15:F

    return p1

    :cond_4
    if-ne p1, v3, :cond_9

    if-nez p2, :cond_5

    .line 115
    iget p1, p0, Lorg/ejml/data/FMatrix5x5;->a21:F

    return p1

    :cond_5
    if-ne p2, v3, :cond_6

    .line 117
    iget p1, p0, Lorg/ejml/data/FMatrix5x5;->a22:F

    return p1

    :cond_6
    if-ne p2, v2, :cond_7

    .line 119
    iget p1, p0, Lorg/ejml/data/FMatrix5x5;->a23:F

    return p1

    :cond_7
    if-ne p2, v1, :cond_8

    .line 121
    iget p1, p0, Lorg/ejml/data/FMatrix5x5;->a24:F

    return p1

    :cond_8
    if-ne p2, v0, :cond_18

    .line 123
    iget p1, p0, Lorg/ejml/data/FMatrix5x5;->a25:F

    return p1

    :cond_9
    if-ne p1, v2, :cond_e

    if-nez p2, :cond_a

    .line 127
    iget p1, p0, Lorg/ejml/data/FMatrix5x5;->a31:F

    return p1

    :cond_a
    if-ne p2, v3, :cond_b

    .line 129
    iget p1, p0, Lorg/ejml/data/FMatrix5x5;->a32:F

    return p1

    :cond_b
    if-ne p2, v2, :cond_c

    .line 131
    iget p1, p0, Lorg/ejml/data/FMatrix5x5;->a33:F

    return p1

    :cond_c
    if-ne p2, v1, :cond_d

    .line 133
    iget p1, p0, Lorg/ejml/data/FMatrix5x5;->a34:F

    return p1

    :cond_d
    if-ne p2, v0, :cond_18

    .line 135
    iget p1, p0, Lorg/ejml/data/FMatrix5x5;->a35:F

    return p1

    :cond_e
    if-ne p1, v1, :cond_13

    if-nez p2, :cond_f

    .line 139
    iget p1, p0, Lorg/ejml/data/FMatrix5x5;->a41:F

    return p1

    :cond_f
    if-ne p2, v3, :cond_10

    .line 141
    iget p1, p0, Lorg/ejml/data/FMatrix5x5;->a42:F

    return p1

    :cond_10
    if-ne p2, v2, :cond_11

    .line 143
    iget p1, p0, Lorg/ejml/data/FMatrix5x5;->a43:F

    return p1

    :cond_11
    if-ne p2, v1, :cond_12

    .line 145
    iget p1, p0, Lorg/ejml/data/FMatrix5x5;->a44:F

    return p1

    :cond_12
    if-ne p2, v0, :cond_18

    .line 147
    iget p1, p0, Lorg/ejml/data/FMatrix5x5;->a45:F

    return p1

    :cond_13
    if-ne p1, v0, :cond_18

    if-nez p2, :cond_14

    .line 151
    iget p1, p0, Lorg/ejml/data/FMatrix5x5;->a51:F

    return p1

    :cond_14
    if-ne p2, v3, :cond_15

    .line 153
    iget p1, p0, Lorg/ejml/data/FMatrix5x5;->a52:F

    return p1

    :cond_15
    if-ne p2, v2, :cond_16

    .line 155
    iget p1, p0, Lorg/ejml/data/FMatrix5x5;->a53:F

    return p1

    :cond_16
    if-ne p2, v1, :cond_17

    .line 157
    iget p1, p0, Lorg/ejml/data/FMatrix5x5;->a54:F

    return p1

    :cond_17
    if-ne p2, v0, :cond_18

    .line 159
    iget p1, p0, Lorg/ejml/data/FMatrix5x5;->a55:F

    return p1

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

.method public unsafe_set(IIF)V
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez p1, :cond_4

    if-nez p2, :cond_0

    .line 174
    iput p3, p0, Lorg/ejml/data/FMatrix5x5;->a11:F

    return-void

    :cond_0
    if-ne p2, v3, :cond_1

    .line 176
    iput p3, p0, Lorg/ejml/data/FMatrix5x5;->a12:F

    return-void

    :cond_1
    if-ne p2, v2, :cond_2

    .line 178
    iput p3, p0, Lorg/ejml/data/FMatrix5x5;->a13:F

    return-void

    :cond_2
    if-ne p2, v1, :cond_3

    .line 180
    iput p3, p0, Lorg/ejml/data/FMatrix5x5;->a14:F

    return-void

    :cond_3
    if-ne p2, v0, :cond_18

    .line 182
    iput p3, p0, Lorg/ejml/data/FMatrix5x5;->a15:F

    return-void

    :cond_4
    if-ne p1, v3, :cond_9

    if-nez p2, :cond_5

    .line 186
    iput p3, p0, Lorg/ejml/data/FMatrix5x5;->a21:F

    return-void

    :cond_5
    if-ne p2, v3, :cond_6

    .line 188
    iput p3, p0, Lorg/ejml/data/FMatrix5x5;->a22:F

    return-void

    :cond_6
    if-ne p2, v2, :cond_7

    .line 190
    iput p3, p0, Lorg/ejml/data/FMatrix5x5;->a23:F

    return-void

    :cond_7
    if-ne p2, v1, :cond_8

    .line 192
    iput p3, p0, Lorg/ejml/data/FMatrix5x5;->a24:F

    return-void

    :cond_8
    if-ne p2, v0, :cond_18

    .line 194
    iput p3, p0, Lorg/ejml/data/FMatrix5x5;->a25:F

    return-void

    :cond_9
    if-ne p1, v2, :cond_e

    if-nez p2, :cond_a

    .line 198
    iput p3, p0, Lorg/ejml/data/FMatrix5x5;->a31:F

    return-void

    :cond_a
    if-ne p2, v3, :cond_b

    .line 200
    iput p3, p0, Lorg/ejml/data/FMatrix5x5;->a32:F

    return-void

    :cond_b
    if-ne p2, v2, :cond_c

    .line 202
    iput p3, p0, Lorg/ejml/data/FMatrix5x5;->a33:F

    return-void

    :cond_c
    if-ne p2, v1, :cond_d

    .line 204
    iput p3, p0, Lorg/ejml/data/FMatrix5x5;->a34:F

    return-void

    :cond_d
    if-ne p2, v0, :cond_18

    .line 206
    iput p3, p0, Lorg/ejml/data/FMatrix5x5;->a35:F

    return-void

    :cond_e
    if-ne p1, v1, :cond_13

    if-nez p2, :cond_f

    .line 210
    iput p3, p0, Lorg/ejml/data/FMatrix5x5;->a41:F

    return-void

    :cond_f
    if-ne p2, v3, :cond_10

    .line 212
    iput p3, p0, Lorg/ejml/data/FMatrix5x5;->a42:F

    return-void

    :cond_10
    if-ne p2, v2, :cond_11

    .line 214
    iput p3, p0, Lorg/ejml/data/FMatrix5x5;->a43:F

    return-void

    :cond_11
    if-ne p2, v1, :cond_12

    .line 216
    iput p3, p0, Lorg/ejml/data/FMatrix5x5;->a44:F

    return-void

    :cond_12
    if-ne p2, v0, :cond_18

    .line 218
    iput p3, p0, Lorg/ejml/data/FMatrix5x5;->a45:F

    return-void

    :cond_13
    if-ne p1, v0, :cond_18

    if-nez p2, :cond_14

    .line 222
    iput p3, p0, Lorg/ejml/data/FMatrix5x5;->a51:F

    return-void

    :cond_14
    if-ne p2, v3, :cond_15

    .line 224
    iput p3, p0, Lorg/ejml/data/FMatrix5x5;->a52:F

    return-void

    :cond_15
    if-ne p2, v2, :cond_16

    .line 226
    iput p3, p0, Lorg/ejml/data/FMatrix5x5;->a53:F

    return-void

    :cond_16
    if-ne p2, v1, :cond_17

    .line 228
    iput p3, p0, Lorg/ejml/data/FMatrix5x5;->a54:F

    return-void

    :cond_17
    if-ne p2, v0, :cond_18

    .line 230
    iput p3, p0, Lorg/ejml/data/FMatrix5x5;->a55:F

    return-void

    .line 233
    :cond_18
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Row and/or column out of range. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public zero()V
    .locals 1

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a11:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a12:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a13:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a14:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a15:F

    .line 67
    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a21:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a22:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a23:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a24:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a25:F

    .line 68
    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a31:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a32:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a33:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a34:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a35:F

    .line 69
    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a41:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a42:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a43:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a44:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a45:F

    .line 70
    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a51:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a52:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a53:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a54:F

    iput v0, p0, Lorg/ejml/data/FMatrix5x5;->a55:F

    return-void
.end method
