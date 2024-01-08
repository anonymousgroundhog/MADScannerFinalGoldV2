.class public Lorg/ejml/data/FMatrix4;
.super Ljava/lang/Object;
.source "FMatrix4.java"

# interfaces
.implements Lorg/ejml/data/FMatrixFixed;


# instance fields
.field public a1:F

.field public a2:F

.field public a3:F

.field public a4:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lorg/ejml/data/FMatrix4;->a1:F

    .line 40
    iput p2, p0, Lorg/ejml/data/FMatrix4;->a2:F

    .line 41
    iput p3, p0, Lorg/ejml/data/FMatrix4;->a3:F

    .line 42
    iput p4, p0, Lorg/ejml/data/FMatrix4;->a4:F

    return-void
.end method

.method public constructor <init>(Lorg/ejml/data/FMatrix4;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iget v0, p1, Lorg/ejml/data/FMatrix4;->a1:F

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a1:F

    .line 47
    iget v0, p1, Lorg/ejml/data/FMatrix4;->a2:F

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a2:F

    .line 48
    iget v0, p1, Lorg/ejml/data/FMatrix4;->a3:F

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a3:F

    .line 49
    iget p1, p1, Lorg/ejml/data/FMatrix4;->a4:F

    iput p1, p0, Lorg/ejml/data/FMatrix4;->a4:F

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

    .line 161
    new-instance v0, Lorg/ejml/data/FMatrix4;

    invoke-direct {v0, p0}, Lorg/ejml/data/FMatrix4;-><init>(Lorg/ejml/data/FMatrix4;)V

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

    .line 176
    new-instance v0, Lorg/ejml/data/FMatrix4;

    invoke-direct {v0}, Lorg/ejml/data/FMatrix4;-><init>()V

    return-object v0
.end method

.method public get(II)F
    .locals 0

    .line 77
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/FMatrix4;->unsafe_get(II)F

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

    const/4 v0, 0x4

    return v0
.end method

.method public getNumRows()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getType()Lorg/ejml/data/MatrixType;
    .locals 1

    .line 181
    sget-object v0, Lorg/ejml/data/MatrixType;->UNSPECIFIED:Lorg/ejml/data/MatrixType;

    return-object v0
.end method

.method public print()V
    .locals 2

    .line 166
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v1, 0xb

    invoke-static {v0, p0, v1}, Lorg/ejml/ops/MatrixIO;->printFancy(Ljava/io/PrintStream;Lorg/ejml/data/FMatrix;I)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1

    .line 171
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, p0, p1}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/FMatrix;Ljava/lang/String;)V

    return-void
.end method

.method public set(FFFF)V
    .locals 0

    .line 62
    iput p1, p0, Lorg/ejml/data/FMatrix4;->a1:F

    .line 63
    iput p2, p0, Lorg/ejml/data/FMatrix4;->a2:F

    .line 64
    iput p3, p0, Lorg/ejml/data/FMatrix4;->a3:F

    .line 65
    iput p4, p0, Lorg/ejml/data/FMatrix4;->a4:F

    return-void
.end method

.method public set(IIF)V
    .locals 0

    .line 102
    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/data/FMatrix4;->unsafe_set(IIF)V

    return-void
.end method

.method public set(I[F)V
    .locals 1

    add-int/lit8 v0, p1, 0x0

    .line 69
    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a1:F

    add-int/lit8 v0, p1, 0x1

    .line 70
    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a2:F

    add-int/lit8 v0, p1, 0x2

    .line 71
    aget v0, p2, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a3:F

    add-int/lit8 p1, p1, 0x3

    .line 72
    aget p1, p2, p1

    iput p1, p0, Lorg/ejml/data/FMatrix4;->a4:F

    return-void
.end method

.method public set(Lorg/ejml/data/Matrix;)V
    .locals 6

    .line 127
    check-cast p1, Lorg/ejml/data/FMatrix;

    .line 129
    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 130
    invoke-interface {p1, v4, v4}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v0

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a1:F

    .line 131
    invoke-interface {p1, v5, v4}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v0

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a2:F

    .line 132
    invoke-interface {p1, v2, v4}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v0

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a3:F

    .line 133
    invoke-interface {p1, v1, v4}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result p1

    iput p1, p0, Lorg/ejml/data/FMatrix4;->a4:F

    goto :goto_0

    .line 134
    :cond_0
    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v0

    if-ne v0, v5, :cond_1

    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 135
    invoke-interface {p1, v4, v4}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v0

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a1:F

    .line 136
    invoke-interface {p1, v4, v5}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v0

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a2:F

    .line 137
    invoke-interface {p1, v4, v2}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v0

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a3:F

    .line 138
    invoke-interface {p1, v4, v1}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result p1

    iput p1, p0, Lorg/ejml/data/FMatrix4;->a4:F

    :goto_0
    return-void

    .line 140
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

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Row or column must be zero since this is a vector"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-nez p1, :cond_2

    .line 88
    iget p1, p0, Lorg/ejml/data/FMatrix4;->a1:F

    return p1

    :cond_2
    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 90
    iget p1, p0, Lorg/ejml/data/FMatrix4;->a2:F

    return p1

    :cond_3
    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    .line 92
    iget p1, p0, Lorg/ejml/data/FMatrix4;->a3:F

    return p1

    :cond_4
    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    .line 94
    iget p1, p0, Lorg/ejml/data/FMatrix4;->a4:F

    return p1

    .line 96
    :cond_5
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

    .line 108
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Row or column must be zero since this is a vector"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-nez p1, :cond_2

    .line 113
    iput p3, p0, Lorg/ejml/data/FMatrix4;->a1:F

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 115
    iput p3, p0, Lorg/ejml/data/FMatrix4;->a2:F

    goto :goto_1

    :cond_3
    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    .line 117
    iput p3, p0, Lorg/ejml/data/FMatrix4;->a3:F

    goto :goto_1

    :cond_4
    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    .line 119
    iput p3, p0, Lorg/ejml/data/FMatrix4;->a4:F

    :goto_1
    return-void

    .line 121
    :cond_5
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

    .line 54
    iput v0, p0, Lorg/ejml/data/FMatrix4;->a1:F

    .line 55
    iput v0, p0, Lorg/ejml/data/FMatrix4;->a2:F

    .line 56
    iput v0, p0, Lorg/ejml/data/FMatrix4;->a3:F

    .line 57
    iput v0, p0, Lorg/ejml/data/FMatrix4;->a4:F

    return-void
.end method
