.class public Lorg/ejml/data/FMatrix4x4;
.super Ljava/lang/Object;
.source "FMatrix4x4.java"

# interfaces
.implements Lorg/ejml/data/FMatrixFixed;


# instance fields
.field public a11:F

.field public a12:F

.field public a13:F

.field public a14:F

.field public a21:F

.field public a22:F

.field public a23:F

.field public a24:F

.field public a31:F

.field public a32:F

.field public a33:F

.field public a34:F

.field public a41:F

.field public a42:F

.field public a43:F

.field public a44:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFFFFFFFFFFFFFF)V
    .locals 2

    move-object v0, p0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 47
    iput v1, v0, Lorg/ejml/data/FMatrix4x4;->a11:F

    move v1, p2

    iput v1, v0, Lorg/ejml/data/FMatrix4x4;->a12:F

    move v1, p3

    iput v1, v0, Lorg/ejml/data/FMatrix4x4;->a13:F

    move v1, p4

    iput v1, v0, Lorg/ejml/data/FMatrix4x4;->a14:F

    move v1, p5

    .line 48
    iput v1, v0, Lorg/ejml/data/FMatrix4x4;->a21:F

    move v1, p6

    iput v1, v0, Lorg/ejml/data/FMatrix4x4;->a22:F

    move v1, p7

    iput v1, v0, Lorg/ejml/data/FMatrix4x4;->a23:F

    move v1, p8

    iput v1, v0, Lorg/ejml/data/FMatrix4x4;->a24:F

    move v1, p9

    .line 49
    iput v1, v0, Lorg/ejml/data/FMatrix4x4;->a31:F

    move v1, p10

    iput v1, v0, Lorg/ejml/data/FMatrix4x4;->a32:F

    move v1, p11

    iput v1, v0, Lorg/ejml/data/FMatrix4x4;->a33:F

    move v1, p12

    iput v1, v0, Lorg/ejml/data/FMatrix4x4;->a34:F

    move v1, p13

    .line 50
    iput v1, v0, Lorg/ejml/data/FMatrix4x4;->a41:F

    move/from16 v1, p14

    iput v1, v0, Lorg/ejml/data/FMatrix4x4;->a42:F

    move/from16 v1, p15

    iput v1, v0, Lorg/ejml/data/FMatrix4x4;->a43:F

    move/from16 v1, p16

    iput v1, v0, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public constructor <init>(Lorg/ejml/data/FMatrix4x4;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 55
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 56
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 57
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget p1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    iput p1, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

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
    new-instance v0, Lorg/ejml/data/FMatrix4x4;

    invoke-direct {v0, p0}, Lorg/ejml/data/FMatrix4x4;-><init>(Lorg/ejml/data/FMatrix4x4;)V

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
    new-instance v0, Lorg/ejml/data/FMatrix4x4;

    invoke-direct {v0}, Lorg/ejml/data/FMatrix4x4;-><init>()V

    return-object v0
.end method

.method public get(II)F
    .locals 0

    .line 88
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/FMatrix4x4;->unsafe_get(II)F

    move-result p1

    return p1
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

    invoke-static {v0, p0, v1}, Lorg/ejml/ops/MatrixIO;->printFancy(Ljava/io/PrintStream;Lorg/ejml/data/FMatrix;I)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1

    .line 239
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, p0, p1}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/FMatrix;Ljava/lang/String;)V

    return-void
.end method

.method public set(FFFFFFFFFFFFFFFF)V
    .locals 2

    move-object v0, p0

    move v1, p1

    .line 73
    iput v1, v0, Lorg/ejml/data/FMatrix4x4;->a11:F

    move v1, p2

    iput v1, v0, Lorg/ejml/data/FMatrix4x4;->a12:F

    move v1, p3

    iput v1, v0, Lorg/ejml/data/FMatrix4x4;->a13:F

    move v1, p4

    iput v1, v0, Lorg/ejml/data/FMatrix4x4;->a14:F

    move v1, p5

    .line 74
    iput v1, v0, Lorg/ejml/data/FMatrix4x4;->a21:F

    move v1, p6

    iput v1, v0, Lorg/ejml/data/FMatrix4x4;->a22:F

    move v1, p7

    iput v1, v0, Lorg/ejml/data/FMatrix4x4;->a23:F

    move v1, p8

    iput v1, v0, Lorg/ejml/data/FMatrix4x4;->a24:F

    move v1, p9

    .line 75
    iput v1, v0, Lorg/ejml/data/FMatrix4x4;->a31:F

    move v1, p10

    iput v1, v0, Lorg/ejml/data/FMatrix4x4;->a32:F

    move v1, p11

    iput v1, v0, Lorg/ejml/data/FMatrix4x4;->a33:F

    move v1, p12

    iput v1, v0, Lorg/ejml/data/FMatrix4x4;->a34:F

    move v1, p13

    .line 76
    iput v1, v0, Lorg/ejml/data/FMatrix4x4;->a41:F

    move/from16 v1, p14

    iput v1, v0, Lorg/ejml/data/FMatrix4x4;->a42:F

    move/from16 v1, p15

    iput v1, v0, Lorg/ejml/data/FMatrix4x4;->a43:F

    move/from16 v1, p16

    iput v1, v0, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public set(IIF)V
    .locals 0

    .line 139
    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/data/FMatrix4x4;->unsafe_set(IIF)V

    return-void
.end method

