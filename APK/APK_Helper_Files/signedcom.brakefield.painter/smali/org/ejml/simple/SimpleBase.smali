.class public abstract Lorg/ejml/simple/SimpleBase;
.super Ljava/lang/Object;
.source "SimpleBase.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/ejml/simple/SimpleBase<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x8ba093e2L


# instance fields
.field protected transient convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

.field protected mat:Lorg/ejml/data/Matrix;

.field protected ops:Lorg/ejml/simple/SimpleOperations;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    invoke-direct {v0}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;-><init>()V

    iput-object v0, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    return-void
.end method

.method protected constructor <init>(II)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    invoke-direct {v0}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;-><init>()V

    iput-object v0, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    .line 60
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, p1, p2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/ejml/simple/SimpleBase;->setMatrix(Lorg/ejml/data/Matrix;)V

    return-void
.end method

.method public static loadBinary(Ljava/lang/String;)Lorg/ejml/simple/SimpleMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1241
    invoke-static {p0}, Lorg/ejml/ops/MatrixIO;->loadBin(Ljava/lang/String;)Lorg/ejml/data/DMatrix;

    move-result-object p0

    .line 1244
    instance-of v0, p0, Lorg/ejml/data/DMatrixRMaj;

    if-eqz v0, :cond_0

    .line 1245
    check-cast p0, Lorg/ejml/data/DMatrixRMaj;

    invoke-static {p0}, Lorg/ejml/simple/SimpleMatrix;->wrap(Lorg/ejml/data/Matrix;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object p0

    return-object p0

    .line 1248
    :cond_0
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, p0}, Lorg/ejml/data/DMatrixRMaj;-><init>(Lorg/ejml/data/DMatrix;)V

    invoke-static {v0}, Lorg/ejml/simple/SimpleMatrix;->wrap(Lorg/ejml/data/Matrix;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object p0

    return-object p0
.end method

.method protected static lookupOps(Lorg/ejml/data/MatrixType;)Lorg/ejml/simple/SimpleOperations;
    .locals 3

    .line 122
    sget-object v0, Lorg/ejml/simple/SimpleBase$1;->$SwitchMap$org$ejml$data$MatrixType:[I

    invoke-virtual {p0}, Lorg/ejml/data/MatrixType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 136
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown Matrix Type. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :pswitch_0
    new-instance p0, Lorg/ejml/simple/ops/SimpleOperations_FSCC;

    invoke-direct {p0}, Lorg/ejml/simple/ops/SimpleOperations_FSCC;-><init>()V

    return-object p0

    .line 132
    :pswitch_1
    new-instance p0, Lorg/ejml/simple/ops/SimpleOperations_DSCC;

    invoke-direct {p0}, Lorg/ejml/simple/ops/SimpleOperations_DSCC;-><init>()V

    return-object p0

    .line 130
    :pswitch_2
    new-instance p0, Lorg/ejml/simple/ops/SimpleOperations_CDRM;

    invoke-direct {p0}, Lorg/ejml/simple/ops/SimpleOperations_CDRM;-><init>()V

    return-object p0

    .line 128
    :pswitch_3
    new-instance p0, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;

    invoke-direct {p0}, Lorg/ejml/simple/ops/SimpleOperations_ZDRM;-><init>()V

    return-object p0

    .line 126
    :pswitch_4
    new-instance p0, Lorg/ejml/simple/ops/SimpleOperations_FDRM;

    invoke-direct {p0}, Lorg/ejml/simple/ops/SimpleOperations_FDRM;-><init>()V

    return-object p0

    .line 124
    :pswitch_5
    new-instance p0, Lorg/ejml/simple/ops/SimpleOperations_DDRM;

    invoke-direct {p0}, Lorg/ejml/simple/ops/SimpleOperations_DDRM;-><init>()V

    return-object p0

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

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 68
    new-instance p1, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    invoke-direct {p1}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;-><init>()V

    iput-object p1, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    return-void
.end method


# virtual methods
.method public bits()I
    .locals 1

    .line 1306
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0}, Lorg/ejml/data/Matrix;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ejml/data/MatrixType;->getBits()I

    move-result v0

    return v0
.end method

.method public cols(II)Lorg/ejml/simple/SimpleBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 1398
    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/ejml/simple/SimpleBase;->extractMatrix(IIII)Lorg/ejml/simple/SimpleBase;

    move-result-object p1

    return-object p1
.end method

.method public combine(IILorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)TT;"
        }
    .end annotation

    .line 972
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/ejml/simple/SimpleBase;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v3, 0x1

    aput-object p3, v1, v3

    invoke-virtual {v0, v1}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->specify([Lorg/ejml/simple/SimpleBase;)V

    .line 973
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    invoke-virtual {v0, p0}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->convert(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    .line 974
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    invoke-virtual {v1, p3}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->convert(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object p3

    const v1, 0x7fffffff

    if-ne p1, v1, :cond_0

    .line 977
    iget-object p1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result p1

    :cond_0
    if-ne p2, v1, :cond_1

    .line 981
    iget-object p2, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {p2}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result p2

    .line 984
    :cond_1
    invoke-virtual {p3}, Lorg/ejml/simple/SimpleBase;->numRows()I

    move-result v1

    add-int/2addr v1, p1

    .line 985
    invoke-virtual {p3}, Lorg/ejml/simple/SimpleBase;->numCols()I

    move-result v3

    add-int/2addr v3, p2

    .line 989
    iget-object v4, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v4}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v4

    if-gt v1, v4, :cond_3

    iget-object v4, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v4}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v4

    if-le v3, v4, :cond_2

    goto :goto_0

    .line 996
    :cond_2
    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->copy()Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    goto :goto_1

    .line 990
    :cond_3
    :goto_0
    iget-object v4, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v4}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 991
    iget-object v4, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v4}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 993
    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lorg/ejml/simple/SimpleBase;->createMatrix(IILorg/ejml/data/MatrixType;)Lorg/ejml/simple/SimpleBase;

    move-result-object v1

    .line 994
    invoke-virtual {v1, v2, v2, v0}, Lorg/ejml/simple/SimpleBase;->insertIntoThis(IILorg/ejml/simple/SimpleBase;)V

    move-object v0, v1

    .line 999
    :goto_1
    invoke-virtual {v0, p1, p2, p3}, Lorg/ejml/simple/SimpleBase;->insertIntoThis(IILorg/ejml/simple/SimpleBase;)V

    return-object v0
.end method

