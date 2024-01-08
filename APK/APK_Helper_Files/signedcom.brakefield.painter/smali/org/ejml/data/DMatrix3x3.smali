.class public Lorg/ejml/data/DMatrix3x3;
.super Ljava/lang/Object;
.source "DMatrix3x3.java"

# interfaces
.implements Lorg/ejml/data/DMatrixFixed;


# instance fields
.field public a11:D

.field public a12:D

.field public a13:D

.field public a21:D

.field public a22:D

.field public a23:D

.field public a31:D

.field public a32:D

.field public a33:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDDDDDDD)V
    .locals 3

    move-object v0, p0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 45
    iput-wide v1, v0, Lorg/ejml/data/DMatrix3x3;->a11:D

    move-wide v1, p3

    iput-wide v1, v0, Lorg/ejml/data/DMatrix3x3;->a12:D

    move-wide v1, p5

    iput-wide v1, v0, Lorg/ejml/data/DMatrix3x3;->a13:D

    move-wide v1, p7

    .line 46
    iput-wide v1, v0, Lorg/ejml/data/DMatrix3x3;->a21:D

    move-wide v1, p9

    iput-wide v1, v0, Lorg/ejml/data/DMatrix3x3;->a22:D

    move-wide v1, p11

    iput-wide v1, v0, Lorg/ejml/data/DMatrix3x3;->a23:D

    move-wide/from16 v1, p13

    .line 47
    iput-wide v1, v0, Lorg/ejml/data/DMatrix3x3;->a31:D

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lorg/ejml/data/DMatrix3x3;->a32:D

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public constructor <init>(Lorg/ejml/data/DMatrix3x3;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 52
    iget-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 53
    iget-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

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
    new-instance v0, Lorg/ejml/data/DMatrix3x3;

    invoke-direct {v0, p0}, Lorg/ejml/data/DMatrix3x3;-><init>(Lorg/ejml/data/DMatrix3x3;)V

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
    new-instance v0, Lorg/ejml/data/DMatrix3x3;

    invoke-direct {v0}, Lorg/ejml/data/DMatrix3x3;-><init>()V

    return-object v0
.end method

.method public get(II)D
    .locals 0

    .line 80
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/DMatrix3x3;->unsafe_get(II)D

    move-result-wide p1

    return-wide p1
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

    invoke-static {v0, p0, v1}, Lorg/ejml/ops/MatrixIO;->printFancy(Ljava/io/PrintStream;Lorg/ejml/data/DMatrix;I)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1

    .line 192
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, p0, p1}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/DMatrix;Ljava/lang/String;)V

    return-void
.end method

.method public set(DDDDDDDDD)V
    .locals 3

    move-object v0, p0

    move-wide v1, p1

    .line 67
    iput-wide v1, v0, Lorg/ejml/data/DMatrix3x3;->a11:D

    move-wide v1, p3

    iput-wide v1, v0, Lorg/ejml/data/DMatrix3x3;->a12:D

    move-wide v1, p5

    iput-wide v1, v0, Lorg/ejml/data/DMatrix3x3;->a13:D

    move-wide v1, p7

    .line 68
    iput-wide v1, v0, Lorg/ejml/data/DMatrix3x3;->a21:D

    move-wide v1, p9

    iput-wide v1, v0, Lorg/ejml/data/DMatrix3x3;->a22:D

    move-wide v1, p11

    iput-wide v1, v0, Lorg/ejml/data/DMatrix3x3;->a23:D

    move-wide/from16 v1, p13

    .line 69
    iput-wide v1, v0, Lorg/ejml/data/DMatrix3x3;->a31:D

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lorg/ejml/data/DMatrix3x3;->a32:D

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public set(IID)V
    .locals 0

    .line 115
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/data/DMatrix3x3;->unsafe_set(IID)V

    return-void
.end method

