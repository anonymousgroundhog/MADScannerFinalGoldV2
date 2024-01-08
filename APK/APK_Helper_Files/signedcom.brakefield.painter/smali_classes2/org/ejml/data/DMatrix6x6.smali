.class public Lorg/ejml/data/DMatrix6x6;
.super Ljava/lang/Object;
.source "DMatrix6x6.java"

# interfaces
.implements Lorg/ejml/data/DMatrixFixed;


# instance fields
.field public a11:D

.field public a12:D

.field public a13:D

.field public a14:D

.field public a15:D

.field public a16:D

.field public a21:D

.field public a22:D

.field public a23:D

.field public a24:D

.field public a25:D

.field public a26:D

.field public a31:D

.field public a32:D

.field public a33:D

.field public a34:D

.field public a35:D

.field public a36:D

.field public a41:D

.field public a42:D

.field public a43:D

.field public a44:D

.field public a45:D

.field public a46:D

.field public a51:D

.field public a52:D

.field public a53:D

.field public a54:D

.field public a55:D

.field public a56:D

.field public a61:D

.field public a62:D

.field public a63:D

.field public a64:D

.field public a65:D

.field public a66:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD)V
    .locals 3

    move-object v0, p0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 51
    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a11:D

    move-wide v1, p3

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a12:D

    move-wide v1, p5

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a13:D

    move-wide v1, p7

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a14:D

    move-wide v1, p9

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a15:D

    move-wide v1, p11

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a16:D

    move-wide/from16 v1, p13

    .line 52
    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a21:D

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a22:D

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a23:D

    move-wide/from16 v1, p19

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a24:D

    move-wide/from16 v1, p21

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a25:D

    move-wide/from16 v1, p23

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a26:D

    move-wide/from16 v1, p25

    .line 53
    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a31:D

    move-wide/from16 v1, p27

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a32:D

    move-wide/from16 v1, p29

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a33:D

    move-wide/from16 v1, p31

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a34:D

    move-wide/from16 v1, p33

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a35:D

    move-wide/from16 v1, p35

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a36:D

    move-wide/from16 v1, p37

    .line 54
    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a41:D

    move-wide/from16 v1, p39

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a42:D

    move-wide/from16 v1, p41

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a43:D

    move-wide/from16 v1, p43

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a44:D

    move-wide/from16 v1, p45

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a45:D

    move-wide/from16 v1, p47

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a46:D

    move-wide/from16 v1, p49

    .line 55
    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a51:D

    move-wide/from16 v1, p51

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a52:D

    move-wide/from16 v1, p53

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a53:D

    move-wide/from16 v1, p55

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a54:D

    move-wide/from16 v1, p57

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a55:D

    move-wide/from16 v1, p59

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a56:D

    move-wide/from16 v1, p61

    .line 56
    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a61:D

    move-wide/from16 v1, p63

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a62:D

    move-wide/from16 v1, p65

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a63:D

    move-wide/from16 v1, p67

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a64:D

    move-wide/from16 v1, p69

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a65:D

    move-wide/from16 v1, p71

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public constructor <init>(Lorg/ejml/data/DMatrix6x6;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 61
    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 62
    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 63
    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 64
    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 65
    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

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
    new-instance v0, Lorg/ejml/data/DMatrix6x6;

    invoke-direct {v0, p0}, Lorg/ejml/data/DMatrix6x6;-><init>(Lorg/ejml/data/DMatrix6x6;)V

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
    new-instance v0, Lorg/ejml/data/DMatrix6x6;

    invoke-direct {v0}, Lorg/ejml/data/DMatrix6x6;-><init>()V

    return-object v0
.end method

.method public get(II)D
    .locals 0

    .line 104
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/DMatrix6x6;->unsafe_get(II)D

    move-result-wide p1

    return-wide p1
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

    invoke-static {v0, p0, v1}, Lorg/ejml/ops/MatrixIO;->printFancy(Ljava/io/PrintStream;Lorg/ejml/data/DMatrix;I)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1

    .line 363
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, p0, p1}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/DMatrix;Ljava/lang/String;)V

    return-void
.end method

