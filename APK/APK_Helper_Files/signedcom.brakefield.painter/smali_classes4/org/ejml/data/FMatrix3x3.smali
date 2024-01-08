.class public Lorg/ejml/data/FMatrix3x3;
.super Ljava/lang/Object;
.source "FMatrix3x3.java"

# interfaces
.implements Lorg/ejml/data/FMatrixFixed;


# instance fields
.field public a11:F

.field public a12:F

.field public a13:F

.field public a21:F

.field public a22:F

.field public a23:F

.field public a31:F

.field public a32:F

.field public a33:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFFFFFFF)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iput p2, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iput p3, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 46
    iput p4, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iput p5, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iput p6, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 47
    iput p7, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iput p8, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iput p9, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public constructor <init>(Lorg/ejml/data/FMatrix3x3;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 52
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 53
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget p1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    iput p1, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

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

    .line 182
    new-instance v0, Lorg/ejml/data/FMatrix3x3;

    invoke-direct {v0, p0}, Lorg/ejml/data/FMatrix3x3;-><init>(Lorg/ejml/data/FMatrix3x3;)V

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

    .line 197
    new-instance v0, Lorg/ejml/data/FMatrix3x3;

    invoke-direct {v0}, Lorg/ejml/data/FMatrix3x3;-><init>()V

    return-object v0
.end method

.method public get(II)F
    .locals 0

    .line 80
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/FMatrix3x3;->unsafe_get(II)F

    move-result p1

    return p1
.end method

.method public getNumCols()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getNumElements()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public getNumRows()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getType()Lorg/ejml/data/MatrixType;
    .locals 1

    .line 202
    sget-object v0, Lorg/ejml/data/MatrixType;->UNSPECIFIED:Lorg/ejml/data/MatrixType;

    return-object v0
.end method

.method public print()V
    .locals 2

    .line 187
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v1, 0xb

    invoke-static {v0, p0, v1}, Lorg/ejml/ops/MatrixIO;->printFancy(Ljava/io/PrintStream;Lorg/ejml/data/FMatrix;I)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1

    .line 192
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, p0, p1}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/FMatrix;Ljava/lang/String;)V

    return-void
.end method

.method public set(FFFFFFFFF)V
    .locals 0

    .line 67
    iput p1, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iput p2, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iput p3, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 68
    iput p4, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iput p5, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iput p6, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 69
    iput p7, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iput p8, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iput p9, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public set(IIF)V
    .locals 0

    .line 115
    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/data/FMatrix3x3;->unsafe_set(IIF)V

    return-void
.end method

.method public set(I[F)V
    .locals 1

    add-int/lit8 v0, p1, 0x0

    .line 73
    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    add-int/lit8 v0, p1, 0x1

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    add-int/lit8 v0, p1, 0x2

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    add-int/lit8 v0, p1, 0x3

    .line 74
    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    add-int/lit8 v0, p1, 0x4

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    add-int/lit8 v0, p1, 0x5

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    add-int/lit8 v0, p1, 0x6

    .line 75
    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    add-int/lit8 v0, p1, 0x7

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    add-int/lit8 p1, p1, 0x8

    aget p1, p2, p1

    iput p1, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public set(Lorg/ejml/data/Matrix;)V
    .locals 4

    .line 150
    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 152
    check-cast p1, Lorg/ejml/data/FMatrix;

    const/4 v0, 0x0

    .line 154
    invoke-interface {p1, v0, v0}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v1

    iput v1, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    const/4 v1, 0x1

    .line 155
    invoke-interface {p1, v0, v1}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v2

    iput v2, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    const/4 v2, 0x2

    .line 156
    invoke-interface {p1, v0, v2}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v3

    iput v3, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 157
    invoke-interface {p1, v1, v0}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v3

    iput v3, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    .line 158
    invoke-interface {p1, v1, v1}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v3

    iput v3, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    .line 159
    invoke-interface {p1, v1, v2}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v3

    iput v3, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 160
    invoke-interface {p1, v2, v0}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v0

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    .line 161
    invoke-interface {p1, v2, v1}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v0

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    .line 162
    invoke-interface {p1, v2, v2}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result p1

    iput p1, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void

    .line 151
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Rows and/or columns do not match"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unsafe_get(II)F
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_2

    if-nez p2, :cond_0

    .line 87
    iget p1, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    return p1

    :cond_0
    if-ne p2, v1, :cond_1

    .line 89
    iget p1, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    return p1

    :cond_1
    if-ne p2, v0, :cond_8

    .line 91
    iget p1, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    return p1

    :cond_2
    if-ne p1, v1, :cond_5

    if-nez p2, :cond_3

    .line 95
    iget p1, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    return p1

    :cond_3
    if-ne p2, v1, :cond_4

    .line 97
    iget p1, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    return p1

    :cond_4
    if-ne p2, v0, :cond_8

    .line 99
    iget p1, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    return p1

    :cond_5
    if-ne p1, v0, :cond_8

    if-nez p2, :cond_6

    .line 103
    iget p1, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    return p1

    :cond_6
    if-ne p2, v1, :cond_7

    .line 105
    iget p1, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    return p1

    :cond_7
    if-ne p2, v0, :cond_8

    .line 107
    iget p1, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    return p1

    .line 110
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    sget-object v2, Lorg/ejml/dense/row/decompose/EB/JlKLR;->YObNAyFJTtcmiW:Ljava/lang/String;

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
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_2

    if-nez p2, :cond_0

    .line 122
    iput p3, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    return-void

    :cond_0
    if-ne p2, v1, :cond_1

    .line 124
    iput p3, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    return-void

    :cond_1
    if-ne p2, v0, :cond_8

    .line 126
    iput p3, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    return-void

    :cond_2
    if-ne p1, v1, :cond_5

    if-nez p2, :cond_3

    .line 130
    iput p3, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    return-void

    :cond_3
    if-ne p2, v1, :cond_4

    .line 132
    iput p3, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    return-void

    :cond_4
    if-ne p2, v0, :cond_8

    .line 134
    iput p3, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    return-void

    :cond_5
    if-ne p1, v0, :cond_8

    if-nez p2, :cond_6

    .line 138
    iput p3, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    return-void

    :cond_6
    if-ne p2, v1, :cond_7

    .line 140
    iput p3, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    return-void

    :cond_7
    if-ne p2, v0, :cond_8

    .line 142
    iput p3, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void

    .line 145
    :cond_8
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

    .line 58
    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 59
    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 60
    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method
