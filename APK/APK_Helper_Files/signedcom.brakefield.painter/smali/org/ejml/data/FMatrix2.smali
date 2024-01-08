.class public Lorg/ejml/data/FMatrix2;
.super Ljava/lang/Object;
.source "FMatrix2.java"

# interfaces
.implements Lorg/ejml/data/FMatrixFixed;


# instance fields
.field public a1:F

.field public a2:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lorg/ejml/data/FMatrix2;->a1:F

    .line 40
    iput p2, p0, Lorg/ejml/data/FMatrix2;->a2:F

    return-void
.end method

.method public constructor <init>(Lorg/ejml/data/FMatrix2;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iget v0, p1, Lorg/ejml/data/FMatrix2;->a1:F

    iput v0, p0, Lorg/ejml/data/FMatrix2;->a1:F

    .line 45
    iget p1, p1, Lorg/ejml/data/FMatrix2;->a2:F

    iput p1, p0, Lorg/ejml/data/FMatrix2;->a2:F

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

    .line 139
    new-instance v0, Lorg/ejml/data/FMatrix2;

    invoke-direct {v0, p0}, Lorg/ejml/data/FMatrix2;-><init>(Lorg/ejml/data/FMatrix2;)V

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

    .line 154
    new-instance v0, Lorg/ejml/data/FMatrix2;

    invoke-direct {v0}, Lorg/ejml/data/FMatrix2;-><init>()V

    return-object v0
.end method

.method public get(II)F
    .locals 0

    .line 67
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/FMatrix2;->unsafe_get(II)F

    move-result p1

    return p1
.end method

.method public getNumCols()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getNumElements()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getNumRows()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getType()Lorg/ejml/data/MatrixType;
    .locals 1

    .line 159
    sget-object v0, Lorg/ejml/data/MatrixType;->UNSPECIFIED:Lorg/ejml/data/MatrixType;

    return-object v0
.end method

.method public print()V
    .locals 2

    .line 144
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v1, 0xb

    invoke-static {v0, p0, v1}, Lorg/ejml/ops/MatrixIO;->printFancy(Ljava/io/PrintStream;Lorg/ejml/data/FMatrix;I)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1

    .line 149
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, p0, p1}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/FMatrix;Ljava/lang/String;)V

    return-void
.end method

.method public set(FF)V
    .locals 0

    .line 56
    iput p1, p0, Lorg/ejml/data/FMatrix2;->a1:F

    .line 57
    iput p2, p0, Lorg/ejml/data/FMatrix2;->a2:F

    return-void
.end method

.method public set(IIF)V
    .locals 0

    .line 88
    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/data/FMatrix2;->unsafe_set(IIF)V

    return-void
.end method

.method public set(I[F)V
    .locals 1

    add-int/lit8 v0, p1, 0x0

    .line 61
    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix2;->a1:F

    add-int/lit8 p1, p1, 0x1

    .line 62
    aget p1, p2, p1

    iput p1, p0, Lorg/ejml/data/FMatrix2;->a2:F

    return-void
.end method

.method public set(Lorg/ejml/data/Matrix;)V
    .locals 4

    .line 109
    check-cast p1, Lorg/ejml/data/FMatrix;

    .line 111
    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 112
    invoke-interface {p1, v2, v2}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v0

    iput v0, p0, Lorg/ejml/data/FMatrix2;->a1:F

    .line 113
    invoke-interface {p1, v3, v2}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result p1

    iput p1, p0, Lorg/ejml/data/FMatrix2;->a2:F

    goto :goto_0

    .line 114
    :cond_0
    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 115
    invoke-interface {p1, v2, v2}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v0

    iput v0, p0, Lorg/ejml/data/FMatrix2;->a1:F

    .line 116
    invoke-interface {p1, v2, v3}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result p1

    iput p1, p0, Lorg/ejml/data/FMatrix2;->a2:F

    :goto_0
    return-void

    .line 118
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Incompatible shape"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unsafe_get(II)F
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Row or column must be zero since this is a vector"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-nez p1, :cond_2

    .line 78
    iget p1, p0, Lorg/ejml/data/FMatrix2;->a1:F

    return p1

    :cond_2
    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 80
    iget p1, p0, Lorg/ejml/data/FMatrix2;->a2:F

    return p1

    .line 82
    :cond_3
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

.method public unsafe_set(IIF)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Row or column must be zero since this is a vector"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-nez p1, :cond_2

    .line 99
    iput p3, p0, Lorg/ejml/data/FMatrix2;->a1:F

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 101
    iput p3, p0, Lorg/ejml/data/FMatrix2;->a2:F

    :goto_1
    return-void

    .line 103
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Out of range.  "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public zero()V
    .locals 1

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lorg/ejml/data/FMatrix2;->a1:F

    .line 51
    iput v0, p0, Lorg/ejml/data/FMatrix2;->a2:F

    return-void
.end method