.method public set(DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD)V
    .locals 3

    move-object v0, p0

    move-wide v1, p1

    .line 85
    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a11:D

    move-wide v1, p3

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a12:D

    move-wide v1, p5

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a13:D

    move-wide v1, p7

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a14:D

    move-wide v1, p9

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a15:D

    move-wide v1, p11

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a16:D

    move-wide/from16 v1, p13

    .line 86
    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a21:D

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a22:D

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a23:D

    move-wide/from16 v1, p19

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a24:D

    move-wide/from16 v1, p21

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a25:D

    move-wide/from16 v1, p23

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a26:D

    move-wide/from16 v1, p25

    .line 87
    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a31:D

    move-wide/from16 v1, p27

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a32:D

    move-wide/from16 v1, p29

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a33:D

    move-wide/from16 v1, p31

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a34:D

    move-wide/from16 v1, p33

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a35:D

    move-wide/from16 v1, p35

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a36:D

    move-wide/from16 v1, p37

    .line 88
    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a41:D

    move-wide/from16 v1, p39

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a42:D

    move-wide/from16 v1, p41

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a43:D

    move-wide/from16 v1, p43

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a44:D

    move-wide/from16 v1, p45

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a45:D

    move-wide/from16 v1, p47

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a46:D

    move-wide/from16 v1, p49

    .line 89
    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a51:D

    move-wide/from16 v1, p51

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a52:D

    move-wide/from16 v1, p53

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a53:D

    move-wide/from16 v1, p55

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a54:D

    move-wide/from16 v1, p57

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a55:D

    move-wide/from16 v1, p59

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a56:D

    move-wide/from16 v1, p61

    .line 90
    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a61:D

    move-wide/from16 v1, p63

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a62:D

    move-wide/from16 v1, p65

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a63:D

    move-wide/from16 v1, p67

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a64:D

    move-wide/from16 v1, p69

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a65:D

    move-wide/from16 v1, p71

    iput-wide v1, v0, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public set(IID)V
    .locals 0

    .line 199
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/data/DMatrix6x6;->unsafe_set(IID)V

    return-void
.end method