.method public varargs concatColumns([Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/ejml/simple/SimpleBase;",
            ")TT;"
        }
    .end annotation

    .line 1319
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    invoke-virtual {v0, p0, p1}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->specify0(Lorg/ejml/simple/SimpleBase;[Lorg/ejml/simple/SimpleBase;)V

    .line 1320
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    invoke-virtual {v0, p0}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->convert(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    .line 1322
    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->numCols()I

    move-result v1

    .line 1323
    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->numRows()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    .line 1324
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_0

    .line 1325
    aget-object v5, p1, v4

    invoke-virtual {v5}, Lorg/ejml/simple/SimpleBase;->numRows()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1326
    aget-object v5, p1, v4

    invoke-virtual {v5}, Lorg/ejml/simple/SimpleBase;->numCols()I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1329
    :cond_0
    iget-object v4, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    iget-object v4, v4, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->commonType:Lorg/ejml/data/MatrixType;

    invoke-virtual {v4, v2, v1}, Lorg/ejml/data/MatrixType;->create(II)Lorg/ejml/data/Matrix;

    move-result-object v1

    invoke-static {v1}, Lorg/ejml/simple/SimpleMatrix;->wrap(Lorg/ejml/data/Matrix;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object v1

    .line 1331
    iget-object v4, v0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v5, v0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->numRows()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->numCols()I

    move-result v9

    iget-object v10, v1, Lorg/ejml/simple/SimpleMatrix;->mat:Lorg/ejml/data/Matrix;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v4 .. v12}, Lorg/ejml/simple/SimpleOperations;->extract(Lorg/ejml/data/Matrix;IIIILorg/ejml/data/Matrix;II)V

    .line 1332
    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->numCols()I

    move-result v2

    .line 1333
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 1334
    iget-object v4, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->convert(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object v4

    iget-object v5, v4, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    .line 1335
    invoke-interface {v5}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v13

    .line 1336
    invoke-interface {v5}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v7

    .line 1337
    iget-object v4, v0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget-object v10, v1, Lorg/ejml/simple/SimpleMatrix;->mat:Lorg/ejml/data/Matrix;

    const/4 v11, 0x0

    move v9, v13

    move v12, v2

    invoke-interface/range {v4 .. v12}, Lorg/ejml/simple/SimpleOperations;->extract(Lorg/ejml/data/Matrix;IIIILorg/ejml/data/Matrix;II)V

    add-int/2addr v2, v13

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public varargs concatRows([Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/ejml/simple/SimpleBase;",
            ")TT;"
        }
    .end annotation

    .line 1354
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    invoke-virtual {v0, p0, p1}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->specify0(Lorg/ejml/simple/SimpleBase;[Lorg/ejml/simple/SimpleBase;)V

    .line 1355
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    invoke-virtual {v0, p0}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->convert(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    .line 1357
    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->numCols()I

    move-result v1

    .line 1358
    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->numRows()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    .line 1359
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_0

    .line 1360
    aget-object v5, p1, v4

    invoke-virtual {v5}, Lorg/ejml/simple/SimpleBase;->numRows()I

    move-result v5

    add-int/2addr v2, v5

    .line 1361
    aget-object v5, p1, v4

    invoke-virtual {v5}, Lorg/ejml/simple/SimpleBase;->numCols()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1364
    :cond_0
    iget-object v4, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    iget-object v4, v4, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->commonType:Lorg/ejml/data/MatrixType;

    invoke-virtual {v4, v2, v1}, Lorg/ejml/data/MatrixType;->create(II)Lorg/ejml/data/Matrix;

    move-result-object v1

    invoke-static {v1}, Lorg/ejml/simple/SimpleMatrix;->wrap(Lorg/ejml/data/Matrix;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object v1

    .line 1366
    iget-object v4, v0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v5, v0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->numRows()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->numCols()I

    move-result v9

    iget-object v10, v1, Lorg/ejml/simple/SimpleMatrix;->mat:Lorg/ejml/data/Matrix;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v4 .. v12}, Lorg/ejml/simple/SimpleOperations;->extract(Lorg/ejml/data/Matrix;IIIILorg/ejml/data/Matrix;II)V

    .line 1367
    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->numRows()I

    move-result v2

    .line 1368
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 1369
    iget-object v4, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->convert(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object v4

    iget-object v5, v4, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    .line 1370
    invoke-interface {v5}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v9

    .line 1371
    invoke-interface {v5}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v13

    .line 1372
    iget-object v4, v0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget-object v10, v1, Lorg/ejml/simple/SimpleMatrix;->mat:Lorg/ejml/data/Matrix;

    const/4 v12, 0x0

    move v7, v13

    move v11, v2

    invoke-interface/range {v4 .. v12}, Lorg/ejml/simple/SimpleOperations;->extract(Lorg/ejml/data/Matrix;IIIILorg/ejml/data/Matrix;II)V

    add-int/2addr v2, v13

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public conditionP2()D
    .locals 2

    .line 537
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0, v1}, Lorg/ejml/simple/SimpleOperations;->conditionP2(Lorg/ejml/data/Matrix;)D

    move-result-wide v0

    return-wide v0
.end method

.method public convertToDense()V
    .locals 3

    .line 1490
    sget-object v0, Lorg/ejml/simple/SimpleBase$1;->$SwitchMap$org$ejml$data$MatrixType:[I

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v1}, Lorg/ejml/data/Matrix;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ejml/data/MatrixType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1509
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not a sparse matrix!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1498
    :pswitch_0
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v1

    iget-object v2, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v2}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 1499
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/FMatrix;

    invoke-static {v1, v0}, Lorg/ejml/ops/FConvertMatrixStruct;->convert(Lorg/ejml/data/FMatrix;Lorg/ejml/data/FMatrix;)V

    .line 1500
    invoke-virtual {p0, v0}, Lorg/ejml/simple/SimpleBase;->setMatrix(Lorg/ejml/data/Matrix;)V

    goto :goto_0

    .line 1492
    :pswitch_1
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v1

    iget-object v2, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v2}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 1493
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/DMatrix;

    invoke-static {v1, v0}, Lorg/ejml/ops/DConvertMatrixStruct;->convert(Lorg/ejml/data/DMatrix;Lorg/ejml/data/DMatrix;)V

    .line 1494
    invoke-virtual {p0, v0}, Lorg/ejml/simple/SimpleBase;->setMatrix(Lorg/ejml/data/Matrix;)V

    :goto_0
    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public convertToSparse()V
    .locals 4

    .line 1464
    sget-object v0, Lorg/ejml/simple/SimpleBase$1;->$SwitchMap$org$ejml$data$MatrixType:[I

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v1}, Lorg/ejml/data/Matrix;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ejml/data/MatrixType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1482
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Conversion not supported!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1472
    :cond_1
    new-instance v0, Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v1

    iget-object v2, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v2}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(II)V

    .line 1473
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/FMatrixRMaj;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/ejml/ops/FConvertMatrixStruct;->convert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixSparseCSC;F)Lorg/ejml/data/FMatrixSparseCSC;

    .line 1474
    invoke-virtual {p0, v0}, Lorg/ejml/simple/SimpleBase;->setMatrix(Lorg/ejml/data/Matrix;)V

    goto :goto_0

    .line 1466
    :cond_2
    new-instance v0, Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v1

    iget-object v2, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v2}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(II)V

    .line 1467
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/DMatrixRMaj;

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/ejml/ops/DConvertMatrixStruct;->convert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixSparseCSC;D)Lorg/ejml/data/DMatrixSparseCSC;

    .line 1468
    invoke-virtual {p0, v0}, Lorg/ejml/simple/SimpleBase;->setMatrix(Lorg/ejml/data/Matrix;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public copy()Lorg/ejml/simple/SimpleBase;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 742
    invoke-virtual {p0}, Lorg/ejml/simple/SimpleBase;->createLike()Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    .line 743
    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/Matrix;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/Matrix;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/ejml/data/Matrix;->set(Lorg/ejml/data/Matrix;)V

    return-object v0
.end method

.method public createLike()Lorg/ejml/simple/SimpleBase;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1414
    invoke-virtual {p0}, Lorg/ejml/simple/SimpleBase;->numRows()I

    move-result v0

    invoke-virtual {p0}, Lorg/ejml/simple/SimpleBase;->numCols()I

    move-result v1

    invoke-virtual {p0}, Lorg/ejml/simple/SimpleBase;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/ejml/simple/SimpleBase;->createMatrix(IILorg/ejml/data/MatrixType;)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    return-object v0
.end method

.method protected abstract createMatrix(IILorg/ejml/data/MatrixType;)Lorg/ejml/simple/SimpleBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/ejml/data/MatrixType;",
            ")TT;"
        }
    .end annotation
.end method

.method public determinant()D
    .locals 3

    .line 547
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0, v1}, Lorg/ejml/simple/SimpleOperations;->determinant(Lorg/ejml/data/Matrix;)D

    move-result-wide v0

    .line 548
    invoke-static {v0, v1}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method public diag()Lorg/ejml/simple/SimpleBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 872
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0, v1}, Lorg/ejml/simple/SimpleOperations;->diag(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ejml/simple/SimpleBase;->wrapMatrix(Lorg/ejml/data/Matrix;)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    return-object v0
.end method

.method public divide(D)Lorg/ejml/simple/SimpleBase;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TT;"
        }
    .end annotation

    .line 383
    invoke-virtual {p0}, Lorg/ejml/simple/SimpleBase;->createLike()Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    .line 384
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v2, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/Matrix;

    move-result-object v3

    invoke-interface {v1, v2, p1, p2, v3}, Lorg/ejml/simple/SimpleOperations;->divide(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V

    return-object v0
.end method

.method public dot(Lorg/ejml/simple/SimpleBase;)D
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)D"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/ejml/simple/SimpleBase;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->specify([Lorg/ejml/simple/SimpleBase;)V

    .line 334
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    invoke-virtual {v0, p0}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->convert(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    invoke-virtual {v1, p1}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->convert(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object p1

    .line 337
    invoke-virtual {p0}, Lorg/ejml/simple/SimpleBase;->isVector()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    invoke-virtual {p1}, Lorg/ejml/simple/SimpleBase;->isVector()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, v0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v0, v0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-virtual {p1}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/Matrix;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lorg/ejml/simple/SimpleOperations;->dot(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)D

    move-result-wide v0

    return-wide v0

    .line 340
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'v\' matrix is not a vector."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 338
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'this\' matrix is not a vector."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public eig()Lorg/ejml/simple/SimpleEVD;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/simple/SimpleEVD<",
            "TT;>;"
        }
    .end annotation

    .line 921
    new-instance v0, Lorg/ejml/simple/SimpleEVD;

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-direct {v0, v1}, Lorg/ejml/simple/SimpleEVD;-><init>(Lorg/ejml/data/Matrix;)V

    return-object v0
.end method

.method public elementDiv(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 1061
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/ejml/simple/SimpleBase;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->specify([Lorg/ejml/simple/SimpleBase;)V

    .line 1062
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    invoke-virtual {v0, p0}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->convert(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    .line 1063
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    invoke-virtual {v1, p1}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->convert(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object p1

    .line 1065
    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->createLike()Lorg/ejml/simple/SimpleBase;

    move-result-object v1

    .line 1066
    iget-object v2, v0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v0, v0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object p1, p1, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object v3, v1, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v2, v0, p1, v3}, Lorg/ejml/simple/SimpleOperations;->elementDiv(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    return-object v1
.end method

.method public elementExp()Lorg/ejml/simple/SimpleBase;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1113
    invoke-virtual {p0}, Lorg/ejml/simple/SimpleBase;->createLike()Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    .line 1114
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v2, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object v3, v0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v1, v2, v3}, Lorg/ejml/simple/SimpleOperations;->elementExp(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    return-object v0
.end method

.method public elementLog()Lorg/ejml/simple/SimpleBase;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1127
    invoke-virtual {p0}, Lorg/ejml/simple/SimpleBase;->createLike()Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    .line 1128
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v2, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object v3, v0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v1, v2, v3}, Lorg/ejml/simple/SimpleOperations;->elementLog(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    return-object v0
.end method

.method public elementMaxAbs()D
    .locals 2

    .line 1011
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0, v1}, Lorg/ejml/simple/SimpleOperations;->elementMaxAbs(Lorg/ejml/data/Matrix;)D

    move-result-wide v0

    return-wide v0
.end method

.method public elementMinAbs()D
    .locals 2

    .line 1020
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0, v1}, Lorg/ejml/simple/SimpleOperations;->elementMinAbs(Lorg/ejml/data/Matrix;)D

    move-result-wide v0

    return-wide v0
.end method

.method public elementMult(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 1042
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/ejml/simple/SimpleBase;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->specify([Lorg/ejml/simple/SimpleBase;)V

    .line 1043
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    invoke-virtual {v0, p0}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->convert(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    .line 1044
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    invoke-virtual {v1, p1}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->convert(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object p1

    .line 1046
    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->createLike()Lorg/ejml/simple/SimpleBase;

    move-result-object v1

    .line 1047
    iget-object v2, v0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v0, v0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object p1, p1, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object v3, v1, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v2, v0, p1, v3}, Lorg/ejml/simple/SimpleOperations;->elementMult(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    return-object v1
.end method

.method public elementPower(D)Lorg/ejml/simple/SimpleBase;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TT;"
        }
    .end annotation

    .line 1099
    invoke-virtual {p0}, Lorg/ejml/simple/SimpleBase;->createLike()Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    .line 1100
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v2, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object v3, v0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v1, v2, p1, p2, v3}, Lorg/ejml/simple/SimpleOperations;->elementPower(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V

    return-object v0
.end method

.method public elementPower(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 1080
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/ejml/simple/SimpleBase;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->specify([Lorg/ejml/simple/SimpleBase;)V

    .line 1081
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    invoke-virtual {v0, p0}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->convert(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    .line 1082
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    invoke-virtual {v1, p1}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->convert(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object p1

    .line 1084
    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->createLike()Lorg/ejml/simple/SimpleBase;

    move-result-object v1

    .line 1085
    iget-object v2, v0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v0, v0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object p1, p1, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object v3, v1, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v2, v0, p1, v3}, Lorg/ejml/simple/SimpleOperations;->elementPower(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    return-object v1
.end method

.method public elementSum()D
    .locals 2

    .line 1029
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0, v1}, Lorg/ejml/simple/SimpleOperations;->elementSum(Lorg/ejml/data/Matrix;)D

    move-result-wide v0

    return-wide v0
.end method

.method public varargs equation(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .line 1168
    array-length v0, p2

    const/16 v1, 0x19

    if-ge v0, v1, :cond_c

    .line 1171
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    instance-of v0, v0, Lorg/ejml/data/DMatrixRMaj;

    if-nez v0, :cond_0

    return-void

    .line 1174
    :cond_0
    new-instance v0, Lorg/ejml/equation/Equation;

    invoke-direct {v0}, Lorg/ejml/equation/Equation;-><init>()V

    .line 1178
    array-length v1, p2

    const/4 v2, 0x0

    if-lez v1, :cond_2

    aget-object v1, p2, v2

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1179
    check-cast v1, Ljava/lang/String;

    .line 1182
    array-length v2, p2

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move v2, v3

    goto :goto_0

    .line 1183
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Expected and odd length for variables"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1185
    :cond_2
    array-length v1, p2

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_b

    const-string v1, "A"

    .line 1188
    :goto_0
    iget-object v3, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    check-cast v3, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, v3, v1}, Lorg/ejml/equation/Equation;->alias(Lorg/ejml/data/DMatrixRMaj;Ljava/lang/String;)V

    .line 1190
    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_9

    add-int/lit8 v3, v2, 0x1

    .line 1191
    aget-object v3, p2, v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 1193
    aget-object v4, p2, v2

    .line 1194
    check-cast v3, Ljava/lang/String;

    .line 1196
    const-class v5, Lorg/ejml/simple/SimpleBase;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1197
    check-cast v4, Lorg/ejml/simple/SimpleBase;

    invoke-virtual {v4}, Lorg/ejml/simple/SimpleBase;->getDDRM()Lorg/ejml/data/DMatrixRMaj;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lorg/ejml/equation/Equation;->alias(Lorg/ejml/data/DMatrixRMaj;Ljava/lang/String;)V

    goto :goto_2

    .line 1198
    :cond_3
    instance-of v5, v4, Lorg/ejml/data/DMatrixRMaj;

    if-eqz v5, :cond_4

    .line 1199
    check-cast v4, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, v4, v3}, Lorg/ejml/equation/Equation;->alias(Lorg/ejml/data/DMatrixRMaj;Ljava/lang/String;)V

    goto :goto_2

    .line 1200
    :cond_4
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_5

    .line 1201
    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5, v3}, Lorg/ejml/equation/Equation;->alias(DLjava/lang/String;)V

    goto :goto_2

    .line 1202
    :cond_5
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_6

    .line 1203
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4, v3}, Lorg/ejml/equation/Equation;->alias(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_6
    if-nez v4, :cond_7

    const/4 p1, 0x0

    sget-object p1, Lcom/google/firebase/crashlytics/internal/model/gzDJ/JGPXHEH;->koZswLDkF:Ljava/lang/String;

    goto :goto_3

    .line 1205
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 1206
    :goto_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Variable type not supported by Equation! "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1192
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "String expected at variables index "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    const-string p2, "="

    .line 1211
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 1212
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1215
    :cond_a
    invoke-virtual {v0, p1}, Lorg/ejml/equation/Equation;->process(Ljava/lang/String;)Lorg/ejml/equation/Equation;

    return-void

    .line 1186
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Expected and even length for variables"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1169
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Too many variables!  At most 25"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public extractMatrix(IIII)Lorg/ejml/simple/SimpleBase;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)TT;"
        }
    .end annotation

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 833
    iget-object p1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result p1

    :cond_0
    move v3, p1

    if-ne p2, v0, :cond_1

    .line 834
    iget-object p1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result p2

    :cond_1
    move v4, p2

    if-ne p3, v0, :cond_2

    .line 835
    iget-object p1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result p3

    :cond_2
    move v5, p3

    if-ne p4, v0, :cond_3

    .line 836
    iget-object p1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result p4

    :cond_3
    move v6, p4

    sub-int p1, v4, v3

    sub-int p2, v6, v5

    .line 838
    iget-object p3, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {p3}, Lorg/ejml/data/Matrix;->getType()Lorg/ejml/data/MatrixType;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/simple/SimpleBase;->createMatrix(IILorg/ejml/data/MatrixType;)Lorg/ejml/simple/SimpleBase;

    move-result-object p1

    .line 840
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v2, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object v7, p1, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v1 .. v9}, Lorg/ejml/simple/SimpleOperations;->extract(Lorg/ejml/data/Matrix;IIIILorg/ejml/data/Matrix;II)V

    return-object p1
.end method

.method public extractVector(ZI)Lorg/ejml/simple/SimpleBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)TT;"
        }
    .end annotation

    const v0, 0x7fffffff

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    add-int/lit8 p1, p2, 0x1

    .line 857
    invoke-virtual {p0, p2, p1, v1, v0}, Lorg/ejml/simple/SimpleBase;->extractMatrix(IIII)Lorg/ejml/simple/SimpleBase;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 p1, p2, 0x1

    .line 859
    invoke-virtual {p0, v1, v0, p2, p1}, Lorg/ejml/simple/SimpleBase;->extractMatrix(IIII)Lorg/ejml/simple/SimpleBase;

    move-result-object p1

    return-object p1
.end method

.method public fill(D)V
    .locals 2

    .line 497
    :try_start_0
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0, v1, p1, p2}, Lorg/ejml/simple/SimpleOperations;->fill(Lorg/ejml/data/Matrix;D)V
    :try_end_0
    .catch Lorg/ejml/simple/ConvertToDenseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 499
    :catch_0
    invoke-virtual {p0}, Lorg/ejml/simple/SimpleBase;->convertToDense()V

    .line 500
    invoke-virtual {p0, p1, p2}, Lorg/ejml/simple/SimpleBase;->fill(D)V

    :goto_0
    return-void
.end method

.method varargs findAlternative(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 7

    .line 1423
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 1424
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_6

    .line 1425
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_4

    .line 1428
    :cond_0
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 1429
    array-length v4, v3

    array-length v5, p2

    if-eq v4, v5, :cond_1

    goto :goto_4

    :cond_1
    move v4, v1

    .line 1434
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_4

    .line 1435
    aget-object v5, p2, v4

    instance-of v6, v5, Ljava/lang/Class;

    if-eqz v6, :cond_2

    .line 1436
    aget-object v6, v3, v4

    if-eq v6, v5, :cond_3

    goto :goto_2

    .line 1440
    :cond_2
    aget-object v6, v3, v4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v6, v5, :cond_3

    :goto_2
    move v3, v1

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    :goto_3
    if-eqz v3, :cond_5

    .line 1446
    aget-object p1, v0, v2

    return-object p1

    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method public get(I)D
    .locals 2

    .line 684
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0}, Lorg/ejml/data/Matrix;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v0

    .line 686
    invoke-virtual {v0}, Lorg/ejml/data/MatrixType;->isReal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 687
    invoke-virtual {v0}, Lorg/ejml/data/MatrixType;->getBits()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 688
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v0, v0, p1

    return-wide v0

    .line 690
    :cond_0
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget p1, v0, p1

    float-to-double v0, p1

    return-wide v0

    .line 693
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Complex matrix. Call get(int,Complex64F) instead"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(II)D
    .locals 2

    .line 673
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0, v1, p1, p2}, Lorg/ejml/simple/SimpleOperations;->get(Lorg/ejml/data/Matrix;II)D

    move-result-wide p1

    return-wide p1
.end method

.method public get(IILorg/ejml/data/Complex_F64;)V
    .locals 2

    .line 705
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/ejml/simple/SimpleOperations;->get(Lorg/ejml/data/Matrix;IILorg/ejml/data/Complex_F64;)V

    return-void
.end method

.method public getCDRM()Lorg/ejml/data/CMatrixRMaj;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/CMatrixRMaj;

    return-object v0
.end method

.method public getDDRM()Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixRMaj;

    return-object v0
.end method

.method public getDSCC()Lorg/ejml/data/DMatrixSparseCSC;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixSparseCSC;

    return-object v0
.end method

.method public getFDRM()Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixRMaj;

    return-object v0
.end method

.method public getFSCC()Lorg/ejml/data/FMatrixSparseCSC;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixSparseCSC;

    return-object v0
.end method

.method public getIndex(II)I
    .locals 1

    .line 717
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v0

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    return p1
.end method

.method public getMatrix()Lorg/ejml/data/Matrix;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InnerType::",
            "Lorg/ejml/data/Matrix;",
            ">()TInnerType;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    return-object v0
.end method

.method public getNumElements()I
    .locals 2

    .line 772
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v0

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getType()Lorg/ejml/data/MatrixType;
    .locals 1

    .line 1405
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0}, Lorg/ejml/data/Matrix;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v0

    return-object v0