.method public set(I[F)V
    .locals 1

    add-int/lit8 v0, p1, 0x0

    .line 80
    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    add-int/lit8 v0, p1, 0x1

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    add-int/lit8 v0, p1, 0x2

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    add-int/lit8 v0, p1, 0x3

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    add-int/lit8 v0, p1, 0x4

    .line 81
    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    add-int/lit8 v0, p1, 0x5

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    add-int/lit8 v0, p1, 0x6

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    add-int/lit8 v0, p1, 0x7

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    add-int/lit8 v0, p1, 0x8

    .line 82
    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    add-int/lit8 v0, p1, 0x9

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    add-int/lit8 v0, p1, 0xa

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    add-int/lit8 v0, p1, 0xb

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    add-int/lit8 v0, p1, 0xc

    .line 83
    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    add-int/lit8 v0, p1, 0xd

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    add-int/lit8 v0, p1, 0xe

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    add-int/lit8 p1, p1, 0xf

    aget p1, p2, p1

    iput p1, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public set(Lorg/ejml/data/Matrix;)V
    .locals 5

    .line 190
    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 192
    check-cast p1, Lorg/ejml/data/FMatrix;

    const/4 v0, 0x0

    .line 194
    invoke-interface {p1, v0, v0}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v1

    iput v1, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    const/4 v1, 0x1

    .line 195
    invoke-interface {p1, v0, v1}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v2

    iput v2, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    const/4 v2, 0x2

    .line 196
    invoke-interface {p1, v0, v2}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v3

    iput v3, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    const/4 v3, 0x3

    .line 197
    invoke-interface {p1, v0, v3}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v4

    iput v4, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 198
    invoke-interface {p1, v1, v0}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v4

    iput v4, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    .line 199
    invoke-interface {p1, v1, v1}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v4

    iput v4, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    .line 200
    invoke-interface {p1, v1, v2}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v4

    iput v4, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    .line 201
    invoke-interface {p1, v1, v3}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v4

    iput v4, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 202
    invoke-interface {p1, v2, v0}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v4

    iput v4, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    .line 203
    invoke-interface {p1, v2, v1}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v4

    iput v4, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    .line 204
    invoke-interface {p1, v2, v2}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v4

    iput v4, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    .line 205
    invoke-interface {p1, v2, v3}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v4

    iput v4, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 206
    invoke-interface {p1, v3, v0}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    .line 207
    invoke-interface {p1, v3, v1}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    .line 208
    invoke-interface {p1, v3, v2}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    .line 209
    invoke-interface {p1, v3, v3}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result p1

    iput p1, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void

    .line 191
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Rows and/or columns do not match"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unsafe_get(II)F
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_3

    if-nez p2, :cond_0

    .line 95
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    return p1

    :cond_0
    if-ne p2, v2, :cond_1

    .line 97
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    return p1

    :cond_1
    if-ne p2, v1, :cond_2

    .line 99
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    return p1

    :cond_2
    if-ne p2, v0, :cond_f

    .line 101
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    return p1

    :cond_3
    if-ne p1, v2, :cond_7

    if-nez p2, :cond_4

    .line 105
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    return p1

    :cond_4
    if-ne p2, v2, :cond_5

    .line 107
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    return p1

    :cond_5
    if-ne p2, v1, :cond_6

    .line 109
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    return p1

    :cond_6
    if-ne p2, v0, :cond_f

    .line 111
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    return p1

    :cond_7
    if-ne p1, v1, :cond_b

    if-nez p2, :cond_8

    .line 115
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    return p1

    :cond_8
    if-ne p2, v2, :cond_9

    .line 117
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    return p1

    :cond_9
    if-ne p2, v1, :cond_a

    .line 119
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    return p1

    :cond_a
    if-ne p2, v0, :cond_f

    .line 121
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    return p1

    :cond_b
    if-ne p1, v0, :cond_f

    if-nez p2, :cond_c

    .line 125
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    return p1

    :cond_c
    if-ne p2, v2, :cond_d

    .line 127
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    return p1

    :cond_d
    if-ne p2, v1, :cond_e

    .line 129
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    return p1

    :cond_e
    if-ne p2, v0, :cond_f

    .line 131
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    return p1

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

.method public unsafe_set(IIF)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_3

    if-nez p2, :cond_0

    .line 146
    iput p3, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    return-void

    :cond_0
    if-ne p2, v2, :cond_1

    .line 148
    iput p3, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    return-void

    :cond_1
    if-ne p2, v1, :cond_2

    .line 150
    iput p3, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    return-void

    :cond_2
    if-ne p2, v0, :cond_f

    .line 152
    iput p3, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    return-void

    :cond_3
    if-ne p1, v2, :cond_7

    if-nez p2, :cond_4

    .line 156
    iput p3, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    return-void

    :cond_4
    if-ne p2, v2, :cond_5

    .line 158
    iput p3, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    return-void

    :cond_5
    if-ne p2, v1, :cond_6

    .line 160
    iput p3, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    return-void

    :cond_6
    if-ne p2, v0, :cond_f

    .line 162
    iput p3, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    return-void

    :cond_7
    if-ne p1, v1, :cond_b

    if-nez p2, :cond_8

    .line 166
    iput p3, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    return-void

    :cond_8
    if-ne p2, v2, :cond_9

    .line 168
    iput p3, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    return-void

    :cond_9
    if-ne p2, v1, :cond_a

    .line 170
    iput p3, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    return-void

    :cond_a
    if-ne p2, v0, :cond_f

    .line 172
    iput p3, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    return-void

    :cond_b
    if-ne p1, v0, :cond_f

    if-nez p2, :cond_c

    .line 176
    iput p3, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    return-void

    :cond_c
    if-ne p2, v2, :cond_d

    .line 178
    iput p3, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    return-void

    :cond_d
    if-ne p2, v1, :cond_e

    .line 180
    iput p3, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    return-void

    :cond_e
    if-ne p2, v0, :cond_f

    .line 182
    iput p3, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void

    .line 185
    :cond_f
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

    .line 62
    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 63
    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 64
    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 65
    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method
