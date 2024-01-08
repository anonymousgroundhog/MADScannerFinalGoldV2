.class public Lorg/ejml/data/FMatrix6x6;
.super Ljava/lang/Object;
.source "FMatrix6x6.java"

# interfaces
.implements Lorg/ejml/data/FMatrixFixed;


# instance fields
.field public a11:F

.field public a12:F

.field public a13:F

.field public a14:F

.field public a15:F

.field public a16:F

.field public a21:F

.field public a22:F

.field public a23:F

.field public a24:F

.field public a25:F

.field public a26:F

.field public a31:F

.field public a32:F

.field public a33:F

.field public a34:F

.field public a35:F

.field public a36:F

.field public a41:F

.field public a42:F

.field public a43:F

.field public a44:F

.field public a45:F

.field public a46:F

.field public a51:F

.field public a52:F

.field public a53:F

.field public a54:F

.field public a55:F

.field public a56:F

.field public a61:F

.field public a62:F

.field public a63:F

.field public a64:F

.field public a65:F

.field public a66:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)V
    .locals 2

    move-object v0, p0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 51
    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a11:F

    move v1, p2

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a12:F

    move v1, p3

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a13:F

    move v1, p4

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a14:F

    move v1, p5

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a15:F

    move v1, p6

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a16:F

    move v1, p7

    .line 52
    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a21:F

    move v1, p8

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a22:F

    move v1, p9

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a23:F

    move v1, p10

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a24:F

    move v1, p11

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a25:F

    move v1, p12

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a26:F

    move v1, p13

    .line 53
    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a31:F

    move/from16 v1, p14

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a32:F

    move/from16 v1, p15

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a33:F

    move/from16 v1, p16

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a34:F

    move/from16 v1, p17

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a35:F

    move/from16 v1, p18

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a36:F

    move/from16 v1, p19

    .line 54
    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a41:F

    move/from16 v1, p20

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a42:F

    move/from16 v1, p21

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a43:F

    move/from16 v1, p22

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a44:F

    move/from16 v1, p23

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a45:F

    move/from16 v1, p24

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a46:F

    move/from16 v1, p25

    .line 55
    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a51:F

    move/from16 v1, p26

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a52:F

    move/from16 v1, p27

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a53:F

    move/from16 v1, p28

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a54:F

    move/from16 v1, p29

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a55:F

    move/from16 v1, p30

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a56:F

    move/from16 v1, p31

    .line 56
    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a61:F

    move/from16 v1, p32

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a62:F

    move/from16 v1, p33

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a63:F

    move/from16 v1, p34

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a64:F

    move/from16 v1, p35

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a65:F

    move/from16 v1, p36

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public constructor <init>(Lorg/ejml/data/FMatrix6x6;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 61
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 62
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 63
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 64
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 65
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget p1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

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

    .line 353
    new-instance v0, Lorg/ejml/data/FMatrix6x6;

    invoke-direct {v0, p0}, Lorg/ejml/data/FMatrix6x6;-><init>(Lorg/ejml/data/FMatrix6x6;)V

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

    .line 368
    new-instance v0, Lorg/ejml/data/FMatrix6x6;

    invoke-direct {v0}, Lorg/ejml/data/FMatrix6x6;-><init>()V

    return-object v0
.end method

.method public get(II)F
    .locals 0

    .line 104
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/FMatrix6x6;->unsafe_get(II)F

    move-result p1

    return p1
.end method

.method public getNumCols()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getNumElements()I
    .locals 1

    const/16 v0, 0x24

    return v0
.end method

.method public getNumRows()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getType()Lorg/ejml/data/MatrixType;
    .locals 1

    .line 373
    sget-object v0, Lorg/ejml/data/MatrixType;->UNSPECIFIED:Lorg/ejml/data/MatrixType;

    return-object v0
.end method

.method public print()V
    .locals 2

    .line 358
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v1, 0xb

    invoke-static {v0, p0, v1}, Lorg/ejml/ops/MatrixIO;->printFancy(Ljava/io/PrintStream;Lorg/ejml/data/FMatrix;I)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1

    .line 363
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, p0, p1}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/FMatrix;Ljava/lang/String;)V

    return-void
.end method