.method public set(I[D)V
    .locals 2

    add-int/lit8 v0, p1, 0x0

    .line 94
    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    add-int/lit8 v0, p1, 0x1

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    add-int/lit8 v0, p1, 0x2

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    add-int/lit8 v0, p1, 0x3

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    add-int/lit8 v0, p1, 0x4

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    add-int/lit8 v0, p1, 0x5

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    add-int/lit8 v0, p1, 0x6

    .line 95
    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    add-int/lit8 v0, p1, 0x7

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    add-int/lit8 v0, p1, 0x8

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    add-int/lit8 v0, p1, 0x9

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    add-int/lit8 v0, p1, 0xa

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    add-int/lit8 v0, p1, 0xb

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    add-int/lit8 v0, p1, 0xc

    .line 96
    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    add-int/lit8 v0, p1, 0xd

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    add-int/lit8 v0, p1, 0xe

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    add-int/lit8 v0, p1, 0xf

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    add-int/lit8 v0, p1, 0x10

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    add-int/lit8 v0, p1, 0x11

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    add-int/lit8 v0, p1, 0x12

    .line 97
    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    add-int/lit8 v0, p1, 0x13

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    add-int/lit8 v0, p1, 0x14

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    add-int/lit8 v0, p1, 0x15

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    add-int/lit8 v0, p1, 0x16

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    add-int/lit8 v0, p1, 0x17

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    add-int/lit8 v0, p1, 0x18

    .line 98
    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    add-int/lit8 v0, p1, 0x19

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    add-int/lit8 v0, p1, 0x1a

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    add-int/lit8 v0, p1, 0x1b

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    add-int/lit8 v0, p1, 0x1c

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    add-int/lit8 v0, p1, 0x1d

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    add-int/lit8 v0, p1, 0x1e

    .line 99
    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    add-int/lit8 v0, p1, 0x1f

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    add-int/lit8 v0, p1, 0x20

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    add-int/lit8 v0, p1, 0x21

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    add-int/lit8 v0, p1, 0x22

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    add-int/lit8 p1, p1, 0x23

    aget-wide p1, p2, p1

    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public set(Lorg/ejml/data/Matrix;)V
    .locals 8

    .line 294
    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 296
    check-cast p1, Lorg/ejml/data/DMatrix;

    const/4 v0, 0x0

    .line 298
    invoke-interface {p1, v0, v0}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v1

    iput-wide v1, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    const/4 v1, 0x1

    .line 299
    invoke-interface {p1, v0, v1}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    const/4 v2, 0x2

    .line 300
    invoke-interface {p1, v0, v2}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v3

    iput-wide v3, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    const/4 v3, 0x3

    .line 301
    invoke-interface {p1, v0, v3}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    const/4 v4, 0x4

    .line 302
    invoke-interface {p1, v0, v4}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v5

    iput-wide v5, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    const/4 v5, 0x5

    .line 303
    invoke-interface {p1, v0, v5}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 304
    invoke-interface {p1, v1, v0}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    .line 305
    invoke-interface {p1, v1, v1}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    .line 306
    invoke-interface {p1, v1, v2}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    .line 307
    invoke-interface {p1, v1, v3}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    .line 308
    invoke-interface {p1, v1, v4}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    .line 309
    invoke-interface {p1, v1, v5}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 310
    invoke-interface {p1, v2, v0}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    .line 311
    invoke-interface {p1, v2, v1}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    .line 312
    invoke-interface {p1, v2, v2}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    .line 313
    invoke-interface {p1, v2, v3}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    .line 314
    invoke-interface {p1, v2, v4}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    .line 315
    invoke-interface {p1, v2, v5}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 316
    invoke-interface {p1, v3, v0}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    .line 317
    invoke-interface {p1, v3, v1}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    .line 318
    invoke-interface {p1, v3, v2}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    .line 319
    invoke-interface {p1, v3, v3}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    .line 320
    invoke-interface {p1, v3, v4}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    .line 321
    invoke-interface {p1, v3, v5}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 322
    invoke-interface {p1, v4, v0}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    .line 323
    invoke-interface {p1, v4, v1}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    .line 324
    invoke-interface {p1, v4, v2}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    .line 325
    invoke-interface {p1, v4, v3}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    .line 326
    invoke-interface {p1, v4, v4}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    .line 327
    invoke-interface {p1, v4, v5}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 328
    invoke-interface {p1, v5, v0}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    .line 329
    invoke-interface {p1, v5, v1}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    .line 330
    invoke-interface {p1, v5, v2}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    .line 331
    invoke-interface {p1, v5, v3}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    .line 332
    invoke-interface {p1, v5, v4}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    .line 333
    invoke-interface {p1, v5, v5}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void

    .line 295
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Rows and/or columns do not match"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unsafe_get(II)D
    .locals 5

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez p1, :cond_5

    if-nez p2, :cond_0

    .line 111
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    return-wide p1

    :cond_0
    if-ne p2, v4, :cond_1

    .line 113
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    return-wide p1

    :cond_1
    if-ne p2, v3, :cond_2

    .line 115
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    return-wide p1

    :cond_2
    if-ne p2, v2, :cond_3

    .line 117
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    return-wide p1

    :cond_3
    if-ne p2, v1, :cond_4

    .line 119
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    return-wide p1

    :cond_4
    if-ne p2, v0, :cond_23

    .line 121
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    return-wide p1

    :cond_5
    if-ne p1, v4, :cond_b

    if-nez p2, :cond_6

    .line 125
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    return-wide p1

    :cond_6
    if-ne p2, v4, :cond_7

    .line 127
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    return-wide p1

    :cond_7
    if-ne p2, v3, :cond_8

    .line 129
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    return-wide p1

    :cond_8
    if-ne p2, v2, :cond_9

    .line 131
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    return-wide p1

    :cond_9
    if-ne p2, v1, :cond_a

    .line 133
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    return-wide p1

    :cond_a
    if-ne p2, v0, :cond_23

    .line 135
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    return-wide p1

    :cond_b
    if-ne p1, v3, :cond_11

    if-nez p2, :cond_c

    .line 139
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    return-wide p1

    :cond_c
    if-ne p2, v4, :cond_d

    .line 141
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    return-wide p1

    :cond_d
    if-ne p2, v3, :cond_e

    .line 143
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    return-wide p1

    :cond_e
    if-ne p2, v2, :cond_f

    .line 145
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    return-wide p1

    :cond_f
    if-ne p2, v1, :cond_10

    .line 147
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    return-wide p1

    :cond_10
    if-ne p2, v0, :cond_23

    .line 149
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    return-wide p1

    :cond_11
    if-ne p1, v2, :cond_17

    if-nez p2, :cond_12

    .line 153
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    return-wide p1

    :cond_12
    if-ne p2, v4, :cond_13

    .line 155
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    return-wide p1

    :cond_13
    if-ne p2, v3, :cond_14

    .line 157
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    return-wide p1

    :cond_14
    if-ne p2, v2, :cond_15

    .line 159
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    return-wide p1

    :cond_15
    if-ne p2, v1, :cond_16

    .line 161
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    return-wide p1

    :cond_16
    if-ne p2, v0, :cond_23

    .line 163
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    return-wide p1

    :cond_17
    if-ne p1, v1, :cond_1d

    if-nez p2, :cond_18

    .line 167
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    return-wide p1

    :cond_18
    if-ne p2, v4, :cond_19

    .line 169
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    return-wide p1

    :cond_19
    if-ne p2, v3, :cond_1a

    .line 171
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    return-wide p1

    :cond_1a
    if-ne p2, v2, :cond_1b

    .line 173
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    return-wide p1

    :cond_1b
    if-ne p2, v1, :cond_1c

    .line 175
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    return-wide p1

    :cond_1c
    if-ne p2, v0, :cond_23

    .line 177
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    return-wide p1

    :cond_1d
    if-ne p1, v0, :cond_23

    if-nez p2, :cond_1e

    .line 181
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    return-wide p1

    :cond_1e
    if-ne p2, v4, :cond_1f

    .line 183
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    return-wide p1

    :cond_1f
    if-ne p2, v3, :cond_20

    .line 185
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    return-wide p1

    :cond_20
    if-ne p2, v2, :cond_21

    .line 187
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    return-wide p1

    :cond_21
    if-ne p2, v1, :cond_22

    .line 189
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    return-wide p1

    :cond_22
    if-ne p2, v0, :cond_23

    .line 191
    iget-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-wide p1

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

.method public unsafe_set(IID)V
    .locals 5

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez p1, :cond_5

    if-nez p2, :cond_0

    .line 206
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    return-void

    :cond_0
    if-ne p2, v4, :cond_1

    .line 208
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    return-void

    :cond_1
    if-ne p2, v3, :cond_2

    .line 210
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    return-void

    :cond_2
    if-ne p2, v2, :cond_3

    .line 212
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    return-void

    :cond_3
    if-ne p2, v1, :cond_4

    .line 214
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    return-void

    :cond_4
    if-ne p2, v0, :cond_23

    .line 216
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    return-void

    :cond_5
    if-ne p1, v4, :cond_b

    if-nez p2, :cond_6

    .line 220
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    return-void

    :cond_6
    if-ne p2, v4, :cond_7

    .line 222
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    return-void

    :cond_7
    if-ne p2, v3, :cond_8

    .line 224
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    return-void

    :cond_8
    if-ne p2, v2, :cond_9

    .line 226
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    return-void

    :cond_9
    if-ne p2, v1, :cond_a

    .line 228
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    return-void

    :cond_a
    if-ne p2, v0, :cond_23

    .line 230
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    return-void

    :cond_b
    if-ne p1, v3, :cond_11

    if-nez p2, :cond_c

    .line 234
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    return-void

    :cond_c
    if-ne p2, v4, :cond_d

    .line 236
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    return-void

    :cond_d
    if-ne p2, v3, :cond_e

    .line 238
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    return-void

    :cond_e
    if-ne p2, v2, :cond_f

    .line 240
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    return-void

    :cond_f
    if-ne p2, v1, :cond_10

    .line 242
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    return-void

    :cond_10
    if-ne p2, v0, :cond_23

    .line 244
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    return-void

    :cond_11
    if-ne p1, v2, :cond_17

    if-nez p2, :cond_12

    .line 248
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    return-void

    :cond_12
    if-ne p2, v4, :cond_13

    .line 250
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    return-void

    :cond_13
    if-ne p2, v3, :cond_14

    .line 252
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    return-void

    :cond_14
    if-ne p2, v2, :cond_15

    .line 254
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    return-void

    :cond_15
    if-ne p2, v1, :cond_16

    .line 256
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    return-void

    :cond_16
    if-ne p2, v0, :cond_23

    .line 258
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    return-void

    :cond_17
    if-ne p1, v1, :cond_1d

    if-nez p2, :cond_18

    .line 262
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    return-void

    :cond_18
    if-ne p2, v4, :cond_19

    .line 264
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    return-void

    :cond_19
    if-ne p2, v3, :cond_1a

    .line 266
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    return-void

    :cond_1a
    if-ne p2, v2, :cond_1b

    .line 268
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    return-void

    :cond_1b
    if-ne p2, v1, :cond_1c

    .line 270
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    return-void

    :cond_1c
    if-ne p2, v0, :cond_23

    .line 272
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    return-void

    :cond_1d
    if-ne p1, v0, :cond_23

    if-nez p2, :cond_1e

    .line 276
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    return-void

    :cond_1e
    if-ne p2, v4, :cond_1f

    .line 278
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    return-void

    :cond_1f
    if-ne p2, v3, :cond_20

    .line 280
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    return-void

    :cond_20
    if-ne p2, v2, :cond_21

    .line 282
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    return-void

    :cond_21
    if-ne p2, v1, :cond_22

    .line 284
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    return-void

    :cond_22
    if-ne p2, v0, :cond_23

    .line 286
    iput-wide p3, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void

    .line 289
    :cond_23
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

    .line 70
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 71
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 72
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 73
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 74
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 75
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method
