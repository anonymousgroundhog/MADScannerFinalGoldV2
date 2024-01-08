.class public Lorg/ejml/simple/SimpleMatrix;
.super Lorg/ejml/simple/SimpleBase;
.source "SimpleMatrix.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ejml/simple/SimpleBase<",
        "Lorg/ejml/simple/SimpleMatrix;",
        ">;"
    }
.end annotation


# static fields
.field public static final END:I = 0x7fffffff


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 223
    invoke-direct {p0}, Lorg/ejml/simple/SimpleBase;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 150
    invoke-direct {p0}, Lorg/ejml/simple/SimpleBase;-><init>()V

    .line 151
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, p1, p2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/ejml/simple/SimpleMatrix;->setMatrix(Lorg/ejml/data/Matrix;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/Class;)V
    .locals 0

    .line 155
    invoke-static {p3}, Lorg/ejml/data/MatrixType;->lookup(Ljava/lang/Class;)Lorg/ejml/data/MatrixType;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/ejml/simple/SimpleMatrix;-><init>(IILorg/ejml/data/MatrixType;)V

    return-void
.end method

.method public constructor <init>(IILorg/ejml/data/MatrixType;)V
    .locals 1

    .line 165
    invoke-direct {p0}, Lorg/ejml/simple/SimpleBase;-><init>()V

    .line 166
    sget-object v0, Lorg/ejml/simple/SimpleMatrix$1;->$SwitchMap$org$ejml$data$MatrixType:[I

    invoke-virtual {p3}, Lorg/ejml/data/MatrixType;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_0

    .line 186
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unknown matrix type"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 183
    :pswitch_0
    new-instance p3, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-direct {p3, p1, p2}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(II)V

    invoke-virtual {p0, p3}, Lorg/ejml/simple/SimpleMatrix;->setMatrix(Lorg/ejml/data/Matrix;)V

    goto :goto_0

    .line 180
    :pswitch_1
    new-instance p3, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-direct {p3, p1, p2}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(II)V

    invoke-virtual {p0, p3}, Lorg/ejml/simple/SimpleMatrix;->setMatrix(Lorg/ejml/data/Matrix;)V

    goto :goto_0

    .line 177
    :pswitch_2
    new-instance p3, Lorg/ejml/data/CMatrixRMaj;

    invoke-direct {p3, p1, p2}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    invoke-virtual {p0, p3}, Lorg/ejml/simple/SimpleMatrix;->setMatrix(Lorg/ejml/data/Matrix;)V

    goto :goto_0

    .line 174
    :pswitch_3
    new-instance p3, Lorg/ejml/data/ZMatrixRMaj;

    invoke-direct {p3, p1, p2}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    invoke-virtual {p0, p3}, Lorg/ejml/simple/SimpleMatrix;->setMatrix(Lorg/ejml/data/Matrix;)V

    goto :goto_0

    .line 171
    :pswitch_4
    new-instance p3, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p3, p1, p2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    invoke-virtual {p0, p3}, Lorg/ejml/simple/SimpleMatrix;->setMatrix(Lorg/ejml/data/Matrix;)V

    goto :goto_0

    .line 168
    :pswitch_5
    new-instance p3, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {p3, p1, p2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    invoke-virtual {p0, p3}, Lorg/ejml/simple/SimpleMatrix;->setMatrix(Lorg/ejml/data/Matrix;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(IIZ[D)V
    .locals 1

    .line 116
    invoke-direct {p0}, Lorg/ejml/simple/SimpleBase;-><init>()V

    .line 117
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/ejml/data/DMatrixRMaj;-><init>(IIZ[D)V

    invoke-virtual {p0, v0}, Lorg/ejml/simple/SimpleMatrix;->setMatrix(Lorg/ejml/data/Matrix;)V

    return-void
.end method

.method public constructor <init>(IIZ[F)V
    .locals 1

    .line 120
    invoke-direct {p0}, Lorg/ejml/simple/SimpleBase;-><init>()V

    .line 121
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/ejml/data/FMatrixRMaj;-><init>(IIZ[F)V

    invoke-virtual {p0, v0}, Lorg/ejml/simple/SimpleMatrix;->setMatrix(Lorg/ejml/data/Matrix;)V

    return-void
.end method

.method public constructor <init>(Lorg/ejml/data/Matrix;)V
    .locals 3

    .line 204
    invoke-direct {p0}, Lorg/ejml/simple/SimpleBase;-><init>()V

    .line 206
    instance-of v0, p1, Lorg/ejml/data/DMatrixRBlock;

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v1

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 208
    check-cast p1, Lorg/ejml/data/DMatrixRBlock;

    invoke-static {p1, v0}, Lorg/ejml/ops/DConvertMatrixStruct;->convert(Lorg/ejml/data/DMatrixRBlock;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    goto :goto_0

    .line 210
    :cond_0
    instance-of v0, p1, Lorg/ejml/data/FMatrixRBlock;

    if-eqz v0, :cond_1

    .line 211
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v1

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 212
    check-cast p1, Lorg/ejml/data/FMatrixRBlock;

    invoke-static {p1, v0}, Lorg/ejml/ops/FConvertMatrixStruct;->convert(Lorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

    goto :goto_0

    .line 215
    :cond_1
    invoke-interface {p1}, Lorg/ejml/data/Matrix;->copy()Lorg/ejml/data/Matrix;

    move-result-object v0

    .line 217
    :goto_0
    invoke-virtual {p0, v0}, Lorg/ejml/simple/SimpleMatrix;->setMatrix(Lorg/ejml/data/Matrix;)V

    return-void
.end method

.method public constructor <init>(Lorg/ejml/simple/SimpleMatrix;)V
    .locals 0

    .line 195
    invoke-direct {p0}, Lorg/ejml/simple/SimpleBase;-><init>()V

    .line 196
    iget-object p1, p1, Lorg/ejml/simple/SimpleMatrix;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->copy()Lorg/ejml/data/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ejml/simple/SimpleMatrix;->setMatrix(Lorg/ejml/data/Matrix;)V

    return-void
.end method

.method public constructor <init>([[D)V
    .locals 1

    .line 135
    invoke-direct {p0}, Lorg/ejml/simple/SimpleBase;-><init>()V

    .line 136
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, p1}, Lorg/ejml/data/DMatrixRMaj;-><init>([[D)V

    invoke-virtual {p0, v0}, Lorg/ejml/simple/SimpleMatrix;->setMatrix(Lorg/ejml/data/Matrix;)V

    return-void
.end method

.method public constructor <init>([[F)V
    .locals 1

    .line 139
    invoke-direct {p0}, Lorg/ejml/simple/SimpleBase;-><init>()V

    .line 140
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, p1}, Lorg/ejml/data/FMatrixRMaj;-><init>([[F)V

    invoke-virtual {p0, v0}, Lorg/ejml/simple/SimpleMatrix;->setMatrix(Lorg/ejml/data/Matrix;)V

    return-void
.end method

.method public static varargs diag(Ljava/lang/Class;[D)Lorg/ejml/simple/SimpleMatrix;
    .locals 3

    .line 278
    new-instance v0, Lorg/ejml/simple/SimpleMatrix;

    array-length v1, p1

    array-length v2, p1

    invoke-direct {v0, v1, v2, p0}, Lorg/ejml/simple/SimpleMatrix;-><init>(IILjava/lang/Class;)V

    const/4 p0, 0x0

    .line 279
    :goto_0
    array-length v1, p1

    if-ge p0, v1, :cond_0

    .line 280
    aget-wide v1, p1, p0

    invoke-virtual {v0, p0, p0, v1, v2}, Lorg/ejml/simple/SimpleMatrix;->set(IID)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static varargs diag([D)Lorg/ejml/simple/SimpleMatrix;
    .locals 0

    .line 269
    invoke-static {p0}, Lorg/ejml/dense/row/CommonOps_DDRM;->diag([D)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p0

    .line 270
    invoke-static {p0}, Lorg/ejml/simple/SimpleMatrix;->wrap(Lorg/ejml/data/Matrix;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object p0

    return-object p0
.end method

.method public static identity(I)Lorg/ejml/simple/SimpleMatrix;
    .locals 1

    .line 245
    const-class v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-static {p0, v0}, Lorg/ejml/simple/SimpleMatrix;->identity(ILjava/lang/Class;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object p0

    return-object p0
.end method

.method public static identity(ILjava/lang/Class;)Lorg/ejml/simple/SimpleMatrix;
    .locals 1

    .line 249
    new-instance v0, Lorg/ejml/simple/SimpleMatrix;

    invoke-direct {v0, p0, p0, p1}, Lorg/ejml/simple/SimpleMatrix;-><init>(IILjava/lang/Class;)V

    .line 250
    iget-object p0, v0, Lorg/ejml/simple/SimpleMatrix;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object p1, v0, Lorg/ejml/simple/SimpleMatrix;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {p0, p1}, Lorg/ejml/simple/SimpleOperations;->setIdentity(Lorg/ejml/data/Matrix;)V

    return-object v0
.end method

.method public static randomNormal(Lorg/ejml/simple/SimpleMatrix;Ljava/util/Random;)Lorg/ejml/simple/SimpleMatrix;
    .locals 4

    .line 321
    new-instance v0, Lorg/ejml/simple/SimpleMatrix;

    invoke-virtual {p0}, Lorg/ejml/simple/SimpleMatrix;->numRows()I

    move-result v1

    invoke-virtual {p0}, Lorg/ejml/simple/SimpleMatrix;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lorg/ejml/simple/SimpleMatrix;-><init>(IILorg/ejml/data/MatrixType;)V

    .line 323
    sget-object v1, Lorg/ejml/simple/SimpleMatrix$1;->$SwitchMap$org$ejml$data$MatrixType:[I

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleMatrix;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ejml/data/MatrixType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v3, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 332
    new-instance v1, Lorg/ejml/dense/row/CovarianceRandomDraw_FDRM;

    invoke-virtual {p0}, Lorg/ejml/simple/SimpleMatrix;->getMatrix()Lorg/ejml/data/Matrix;

    move-result-object p0

    check-cast p0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v1, p1, p0}, Lorg/ejml/dense/row/CovarianceRandomDraw_FDRM;-><init>(Ljava/util/Random;Lorg/ejml/data/FMatrixRMaj;)V

    .line 334
    invoke-virtual {v0}, Lorg/ejml/simple/SimpleMatrix;->getMatrix()Lorg/ejml/data/Matrix;

    move-result-object p0

    check-cast p0, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v1, p0}, Lorg/ejml/dense/row/CovarianceRandomDraw_FDRM;->next(Lorg/ejml/data/FMatrixRMaj;)V

    goto :goto_0

    .line 339
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Matrix type is currently not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 325
    :cond_1
    new-instance v1, Lorg/ejml/dense/row/CovarianceRandomDraw_DDRM;

    invoke-virtual {p0}, Lorg/ejml/simple/SimpleMatrix;->getMatrix()Lorg/ejml/data/Matrix;

    move-result-object p0

    check-cast p0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v1, p1, p0}, Lorg/ejml/dense/row/CovarianceRandomDraw_DDRM;-><init>(Ljava/util/Random;Lorg/ejml/data/DMatrixRMaj;)V

    .line 327
    invoke-virtual {v0}, Lorg/ejml/simple/SimpleMatrix;->getMatrix()Lorg/ejml/data/Matrix;

    move-result-object p0

    check-cast p0, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v1, p0}, Lorg/ejml/dense/row/CovarianceRandomDraw_DDRM;->next(Lorg/ejml/data/DMatrixRMaj;)V

    :goto_0
    return-object v0
.end method

.method public static random_DDRM(IIDDLjava/util/Random;)Lorg/ejml/simple/SimpleMatrix;
    .locals 7

    .line 298
    new-instance v0, Lorg/ejml/simple/SimpleMatrix;

    invoke-direct {v0, p0, p1}, Lorg/ejml/simple/SimpleMatrix;-><init>(II)V

    .line 299
    iget-object p0, v0, Lorg/ejml/simple/SimpleMatrix;->mat:Lorg/ejml/data/Matrix;

    move-object v1, p0

    check-cast v1, Lorg/ejml/data/DMatrixRMaj;

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Lorg/ejml/dense/row/RandomMatrices_DDRM;->fillUniform(Lorg/ejml/data/DMatrixD1;DDLjava/util/Random;)V

    return-object v0
.end method

.method public static random_FDRM(IIFFLjava/util/Random;)Lorg/ejml/simple/SimpleMatrix;
    .locals 2

    .line 304
    new-instance v0, Lorg/ejml/simple/SimpleMatrix;

    const-class v1, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, p0, p1, v1}, Lorg/ejml/simple/SimpleMatrix;-><init>(IILjava/lang/Class;)V

    .line 305
    iget-object p0, v0, Lorg/ejml/simple/SimpleMatrix;->mat:Lorg/ejml/data/Matrix;

    check-cast p0, Lorg/ejml/data/FMatrixRMaj;

    invoke-static {p0, p2, p3, p4}, Lorg/ejml/dense/row/RandomMatrices_FDRM;->fillUniform(Lorg/ejml/data/FMatrixD1;FFLjava/util/Random;)V

    return-object v0
.end method

.method public static wrap(Lorg/ejml/data/Matrix;)Lorg/ejml/simple/SimpleMatrix;
    .locals 1

    .line 232
    new-instance v0, Lorg/ejml/simple/SimpleMatrix;

    invoke-direct {v0}, Lorg/ejml/simple/SimpleMatrix;-><init>()V

    .line 233
    invoke-virtual {v0, p0}, Lorg/ejml/simple/SimpleMatrix;->setMatrix(Lorg/ejml/data/Matrix;)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic createMatrix(IILorg/ejml/data/MatrixType;)Lorg/ejml/simple/SimpleBase;
    .locals 0

    .line 87
    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/SimpleMatrix;->createMatrix(IILorg/ejml/data/MatrixType;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object p1

    return-object p1
.end method

.method protected createMatrix(IILorg/ejml/data/MatrixType;)Lorg/ejml/simple/SimpleMatrix;
    .locals 1

    .line 347
    new-instance v0, Lorg/ejml/simple/SimpleMatrix;

    invoke-direct {v0, p1, p2, p3}, Lorg/ejml/simple/SimpleMatrix;-><init>(IILorg/ejml/data/MatrixType;)V

    return-object v0
.end method

.method protected bridge synthetic wrapMatrix(Lorg/ejml/data/Matrix;)Lorg/ejml/simple/SimpleBase;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lorg/ejml/simple/SimpleMatrix;->wrapMatrix(Lorg/ejml/data/Matrix;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object p1

    return-object p1
.end method

.method protected wrapMatrix(Lorg/ejml/data/Matrix;)Lorg/ejml/simple/SimpleMatrix;
    .locals 1

    .line 352
    new-instance v0, Lorg/ejml/simple/SimpleMatrix;

    invoke-direct {v0, p1}, Lorg/ejml/simple/SimpleMatrix;-><init>(Lorg/ejml/data/Matrix;)V

    return-object v0
.end method