.method public set(FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)V
    .locals 2

    move-object v0, p0

    move v1, p1

    .line 85
    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a11:F

    move v1, p2

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a12:F

    move v1, p3

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a13:F

    move v1, p4

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a14:F

    move v1, p5

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a15:F

    move v1, p6

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a16:F

    move v1, p7

    .line 86
    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a21:F

    move v1, p8

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a22:F

    move v1, p9

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a23:F

    move v1, p10

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a24:F

    move v1, p11

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a25:F

    move v1, p12

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a26:F

    move v1, p13

    .line 87
    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a31:F

    move/from16 v1, p14

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a32:F

    move/from16 v1, p15

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a33:F

    move/from16 v1, p16

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a34:F

    move/from16 v1, p17

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a35:F

    move/from16 v1, p18

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a36:F

    move/from16 v1, p19

    .line 88
    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a41:F

    move/from16 v1, p20

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a42:F

    move/from16 v1, p21

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a43:F

    move/from16 v1, p22

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a44:F

    move/from16 v1, p23

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a45:F

    move/from16 v1, p24

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a46:F

    move/from16 v1, p25

    .line 89
    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a51:F

    move/from16 v1, p26

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a52:F

    move/from16 v1, p27

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a53:F

    move/from16 v1, p28

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a54:F

    move/from16 v1, p29

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a55:F

    move/from16 v1, p30

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a56:F

    move/from16 v1, p31

    .line 90
    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a61:F

    move/from16 v1, p32

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a62:F

    move/from16 v1, p33

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a63:F

    move/from16 v1, p34

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a64:F

    move/from16 v1, p35

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a65:F

    move/from16 v1, p36

    iput v1, v0, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public set(IIF)V
    .locals 0

    .line 199
    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/data/FMatrix6x6;->unsafe_set(IIF)V

    return-void
.end method

