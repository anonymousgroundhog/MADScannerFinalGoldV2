.class public Lorg/ejml/data/FMatrix2x2;
.super Ljava/lang/Object;
.source "FMatrix2x2.java"

# interfaces
.implements Lorg/ejml/data/FMatrixFixed;


# instance fields
.field public a11:F

.field public a12:F

.field public a21:F

.field public a22:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iput p2, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 44
    iput p3, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iput p4, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public constructor <init>(Lorg/ejml/data/FMatrix2x2;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iget v0, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v0, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 49
    iget v0, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget p1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    iput p1, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

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

    .line 145
    new-instance v0, Lorg/ejml/data/FMatrix2x2;

    invoke-direct {v0, p0}, Lorg/ejml/data/FMatrix2x2;-><init>(Lorg/ejml/data/FMatrix2x2;)V

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

    .line 160
    new-instance v0, Lorg/ejml/data/FMatrix2x2;

    invoke-direct {v0}, Lorg/ejml/data/FMatrix2x2;-><init>()V

    return-object v0
.end method

.method public get(II)F
    .locals 0

    .line 72
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/FMatrix2x2;->unsafe_get(II)F

    move-result p1

    return p1
.end method

.method public getNumCols()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getNumElements()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getNumRows()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getType()Lorg/ejml/data/MatrixType;
    .locals 1

    .line 165
    sget-object v0, Lorg/ejml/data/MatrixType;->UNSPECIFIED:Lorg/ejml/data/MatrixType;

    return-object v0
.end method

.method public print()V
    .locals 2

    .line 150
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v1, 0xb

    invoke-static {v0, p0, v1}, Lorg/ejml/ops/MatrixIO;->printFancy(Ljava/io/PrintStream;Lorg/ejml/data/FMatrix;I)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1

    .line 155
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, p0, p1}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/FMatrix;Ljava/lang/String;)V

    return-void
.end method

.method public set(FFFF)V
    .locals 0

    .line 61
    iput p1, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iput p2, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 62
    iput p3, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iput p4, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public set(IIF)V
    .locals 0

    .line 95
    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/data/FMatrix2x2;->unsafe_set(IIF)V

    return-void
.end method

.method public set(I[F)V
    .locals 1

    add-int/lit8 v0, p1, 0x0

    .line 66
    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    add-int/lit8 v0, p1, 0x1

    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    add-int/lit8 v0, p1, 0x2

    .line 67
    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    add-int/lit8 p1, p1, 0x3

    aget p1, p2, p1

    iput p1, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public set(Lorg/ejml/data/Matrix;)V
    .locals 3

    .line 118
    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 120
    check-cast p1, Lorg/ejml/data/FMatrix;

    const/4 v0, 0x0

    .line 122
    invoke-interface {p1, v0, v0}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v1

    iput v1, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    const/4 v1, 0x1

    .line 123
    invoke-interface {p1, v0, v1}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v2

    iput v2, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 124
    invoke-interface {p1, v1, v0}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v0

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    .line 125
    invoke-interface {p1, v1, v1}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result p1

    iput p1, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void

    .line 119
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Rows and/or columns do not match"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unsafe_get(II)F
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    .line 79
    iget p1, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    return p1

    :cond_0
    if-ne p2, v0, :cond_3

    .line 81
    iget p1, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    return p1

    :cond_1
    if-ne p1, v0, :cond_3

    if-nez p2, :cond_2

    .line 85
    iget p1, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    return p1

    :cond_2
    if-ne p2, v0, :cond_3

    .line 87
    iget p1, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    return p1

    .line 90
    :cond_3
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
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    .line 102
    iput p3, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    return-void

    :cond_0
    if-ne p2, v0, :cond_3

    .line 104
    iput p3, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    return-void

    :cond_1
    if-ne p1, v0, :cond_3

    if-nez p2, :cond_2

    .line 108
    iput p3, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    return-void

    :cond_2
    if-ne p2, v0, :cond_3

    .line 110
    iput p3, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void

    .line 113
    :cond_3
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

    .line 54
    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 55
    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method