.method public set(I[D)V
    .locals 2

    add-int/lit8 v0, p1, 0x0

    .line 73
    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    add-int/lit8 v0, p1, 0x1

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    add-int/lit8 v0, p1, 0x2

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    add-int/lit8 v0, p1, 0x3

    .line 74
    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    add-int/lit8 v0, p1, 0x4

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    add-int/lit8 v0, p1, 0x5

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    add-int/lit8 v0, p1, 0x6

    .line 75
    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    add-int/lit8 v0, p1, 0x7

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    add-int/lit8 p1, p1, 0x8

    aget-wide p1, p2, p1

    iput-wide p1, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public set(Lorg/ejml/data/Matrix;)V
    .locals 5

    .line 150
    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 152
    check-cast p1, Lorg/ejml/data/DMatrix;

    const/4 v0, 0x0

    .line 154
    invoke-interface {p1, v0, v0}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v1

    iput-wide v1, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    const/4 v1, 0x1

    .line 155
    invoke-interface {p1, v0, v1}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    const/4 v2, 0x2

    .line 156
    invoke-interface {p1, v0, v2}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v3

    iput-wide v3, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 157
    invoke-interface {p1, v1, v0}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v3

    iput-wide v3, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    .line 158
    invoke-interface {p1, v1, v1}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v3

    iput-wide v3, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    .line 159
    invoke-interface {p1, v1, v2}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v3

    iput-wide v3, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 160
    invoke-interface {p1, v2, v0}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v3

    iput-wide v3, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    .line 161
    invoke-interface {p1, v2, v1}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    .line 162
    invoke-interface {p1, v2, v2}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void

    .line 151
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Rows and/or columns do not match"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unsafe_get(II)D
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_2

    if-nez p2, :cond_0

    .line 87
    iget-wide p1, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    return-wide p1

    :cond_0
    if-ne p2, v1, :cond_1

    .line 89
    iget-wide p1, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    return-wide p1

    :cond_1
    if-ne p2, v0, :cond_8

    .line 91
    iget-wide p1, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    return-wide p1

    :cond_2
    if-ne p1, v1, :cond_5

    if-nez p2, :cond_3

    .line 95
    iget-wide p1, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    return-wide p1

    :cond_3
    if-ne p2, v1, :cond_4

    .line 97
    iget-wide p1, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    return-wide p1

    :cond_4
    if-ne p2, v0, :cond_8

    .line 99
    iget-wide p1, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    return-wide p1

    :cond_5
    if-ne p1, v0, :cond_8

    if-nez p2, :cond_6

    .line 103
    iget-wide p1, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    return-wide p1

    :cond_6
    if-ne p2, v1, :cond_7

    .line 105
    iget-wide p1, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    return-wide p1

    :cond_7
    if-ne p2, v0, :cond_8

    .line 107
    iget-wide p1, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-wide p1

    .line 110
    :cond_8
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
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_2

    if-nez p2, :cond_0

    .line 122
    iput-wide p3, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    return-void

    :cond_0
    if-ne p2, v1, :cond_1

    .line 124
    iput-wide p3, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    return-void

    :cond_1
    if-ne p2, v0, :cond_8

    .line 126
    iput-wide p3, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    return-void

    :cond_2
    if-ne p1, v1, :cond_5

    if-nez p2, :cond_3

    .line 130
    iput-wide p3, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    return-void

    :cond_3
    if-ne p2, v1, :cond_4

    .line 132
    iput-wide p3, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    return-void

    :cond_4
    if-ne p2, v0, :cond_8

    .line 134
    iput-wide p3, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    return-void

    :cond_5
    if-ne p1, v0, :cond_8

    if-nez p2, :cond_6

    .line 138
    iput-wide p3, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    return-void

    :cond_6
    if-ne p2, v1, :cond_7

    .line 140
    iput-wide p3, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    return-void

    :cond_7
    if-ne p2, v0, :cond_8

    .line 142
    iput-wide p3, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void

    .line 145
    :cond_8
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    sget-object v0, Lcom/brakefield/infinitestudio/image/eps/Jpb/CfMJvi;->nvyg:Ljava/lang/String;

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

    .line 58
    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 59
    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 60
    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method
