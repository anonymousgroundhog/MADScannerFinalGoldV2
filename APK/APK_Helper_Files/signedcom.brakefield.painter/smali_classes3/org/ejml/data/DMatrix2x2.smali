.class public Lorg/ejml/data/DMatrix2x2;
.super Ljava/lang/Object;
.source "DMatrix2x2.java"

# interfaces
.implements Lorg/ejml/data/DMatrixFixed;


# instance fields
.field public a11:D

.field public a12:D

.field public a21:D

.field public a22:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iput-wide p3, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 44
    iput-wide p5, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iput-wide p7, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public constructor <init>(Lorg/ejml/data/DMatrix2x2;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iget-wide v0, p1, Lorg/ejml/data/DMatrix2x2;->a11:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix2x2;->a12:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 49
    iget-wide v0, p1, Lorg/ejml/data/DMatrix2x2;->a21:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix2x2;->a22:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

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
    new-instance v0, Lorg/ejml/data/DMatrix2x2;

    invoke-direct {v0, p0}, Lorg/ejml/data/DMatrix2x2;-><init>(Lorg/ejml/data/DMatrix2x2;)V

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
    new-instance v0, Lorg/ejml/data/DMatrix2x2;

    invoke-direct {v0}, Lorg/ejml/data/DMatrix2x2;-><init>()V

    return-object v0
.end method

.method public get(II)D
    .locals 0

    .line 72
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/DMatrix2x2;->unsafe_get(II)D

    move-result-wide p1

    return-wide p1
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

    invoke-static {v0, p0, v1}, Lorg/ejml/ops/MatrixIO;->printFancy(Ljava/io/PrintStream;Lorg/ejml/data/DMatrix;I)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1

    .line 155
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, p0, p1}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/DMatrix;Ljava/lang/String;)V

    return-void
.end method

.method public set(DDDD)V
    .locals 0

    .line 61
    iput-wide p1, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iput-wide p3, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 62
    iput-wide p5, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iput-wide p7, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public set(IID)V
    .locals 0

    .line 95
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/data/DMatrix2x2;->unsafe_set(IID)V

    return-void
.end method

.method public set(I[D)V
    .locals 2

    add-int/lit8 v0, p1, 0x0

    .line 66
    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    add-int/lit8 v0, p1, 0x1

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    add-int/lit8 v0, p1, 0x2

    .line 67
    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    add-int/lit8 p1, p1, 0x3

    aget-wide p1, p2, p1

    iput-wide p1, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public set(Lorg/ejml/data/Matrix;)V
    .locals 4

    .line 118
    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 120
    check-cast p1, Lorg/ejml/data/DMatrix;

    const/4 v0, 0x0

    .line 122
    invoke-interface {p1, v0, v0}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v1

    iput-wide v1, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    const/4 v1, 0x1

    .line 123
    invoke-interface {p1, v0, v1}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 124
    invoke-interface {p1, v1, v0}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    .line 125
    invoke-interface {p1, v1, v1}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void

    .line 119
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Rows and/or columns do not match"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unsafe_get(II)D
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    .line 79
    iget-wide p1, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    return-wide p1

    :cond_0
    if-ne p2, v0, :cond_3

    .line 81
    iget-wide p1, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    return-wide p1

    :cond_1
    if-ne p1, v0, :cond_3

    if-nez p2, :cond_2

    .line 85
    iget-wide p1, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    return-wide p1

    :cond_2
    if-ne p2, v0, :cond_3

    .line 87
    iget-wide p1, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-wide p1

    .line 90
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Row and/or column out of range. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 v1, 0x0

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/gzDJ/JGPXHEH;->imO:Ljava/lang/String;

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
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    .line 102
    iput-wide p3, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    return-void

    :cond_0
    if-ne p2, v0, :cond_3

    .line 104
    iput-wide p3, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    return-void

    :cond_1
    if-ne p1, v0, :cond_3

    if-nez p2, :cond_2

    .line 108
    iput-wide p3, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    return-void

    :cond_2
    if-ne p2, v0, :cond_3

    .line 110
    iput-wide p3, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void

    .line 113
    :cond_3
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    sget-object v0, Lcom/google/android/datatransport/runtime/dagger/multibindings/KN/fYvESXZ;->HXBw:Ljava/lang/String;

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

    .line 54
    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 55
    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method