.end method

.method public getZDRM()Lorg/ejml/data/ZMatrixRMaj;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/ZMatrixRMaj;

    return-object v0
.end method

.method public hasUncountable()Z
    .locals 2

    .line 895
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0, v1}, Lorg/ejml/simple/SimpleOperations;->hasUncountable(Lorg/ejml/data/Matrix;)Z

    move-result v0

    return v0
.end method

.method insert(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;II)V
    .locals 9

    .line 946
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v5

    move-object v1, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-interface/range {v0 .. v8}, Lorg/ejml/simple/SimpleOperations;->extract(Lorg/ejml/data/Matrix;IIIILorg/ejml/data/Matrix;II)V

    return-void
.end method

.method public insertIntoThis(IILorg/ejml/simple/SimpleBase;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .line 932
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/ejml/simple/SimpleBase;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->specify([Lorg/ejml/simple/SimpleBase;)V

    .line 933
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    invoke-virtual {v0, p3}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->convert(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object p3

    .line 936
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    iget-object v0, v0, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->commonType:Lorg/ejml/data/MatrixType;

    invoke-virtual {p0}, Lorg/ejml/simple/SimpleBase;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 937
    iget-object p3, p3, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-virtual {p0, p3, v0, p1, p2}, Lorg/ejml/simple/SimpleBase;->insert(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;II)V

    goto :goto_0

    .line 939
    :cond_0
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    invoke-virtual {v0, p0}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->convert(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    .line 940
    iget-object p3, p3, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object v1, v0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-virtual {v0, p3, v1, p1, p2}, Lorg/ejml/simple/SimpleBase;->insert(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;II)V

    .line 941
    iget-object p1, v0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-virtual {p0, p1}, Lorg/ejml/simple/SimpleBase;->setMatrix(Lorg/ejml/data/Matrix;)V

    :goto_0
    return-void
.end method

.method public invert()Lorg/ejml/simple/SimpleBase;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 404
    invoke-virtual {p0}, Lorg/ejml/simple/SimpleBase;->createLike()Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    .line 406
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v2, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object v3, v0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v1, v2, v3}, Lorg/ejml/simple/SimpleOperations;->invert(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v2, v0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v1, v2}, Lorg/ejml/simple/SimpleOperations;->hasUncountable(Lorg/ejml/data/Matrix;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 409
    :cond_0
    new-instance v0, Lorg/ejml/data/SingularMatrixException;

    const-string v1, "Solution contains uncountable numbers"

    invoke-direct {v0, v1}, Lorg/ejml/data/SingularMatrixException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_1
    new-instance v0, Lorg/ejml/data/SingularMatrixException;

    invoke-direct {v0}, Lorg/ejml/data/SingularMatrixException;-><init>()V

    throw v0
.end method

.method public varargs invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 1

    .line 1454
    :try_start_0
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1456
    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public isIdentical(Lorg/ejml/simple/SimpleBase;D)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;D)Z"
        }
    .end annotation

    .line 884
    invoke-virtual {p1}, Lorg/ejml/simple/SimpleBase;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v0

    invoke-virtual {p0}, Lorg/ejml/simple/SimpleBase;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 886
    :cond_0
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object p1, p1, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/ejml/simple/SimpleOperations;->isIdentical(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;D)Z

    move-result p1

    return p1
.end method

.method public isInBounds(II)Z
    .locals 1

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 1292
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result p1

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isVector()Z
    .locals 2

    .line 353
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public iterator(ZIIII)Lorg/ejml/data/DMatrixIterator;
    .locals 8

    .line 733
    new-instance v7, Lorg/ejml/data/DMatrixIterator;

    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    move-object v1, v0

    check-cast v1, Lorg/ejml/data/DMatrixRMaj;

    move-object v0, v7

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/ejml/data/DMatrixIterator;-><init>(Lorg/ejml/data/DMatrixD1;ZIIII)V

    return-object v7
.end method

.method public kron(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/ejml/simple/SimpleBase;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->specify([Lorg/ejml/simple/SimpleBase;)V

    .line 207
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    invoke-virtual {v0, p0}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->convert(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    invoke-virtual {v1, p1}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->convert(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object p1

    .line 210
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v1

    invoke-virtual {p1}, Lorg/ejml/simple/SimpleBase;->numRows()I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v2}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v2

    invoke-virtual {p1}, Lorg/ejml/simple/SimpleBase;->numCols()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/simple/SimpleBase;->createMatrix(IILorg/ejml/data/MatrixType;)Lorg/ejml/simple/SimpleBase;

    move-result-object v1

    .line 212
    iget-object v2, v0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v0, v0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object p1, p1, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object v3, v1, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v2, v0, p1, v3}, Lorg/ejml/simple/SimpleOperations;->kron(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    return-object v1
.end method

.method public loadCSV(Ljava/lang/String;)Lorg/ejml/simple/SimpleBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1275
    invoke-static {p1, v0}, Lorg/ejml/ops/MatrixIO;->loadCSV(Ljava/lang/String;Z)Lorg/ejml/data/DMatrix;

    move-result-object p1

    .line 1277
    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v1

    invoke-virtual {p0, v0, v0, v1}, Lorg/ejml/simple/SimpleBase;->createMatrix(IILorg/ejml/data/MatrixType;)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    .line 1279
    invoke-virtual {v0, p1}, Lorg/ejml/simple/SimpleBase;->setMatrix(Lorg/ejml/data/Matrix;)V

    return-object v0
.end method

.method public minus(D)Lorg/ejml/simple/SimpleBase;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TT;"
        }
    .end annotation

    .line 279
    invoke-virtual {p0}, Lorg/ejml/simple/SimpleBase;->createLike()Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v2, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object v3, v0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v1, v2, p1, p2, v3}, Lorg/ejml/simple/SimpleOperations;->minus(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V

    return-object v0
.end method

.method public minus(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/ejml/simple/SimpleBase;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->specify([Lorg/ejml/simple/SimpleBase;)V

    .line 257
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    invoke-virtual {v0, p0}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->convert(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    invoke-virtual {v1, p1}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->convert(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object p1

    .line 259
    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->createLike()Lorg/ejml/simple/SimpleBase;

    move-result-object v1

    .line 261
    iget-object v2, v0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v0, v0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object p1, p1, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object v3, v1, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v2, v0, p1, v3}, Lorg/ejml/simple/SimpleOperations;->minus(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    return-object v1
.end method

.method public mult(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/ejml/simple/SimpleBase;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->specify([Lorg/ejml/simple/SimpleBase;)V

    .line 174
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0}, Lorg/ejml/data/Matrix;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v0

    invoke-virtual {p1}, Lorg/ejml/simple/SimpleBase;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 175
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object v1, p1, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object v3, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    iget-object v3, v3, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->commonType:Lorg/ejml/data/MatrixType;

    invoke-virtual {v3}, Lorg/ejml/data/MatrixType;->getClassType()Ljava/lang/Class;

    move-result-object v3

    filled-new-array {v0, v1, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "mult"

    invoke-virtual {p0, v1, v0}, Lorg/ejml/simple/SimpleBase;->findAlternative(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    iget-object v1, v1, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->commonType:Lorg/ejml/data/MatrixType;

    invoke-virtual {v1, v2, v2}, Lorg/ejml/data/MatrixType;->create(II)Lorg/ejml/data/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/ejml/simple/SimpleBase;->wrapMatrix(Lorg/ejml/data/Matrix;)Lorg/ejml/simple/SimpleBase;

    move-result-object v1

    .line 178
    iget-object v2, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object p1, p1, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object v3, v1, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    filled-new-array {v2, p1, v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/ejml/simple/SimpleBase;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    return-object v1

    .line 184
    :cond_0
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    invoke-virtual {v0, p0}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->convert(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    invoke-virtual {v1, p1}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->convert(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object p1

    .line 187
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v1

    invoke-virtual {p1}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/Matrix;

    move-result-object v2

    invoke-interface {v2}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v2

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/simple/SimpleBase;->createMatrix(IILorg/ejml/data/MatrixType;)Lorg/ejml/simple/SimpleBase;

    move-result-object v1

    .line 189
    iget-object v2, v0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v0, v0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object p1, p1, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object v3, v1, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v2, v0, p1, v3}, Lorg/ejml/simple/SimpleOperations;->mult(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    return-object v1
.end method

.method public negative()Lorg/ejml/simple/SimpleBase;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1142
    invoke-virtual {p0}, Lorg/ejml/simple/SimpleBase;->copy()Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    .line 1143
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v2, v0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v1, v2}, Lorg/ejml/simple/SimpleOperations;->changeSign(Lorg/ejml/data/Matrix;)V

    return-object v0
.end method

.method public normF()D
    .locals 2

    .line 524
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0, v1}, Lorg/ejml/simple/SimpleOperations;->normF(Lorg/ejml/data/Matrix;)D

    move-result-wide v0

    return-wide v0
.end method

.method public numCols()I
    .locals 1

    .line 762
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v0

    return v0
.end method

.method public numRows()I
    .locals 1

    .line 753
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    return v0
.end method

.method public plus(D)Lorg/ejml/simple/SimpleBase;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TT;"
        }
    .end annotation

    .line 298
    invoke-virtual {p0}, Lorg/ejml/simple/SimpleBase;->createLike()Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v2, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object v3, v0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v1, v2, p1, p2, v3}, Lorg/ejml/simple/SimpleOperations;->plus(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V

    return-object v0
.end method

.method public plus(DLorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DTT;)TT;"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/ejml/simple/SimpleBase;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->specify([Lorg/ejml/simple/SimpleBase;)V

    .line 318
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    invoke-virtual {v0, p0}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->convert(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    invoke-virtual {v1, p3}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->convert(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object p3

    .line 321
    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->createLike()Lorg/ejml/simple/SimpleBase;

    move-result-object v1

    .line 322
    iget-object v2, v0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v3, v0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object v6, p3, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object v7, v1, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    move-wide v4, p1

    invoke-interface/range {v2 .. v7}, Lorg/ejml/simple/SimpleOperations;->plus(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    return-object v1
.end method

.method public plus(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/ejml/simple/SimpleBase;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->specify([Lorg/ejml/simple/SimpleBase;)V

    .line 232
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    invoke-virtual {v0, p0}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->convert(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    invoke-virtual {v1, p1}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->convert(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object p1

    .line 235
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v1

    iget-object v2, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v2}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v2

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/simple/SimpleBase;->createMatrix(IILorg/ejml/data/MatrixType;)Lorg/ejml/simple/SimpleBase;

    move-result-object v1

    .line 237
    iget-object v2, v0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v0, v0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object p1, p1, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object v3, v1, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v2, v0, p1, v3}, Lorg/ejml/simple/SimpleOperations;->plus(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    return-object v1
.end method

.method public print()V
    .locals 1

    .line 779
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0}, Lorg/ejml/data/Matrix;->print()V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 3

    .line 789
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0, v1, v2, p1}, Lorg/ejml/simple/SimpleOperations;->print(Ljava/io/PrintStream;Lorg/ejml/data/Matrix;Ljava/lang/String;)V

    return-void
.end method

.method public printDimensions()V
    .locals 3

    .line 1299
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[rows = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/ejml/simple/SimpleBase;->numRows()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , cols = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ejml/simple/SimpleBase;->numCols()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public pseudoInverse()Lorg/ejml/simple/SimpleBase;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 422
    invoke-virtual {p0}, Lorg/ejml/simple/SimpleBase;->createLike()Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    .line 423
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v2, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object v3, v0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v1, v2, v3}, Lorg/ejml/simple/SimpleOperations;->pseudoInverse(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    return-object v0
.end method

.method public reshape(II)V
    .locals 1

    .line 581
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0}, Lorg/ejml/data/Matrix;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ejml/data/MatrixType;->isFixed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 584
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/ReshapeMatrix;

    invoke-interface {v0, p1, p2}, Lorg/ejml/data/ReshapeMatrix;->reshape(II)V

    return-void

    .line 582
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t reshape a fixed sized matrix"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rows(II)Lorg/ejml/simple/SimpleBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 1387
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/ejml/simple/SimpleBase;->extractMatrix(IIII)Lorg/ejml/simple/SimpleBase;

    move-result-object p1

    return-object p1
.end method

.method public saveToFileBinary(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1227
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v0, p1}, Lorg/ejml/ops/MatrixIO;->saveBin(Lorg/ejml/data/DMatrix;Ljava/lang/String;)V

    return-void
.end method

.method public saveToFileCSV(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1261
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v0, p1}, Lorg/ejml/ops/MatrixIO;->saveDenseCSV(Lorg/ejml/data/DMatrix;Ljava/lang/String;)V

    return-void
.end method

.method public scale(D)Lorg/ejml/simple/SimpleBase;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TT;"
        }
    .end annotation

    .line 367
    invoke-virtual {p0}, Lorg/ejml/simple/SimpleBase;->createLike()Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v2, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/Matrix;

    move-result-object v3

    invoke-interface {v1, v2, p1, p2, v3}, Lorg/ejml/simple/SimpleOperations;->scale(Lorg/ejml/data/Matrix;DLorg/ejml/data/Matrix;)V

    return-object v0
.end method

.method public set(ID)V
    .locals 2

    .line 607
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0}, Lorg/ejml/data/Matrix;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v0

    sget-object v1, Lorg/ejml/data/MatrixType;->DDRM:Lorg/ejml/data/MatrixType;

    if-ne v0, v1, :cond_0

    .line 608
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, p1, p2, p3}, Lorg/ejml/data/DMatrixRMaj;->set(ID)D

    goto :goto_0

    .line 609
    :cond_0
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0}, Lorg/ejml/data/Matrix;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v0

    sget-object v1, Lorg/ejml/data/MatrixType;->FDRM:Lorg/ejml/data/MatrixType;

    if-ne v0, v1, :cond_1

    .line 610
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixRMaj;

    double-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lorg/ejml/data/FMatrixRMaj;->set(IF)F

    :goto_0
    return-void

    .line 612
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not supported yet for this matrix type"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(IID)V
    .locals 6

    .line 597
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lorg/ejml/simple/SimpleOperations;->set(Lorg/ejml/data/Matrix;IID)V

    return-void
.end method

.method public set(IIDD)V
    .locals 9

    const-wide/16 v0, 0x0

    cmpl-double v0, p5, v0

    if-nez v0, :cond_0

    .line 626
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ejml/simple/SimpleBase;->set(IID)V

    goto :goto_0

    .line 628
    :cond_0
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v2, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    invoke-interface/range {v1 .. v8}, Lorg/ejml/simple/SimpleOperations;->set(Lorg/ejml/data/Matrix;IIDD)V

    :goto_0
    return-void
.end method

.method public set(Lorg/ejml/simple/SimpleBase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 478
    invoke-virtual {p1}, Lorg/ejml/simple/SimpleBase;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v0

    invoke-virtual {p0}, Lorg/ejml/simple/SimpleBase;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 479
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-virtual {p1}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/Matrix;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/ejml/data/Matrix;->set(Lorg/ejml/data/Matrix;)V

    goto :goto_0

    .line 481
    :cond_0
    iget-object p1, p1, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->copy()Lorg/ejml/data/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ejml/simple/SimpleBase;->setMatrix(Lorg/ejml/data/Matrix;)V

    :goto_0
    return-void
.end method

.method public varargs setColumn(II[D)V
    .locals 2

    .line 659
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/ejml/simple/SimpleOperations;->setColumn(Lorg/ejml/data/Matrix;II[D)V

    return-void
.end method

.method protected setMatrix(Lorg/ejml/data/Matrix;)V
    .locals 0

    .line 1418
    iput-object p1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    .line 1419
    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getType()Lorg/ejml/data/MatrixType;

    move-result-object p1

    invoke-static {p1}, Lorg/ejml/simple/SimpleBase;->lookupOps(Lorg/ejml/data/MatrixType;)Lorg/ejml/simple/SimpleOperations;

    move-result-object p1

    iput-object p1, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    return-void
.end method

.method public varargs setRow(II[D)V
    .locals 2

    .line 644
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/ejml/simple/SimpleOperations;->setRow(Lorg/ejml/data/Matrix;II[D)V

    return-void
.end method

.method public solve(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/ejml/simple/SimpleBase;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->specify([Lorg/ejml/simple/SimpleBase;)V

    .line 449
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0}, Lorg/ejml/data/Matrix;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v0

    invoke-virtual {p1}, Lorg/ejml/simple/SimpleBase;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 450
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object v1, p1, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object v3, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    iget-object v3, v3, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->commonType:Lorg/ejml/data/MatrixType;

    invoke-virtual {v3}, Lorg/ejml/data/MatrixType;->getClassType()Ljava/lang/Class;

    move-result-object v3

    filled-new-array {v0, v1, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "solve"

    invoke-virtual {p0, v1, v0}, Lorg/ejml/simple/SimpleBase;->findAlternative(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    iget-object v1, v1, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->commonType:Lorg/ejml/data/MatrixType;

    invoke-virtual {v1, v2, v2}, Lorg/ejml/data/MatrixType;->create(II)Lorg/ejml/data/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/ejml/simple/SimpleBase;->wrapMatrix(Lorg/ejml/data/Matrix;)Lorg/ejml/simple/SimpleBase;

    move-result-object v1

    .line 453
    iget-object v2, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object p1, p1, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object v3, v1, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    filled-new-array {v2, p1, v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/ejml/simple/SimpleBase;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    return-object v1

    .line 458
    :cond_0
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    invoke-virtual {v0, p0}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->convert(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    .line 459
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->convertType:Lorg/ejml/simple/AutomaticSimpleMatrixConvert;

    invoke-virtual {v1, p1}, Lorg/ejml/simple/AutomaticSimpleMatrixConvert;->convert(Lorg/ejml/simple/SimpleBase;)Lorg/ejml/simple/SimpleBase;

    move-result-object p1

    .line 461
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v1

    invoke-virtual {p1}, Lorg/ejml/simple/SimpleBase;->getMatrix()Lorg/ejml/data/Matrix;

    move-result-object v2

    invoke-interface {v2}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v2

    invoke-virtual {v0}, Lorg/ejml/simple/SimpleBase;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/simple/SimpleBase;->createMatrix(IILorg/ejml/data/MatrixType;)Lorg/ejml/simple/SimpleBase;

    move-result-object v1

    .line 463
    iget-object v2, v0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v3, v0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object v4, v1, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object p1, p1, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v2, v3, v4, p1}, Lorg/ejml/simple/SimpleOperations;->solve(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 465
    iget-object p1, v0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v0, v1, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {p1, v0}, Lorg/ejml/simple/SimpleOperations;->hasUncountable(Lorg/ejml/data/Matrix;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v1

    .line 466
    :cond_1
    new-instance p1, Lorg/ejml/data/SingularMatrixException;

    const-string v0, "Solution contains uncountable numbers"

    invoke-direct {p1, v0}, Lorg/ejml/data/SingularMatrixException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 464
    :cond_2
    new-instance p1, Lorg/ejml/data/SingularMatrixException;

    invoke-direct {p1}, Lorg/ejml/data/SingularMatrixException;-><init>()V

    throw p1
.end method

.method public svd()Lorg/ejml/simple/SimpleSVD;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ejml/simple/SimpleSVD<",
            "TT;>;"
        }
    .end annotation

    .line 905
    new-instance v0, Lorg/ejml/simple/SimpleSVD;

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/ejml/simple/SimpleSVD;-><init>(Lorg/ejml/data/Matrix;Z)V

    return-object v0
.end method

.method public svd(Z)Lorg/ejml/simple/SimpleSVD;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/ejml/simple/SimpleSVD<",
            "TT;>;"
        }
    .end annotation

    .line 914
    new-instance v0, Lorg/ejml/simple/SimpleSVD;

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-direct {v0, v1, p1}, Lorg/ejml/simple/SimpleSVD;-><init>(Lorg/ejml/data/Matrix;Z)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 802
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 803
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 805
    iget-object v2, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-static {v1, v2}, Lorg/ejml/ops/MatrixIO;->print(Ljava/io/PrintStream;Lorg/ejml/data/Matrix;)V

    .line 807
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trace()D
    .locals 2

    .line 562
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0, v1}, Lorg/ejml/simple/SimpleOperations;->trace(Lorg/ejml/data/Matrix;)D

    move-result-wide v0

    return-wide v0
.end method

.method public transpose()Lorg/ejml/simple/SimpleBase;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v0

    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v1

    iget-object v2, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v2}, Lorg/ejml/data/Matrix;->getType()Lorg/ejml/data/MatrixType;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/ejml/simple/SimpleBase;->createMatrix(IILorg/ejml/data/MatrixType;)Lorg/ejml/simple/SimpleBase;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lorg/ejml/simple/SimpleBase;->ops:Lorg/ejml/simple/SimpleOperations;

    iget-object v2, p0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    iget-object v3, v0, Lorg/ejml/simple/SimpleBase;->mat:Lorg/ejml/data/Matrix;

    invoke-interface {v1, v2, v3}, Lorg/ejml/simple/SimpleOperations;->transpose(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V

    return-object v0
.end method

.method protected abstract wrapMatrix(Lorg/ejml/data/Matrix;)Lorg/ejml/simple/SimpleBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/data/Matrix;",
            ")TT;"
        }
    .end annotation
.end method

.method public zero()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 510
    invoke-virtual {p0, v0, v1}, Lorg/ejml/simple/SimpleBase;->fill(D)V

    return-void
.end method