.method public set(I[F)V
    .locals 1

    add-int/lit8 v0, p1, 0x0

    .line 94
    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    add-int/lit8 v0, p1, 0x1

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    add-int/lit8 v0, p1, 0x2

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    add-int/lit8 v0, p1, 0x3

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    add-int/lit8 v0, p1, 0x4

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    add-int/lit8 v0, p1, 0x5

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    add-int/lit8 v0, p1, 0x6

    .line 95
    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    add-int/lit8 v0, p1, 0x7

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    add-int/lit8 v0, p1, 0x8

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    add-int/lit8 v0, p1, 0x9

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    add-int/lit8 v0, p1, 0xa

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    add-int/lit8 v0, p1, 0xb

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    add-int/lit8 v0, p1, 0xc

    .line 96
    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    add-int/lit8 v0, p1, 0xd

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    add-int/lit8 v0, p1, 0xe

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    add-int/lit8 v0, p1, 0xf

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    add-int/lit8 v0, p1, 0x10

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    add-int/lit8 v0, p1, 0x11

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    add-int/lit8 v0, p1, 0x12

    .line 97
    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    add-int/lit8 v0, p1, 0x13

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    add-int/lit8 v0, p1, 0x14

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    add-int/lit8 v0, p1, 0x15

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    add-int/lit8 v0, p1, 0x16

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    add-int/lit8 v0, p1, 0x17

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    add-int/lit8 v0, p1, 0x18

    .line 98
    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    add-int/lit8 v0, p1, 0x19

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    add-int/lit8 v0, p1, 0x1a

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    add-int/lit8 v0, p1, 0x1b

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    add-int/lit8 v0, p1, 0x1c

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    add-int/lit8 v0, p1, 0x1d

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    add-int/lit8 v0, p1, 0x1e

    .line 99
    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    add-int/lit8 v0, p1, 0x1f

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    add-int/lit8 v0, p1, 0x20

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    add-int/lit8 v0, p1, 0x21

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    add-int/lit8 v0, p1, 0x22

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    add-int/lit8 p1, p1, 0x23

    aget p1, p2, p1

    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public set(Lorg/ejml/data/Matrix;)V
    .locals 7

    .line 294
    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 296
    check-cast p1, Lorg/ejml/data/FMatrix;

    const/4 v0, 0x0

    .line 298
    invoke-interface {p1, v0, v0}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v1

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    const/4 v1, 0x1

    .line 299
    invoke-interface {p1, v0, v1}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v2

    iput v2, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    const/4 v2, 0x2

    .line 300
    invoke-interface {p1, v0, v2}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v3

    iput v3, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    const/4 v3, 0x3

    .line 301
    invoke-interface {p1, v0, v3}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v4

    iput v4, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    const/4 v4, 0x4

    .line 302
    invoke-interface {p1, v0, v4}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v5

    iput v5, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    const/4 v5, 0x5

    .line 303
    invoke-interface {p1, v0, v5}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v6

    iput v6, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 304
    invoke-interface {p1, v1, v0}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v6

    iput v6, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    .line 305
    invoke-interface {p1, v1, v1}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v6

    iput v6, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    .line 306
    invoke-interface {p1, v1, v2}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v6

    iput v6, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    .line 307
    invoke-interface {p1, v1, v3}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v6

    iput v6, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    .line 308
    invoke-interface {p1, v1, v4}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v6

    iput v6, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    .line 309
    invoke-interface {p1, v1, v5}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v6

    iput v6, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 310
    invoke-interface {p1, v2, v0}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v6

    iput v6, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    .line 311
    invoke-interface {p1, v2, v1}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v6

    iput v6, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    .line 312
    invoke-interface {p1, v2, v2}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v6

    iput v6, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    .line 313
    invoke-interface {p1, v2, v3}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v6

    iput v6, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    .line 314
    invoke-interface {p1, v2, v4}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v6

    iput v6, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    .line 315
    invoke-interface {p1, v2, v5}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v6

    iput v6, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 316
    invoke-interface {p1, v3, v0}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v6

    iput v6, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    .line 317
    invoke-interface {p1, v3, v1}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v6

    iput v6, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    .line 318
    invoke-interface {p1, v3, v2}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v6

    iput v6, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    .line 319
    invoke-interface {p1, v3, v3}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v6

    iput v6, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    .line 320
    invoke-interface {p1, v3, v4}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v6

    iput v6, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    .line 321
    invoke-interface {p1, v3, v5}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v6

    iput v6, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 322
    invoke-interface {p1, v4, v0}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v6

    iput v6, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    .line 323
    invoke-interface {p1, v4, v1}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v6

    iput v6, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    .line 324
    invoke-interface {p1, v4, v2}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v6

    iput v6, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    .line 325
    invoke-interface {p1, v4, v3}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v6

    iput v6, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    .line 326
    invoke-interface {p1, v4, v4}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v6

    iput v6, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    .line 327
    invoke-interface {p1, v4, v5}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v6

    iput v6, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 328
    invoke-interface {p1, v5, v0}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    .line 329
    invoke-interface {p1, v5, v1}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    .line 330
    invoke-interface {p1, v5, v2}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    .line 331
    invoke-interface {p1, v5, v3}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    .line 332
    invoke-interface {p1, v5, v4}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    .line 333
    invoke-interface {p1, v5, v5}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result p1

    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void

    .line 295
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Rows and/or columns do not match"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unsafe_get(II)F
    .locals 5

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez p1, :cond_5

    if-nez p2, :cond_0

    .line 111
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    return p1

    :cond_0
    if-ne p2, v4, :cond_1

    .line 113
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    return p1

    :cond_1
    if-ne p2, v3, :cond_2

    .line 115
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    return p1

    :cond_2
    if-ne p2, v2, :cond_3

    .line 117
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    return p1

    :cond_3
    if-ne p2, v1, :cond_4

    .line 119
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    return p1

    :cond_4
    if-ne p2, v0, :cond_23

    .line 121
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    return p1

    :cond_5
    if-ne p1, v4, :cond_b

    if-nez p2, :cond_6

    .line 125
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    return p1

    :cond_6
    if-ne p2, v4, :cond_7

    .line 127
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    return p1

    :cond_7
    if-ne p2, v3, :cond_8

    .line 129
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    return p1

    :cond_8
    if-ne p2, v2, :cond_9

    .line 131
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    return p1

    :cond_9
    if-ne p2, v1, :cond_a

    .line 133
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    return p1

    :cond_a
    if-ne p2, v0, :cond_23

    .line 135
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    return p1

    :cond_b
    if-ne p1, v3, :cond_11

    if-nez p2, :cond_c

    .line 139
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    return p1

    :cond_c
    if-ne p2, v4, :cond_d

    .line 141
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    return p1

    :cond_d
    if-ne p2, v3, :cond_e

    .line 143
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    return p1

    :cond_e
    if-ne p2, v2, :cond_f

    .line 145
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    return p1

    :cond_f
    if-ne p2, v1, :cond_10

    .line 147
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    return p1

    :cond_10
    if-ne p2, v0, :cond_23

    .line 149
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    return p1

    :cond_11
    if-ne p1, v2, :cond_17

    if-nez p2, :cond_12

    .line 153
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    return p1

    :cond_12
    if-ne p2, v4, :cond_13

    .line 155
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    return p1

    :cond_13
    if-ne p2, v3, :cond_14

    .line 157
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    return p1

    :cond_14
    if-ne p2, v2, :cond_15

    .line 159
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    return p1

    :cond_15
    if-ne p2, v1, :cond_16

    .line 161
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    return p1

    :cond_16
    if-ne p2, v0, :cond_23

    .line 163
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    return p1

    :cond_17
    if-ne p1, v1, :cond_1d

    if-nez p2, :cond_18

    .line 167
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    return p1

    :cond_18
    if-ne p2, v4, :cond_19

    .line 169
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    return p1

    :cond_19
    if-ne p2, v3, :cond_1a

    .line 171
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    return p1

    :cond_1a
    if-ne p2, v2, :cond_1b

    .line 173
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    return p1

    :cond_1b
    if-ne p2, v1, :cond_1c

    .line 175
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    return p1

    :cond_1c
    if-ne p2, v0, :cond_23

    .line 177
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    return p1

    :cond_1d
    if-ne p1, v0, :cond_23

    if-nez p2, :cond_1e

    .line 181
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    return p1

    :cond_1e
    if-ne p2, v4, :cond_1f

    .line 183
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    return p1

    :cond_1f
    if-ne p2, v3, :cond_20

    .line 185
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    return p1

    :cond_20
    if-ne p2, v2, :cond_21

    .line 187
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    return p1

    :cond_21
    if-ne p2, v1, :cond_22

    .line 189
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    return p1

    :cond_22
    if-ne p2, v0, :cond_23

    .line 191
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    return p1

    .line 194
    :cond_23
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
    .locals 5

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez p1, :cond_5

    if-nez p2, :cond_0

    .line 206
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    return-void

    :cond_0
    if-ne p2, v4, :cond_1

    .line 208
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    return-void

    :cond_1
    if-ne p2, v3, :cond_2

    .line 210
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    return-void

    :cond_2
    if-ne p2, v2, :cond_3

    .line 212
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    return-void

    :cond_3
    if-ne p2, v1, :cond_4

    .line 214
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    return-void

    :cond_4
    if-ne p2, v0, :cond_23

    .line 216
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    return-void

    :cond_5
    if-ne p1, v4, :cond_b

    if-nez p2, :cond_6

    .line 220
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    return-void

    :cond_6
    if-ne p2, v4, :cond_7

    .line 222
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    return-void

    :cond_7
    if-ne p2, v3, :cond_8

    .line 224
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    return-void

    :cond_8
    if-ne p2, v2, :cond_9

    .line 226
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    return-void

    :cond_9
    if-ne p2, v1, :cond_a

    .line 228
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    return-void

    :cond_a
    if-ne p2, v0, :cond_23

    .line 230
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    return-void

    :cond_b
    if-ne p1, v3, :cond_11

    if-nez p2, :cond_c

    .line 234
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    return-void

    :cond_c
    if-ne p2, v4, :cond_d

    .line 236
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    return-void

    :cond_d
    if-ne p2, v3, :cond_e

    .line 238
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    return-void

    :cond_e
    if-ne p2, v2, :cond_f

    .line 240
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    return-void

    :cond_f
    if-ne p2, v1, :cond_10

    .line 242
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    return-void

    :cond_10
    if-ne p2, v0, :cond_23

    .line 244
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    return-void

    :cond_11
    if-ne p1, v2, :cond_17

    if-nez p2, :cond_12

    .line 248
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    return-void

    :cond_12
    if-ne p2, v4, :cond_13

    .line 250
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    return-void

    :cond_13
    if-ne p2, v3, :cond_14

    .line 252
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    return-void

    :cond_14
    if-ne p2, v2, :cond_15

    .line 254
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    return-void

    :cond_15
    if-ne p2, v1, :cond_16

    .line 256
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    return-void

    :cond_16
    if-ne p2, v0, :cond_23

    .line 258
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    return-void

    :cond_17
    if-ne p1, v1, :cond_1d

    if-nez p2, :cond_18

    .line 262
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    return-void

    :cond_18
    if-ne p2, v4, :cond_19

    .line 264
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    return-void

    :cond_19
    if-ne p2, v3, :cond_1a

    .line 266
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    return-void

    :cond_1a
    if-ne p2, v2, :cond_1b

    .line 268
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    return-void

    :cond_1b
    if-ne p2, v1, :cond_1c

    .line 270
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    return-void

    :cond_1c
    if-ne p2, v0, :cond_23

    .line 272
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    return-void

    :cond_1d
    if-ne p1, v0, :cond_23

    if-nez p2, :cond_1e

    .line 276
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    return-void

    :cond_1e
    if-ne p2, v4, :cond_1f

    .line 278
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    return-void

    :cond_1f
    if-ne p2, v3, :cond_20

    .line 280
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    return-void

    :cond_20
    if-ne p2, v2, :cond_21

    .line 282
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    return-void

    :cond_21
    if-ne p2, v1, :cond_22

    .line 284
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    return-void

    :cond_22
    if-ne p2, v0, :cond_23

    .line 286
    iput p3, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void

    .line 289
    :cond_23
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

    .line 70
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 71
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 72
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 73
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 74
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 75
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method
