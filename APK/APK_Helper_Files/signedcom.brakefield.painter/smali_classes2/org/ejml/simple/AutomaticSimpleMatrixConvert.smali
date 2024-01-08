.class public Lorg/ejml/simple/AutomaticSimpleMatrixConvert;
.super Ljava/lang/Object;
.source "AutomaticSimpleMatrixConvert.java"


# instance fields
.field commonType:Lorg/ejml/data/MatrixType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/simple/SimpleBase<",
            "TT;>;>(",
            "Lorg/ejml/simple/SimpleBase;",
            ")TT;"
        }
    .end annotation

    .line 60
    invoke-virtual {p1}, Lorg/ejml/simple/SimpleBase;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v0

    iget-object v1, p0, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->commonType:Lorg/ejml/data/MatrixType;

    if-ne v0, v1, :cond_0

    return-object p1

    .line 63
    :cond_0
    invoke-virtual {p1}, Lorg/ejml/simple/SimpleBase;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ejml/data/MatrixType;->isDense()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->commonType:Lorg/ejml/data/MatrixType;

    invoke-virtual {v0}, Lorg/ejml/data/MatrixType;->isDense()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "\n***** WARNING *****\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 65
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Converting a sparse to dense matrix automatically."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Current auto convert code isn\'t that smart and this might have been available"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 69
    :cond_1
    iget-object v0, p1, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object v1, p0, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->commonType:Lorg/ejml/data/MatrixType;

    invoke-static {v0, v1}, Lorg/ejml/ops/ConvertMatrixType;->convert(Lorg/ejml/data/Matrix;Lorg/ejml/data/MatrixType;)Lorg/ejml/data/Matrix;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {p1, v0}, Lorg/ejml/simple/SimpleBase;->wrapMatrix(Lorg/ejml/data/Matrix;)Lorg/ejml/simple/SimpleBase;

    move-result-object p1

    return-object p1

    .line 71
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Conversion from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/ejml/simple/SimpleBase;->getType()Lorg/ejml/data/MatrixType;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->commonType:Lorg/ejml/data/MatrixType;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " not possible"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs specify([Lorg/ejml/simple/SimpleBase;)V
    .locals 9

    .line 46
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x20

    move v4, v1

    move v5, v4

    move v6, v2

    :goto_0
    if-ge v4, v0, :cond_3

    aget-object v7, p1, v4

    .line 47
    iget-object v7, v7, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v7}, Lorg/ejml/data/Matrix;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v7

    .line 48
    invoke-virtual {v7}, Lorg/ejml/data/MatrixType;->isDense()Z

    move-result v8

    if-eqz v8, :cond_0

    move v5, v2

    .line 50
    :cond_0
    invoke-virtual {v7}, Lorg/ejml/data/MatrixType;->isReal()Z

    move-result v8

    if-nez v8, :cond_1

    move v6, v1

    .line 52
    :cond_1
    invoke-virtual {v7}, Lorg/ejml/data/MatrixType;->getBits()I

    move-result v7

    const/16 v8, 0x40

    if-ne v7, v8, :cond_2

    move v3, v8

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 56
    :cond_3
    invoke-static {v5, v6, v3}, Lorg/ejml/data/MatrixType;->lookup(ZZI)Lorg/ejml/data/MatrixType;

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->commonType:Lorg/ejml/data/MatrixType;

    return-void
.end method

.method public varargs specify0(Lorg/ejml/simple/SimpleBase;[Lorg/ejml/simple/SimpleBase;)V
    .locals 3

    .line 35
    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lorg/ejml/simple/SimpleBase;

    const/4 v1, 0x0

    .line 36
    array-length v2, p2

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    array-length v1, p2

    aput-object p1, v0, v1

    .line 38
    invoke-virtual {p0, p2}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->specify([Lorg/ejml/simple/SimpleBase;)V

    return-void
.end method
