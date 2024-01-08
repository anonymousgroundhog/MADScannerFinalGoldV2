.class public Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;
.super Ljava/lang/Object;
.source "QRDecompositionHouseholder_DDRB.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/QRDecomposition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/QRDecomposition<",
        "Lorg/ejml/data/DMatrixRBlock;",
        ">;"
    }
.end annotation


# instance fields
.field private final A:Lorg/ejml/data/DSubmatrixD1;

.field private final W:Lorg/ejml/data/DSubmatrixD1;

.field private final WTA:Lorg/ejml/data/DSubmatrixD1;

.field private final Y:Lorg/ejml/data/DSubmatrixD1;

.field private blockLength:I

.field private dataA:Lorg/ejml/data/DMatrixRBlock;

.field private final dataW:Lorg/ejml/data/DMatrixRBlock;

.field private final dataWTA:Lorg/ejml/data/DMatrixRBlock;

.field private gammas:[D

.field private saveW:Z

.field private final workspace:Lpabeles/concurrency/GrowArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/DGrowArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$EUv0wajhkQEpjMTqSP4N1q46jtI()Lorg/ejml/data/DGrowArray;
    .locals 1

    new-instance v0, Lorg/ejml/data/DGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/DGrowArray;-><init>()V

    return-object v0
.end method

.method public constructor <init>()V
    .locals 4

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lorg/ejml/data/DMatrixRBlock;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixRBlock;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->dataW:Lorg/ejml/data/DMatrixRBlock;

    .line 79
    new-instance v2, Lorg/ejml/data/DMatrixRBlock;

    invoke-direct {v2, v1, v1}, Lorg/ejml/data/DMatrixRBlock;-><init>(II)V

    iput-object v2, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->dataWTA:Lorg/ejml/data/DMatrixRBlock;

    .line 85
    new-instance v3, Lorg/ejml/data/DSubmatrixD1;

    invoke-direct {v3}, Lorg/ejml/data/DSubmatrixD1;-><init>()V

    iput-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DSubmatrixD1;

    .line 86
    new-instance v3, Lorg/ejml/data/DSubmatrixD1;

    invoke-direct {v3}, Lorg/ejml/data/DSubmatrixD1;-><init>()V

    iput-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    .line 87
    new-instance v3, Lorg/ejml/data/DSubmatrixD1;

    invoke-direct {v3, v0}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;)V

    iput-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->W:Lorg/ejml/data/DSubmatrixD1;

    .line 88
    new-instance v0, Lorg/ejml/data/DSubmatrixD1;

    invoke-direct {v0, v2}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;)V

    iput-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->WTA:Lorg/ejml/data/DSubmatrixD1;

    .line 89
    new-instance v0, Lpabeles/concurrency/GrowArray;

    new-instance v2, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v2}, Lpabeles/concurrency/GrowArray;-><init>(Lpabeles/concurrency/ConcurrencyOps$NewInstance;)V

    iput-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->workspace:Lpabeles/concurrency/GrowArray;

    new-array v0, v1, [D

    .line 91
    iput-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->gammas:[D

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->saveW:Z

    return-void
.end method

.method public static initializeQ(Lorg/ejml/data/DMatrixRBlock;IIIZ)Lorg/ejml/data/DMatrixRBlock;
    .locals 2

    .line 137
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const-string v0, " "

    const-string v1, "Unexpected matrix dimension. Found "

    if-eqz p4, :cond_2

    if-nez p0, :cond_0

    .line 140
    new-instance p0, Lorg/ejml/data/DMatrixRBlock;

    invoke-direct {p0, p1, p2, p3}, Lorg/ejml/data/DMatrixRBlock;-><init>(III)V

    .line 141
    invoke-static {p0}, Lorg/ejml/dense/block/MatrixOps_DDRB;->setIdentity(Lorg/ejml/data/DMatrixRBlock;)V

    goto :goto_0

    .line 143
    :cond_0
    iget p3, p0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    if-ne p3, p1, :cond_1

    iget p1, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    if-ne p1, p2, :cond_1

    .line 146
    invoke-static {p0}, Lorg/ejml/dense/block/MatrixOps_DDRB;->setIdentity(Lorg/ejml/data/DMatrixRBlock;)V

    goto :goto_0

    .line 144
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p0, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-nez p0, :cond_3

    .line 151
    new-instance p0, Lorg/ejml/data/DMatrixRBlock;

    invoke-direct {p0, p1, p1, p3}, Lorg/ejml/data/DMatrixRBlock;-><init>(III)V

    .line 152
    invoke-static {p0}, Lorg/ejml/dense/block/MatrixOps_DDRB;->setIdentity(Lorg/ejml/data/DMatrixRBlock;)V

    goto :goto_0

    .line 154
    :cond_3
    iget p2, p0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    if-ne p2, p1, :cond_4

    iget p2, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    if-ne p2, p1, :cond_4

    .line 157
    invoke-static {p0}, Lorg/ejml/dense/block/MatrixOps_DDRB;->setIdentity(Lorg/ejml/data/DMatrixRBlock;)V

    :goto_0
    return-object p0

    .line 155
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p0, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setW()V
    .locals 3

    .line 390
    iget-boolean v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->saveW:Z

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->W:Lorg/ejml/data/DSubmatrixD1;

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iget v1, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    iput v1, v0, Lorg/ejml/data/DSubmatrixD1;->col0:I

    .line 392
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->W:Lorg/ejml/data/DSubmatrixD1;

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iget v1, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iput v1, v0, Lorg/ejml/data/DSubmatrixD1;->col1:I

    .line 393
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->W:Lorg/ejml/data/DSubmatrixD1;

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iget v1, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iput v1, v0, Lorg/ejml/data/DSubmatrixD1;->row0:I

    .line 394
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->W:Lorg/ejml/data/DSubmatrixD1;

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iget v1, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iput v1, v0, Lorg/ejml/data/DSubmatrixD1;->row1:I

    goto :goto_0

    .line 396
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->W:Lorg/ejml/data/DSubmatrixD1;

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iget v1, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iget v2, v2, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ejml/data/DSubmatrixD1;->col1:I

    .line 397
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->W:Lorg/ejml/data/DSubmatrixD1;

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iget v1, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iput v1, v0, Lorg/ejml/data/DSubmatrixD1;->row0:I

    :goto_0
    return-void
.end method

.method private setup(Lorg/ejml/data/DMatrixRBlock;)V
    .locals 4

    .line 334
    iget v0, p1, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iput v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->blockLength:I

    .line 335
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->dataW:Lorg/ejml/data/DMatrixRBlock;

    iput v0, v1, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    .line 336
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->dataWTA:Lorg/ejml/data/DMatrixRBlock;

    iget v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->blockLength:I

    iput v1, v0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    .line 338
    iput-object p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->dataA:Lorg/ejml/data/DMatrixRBlock;

    .line 339
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DSubmatrixD1;

    iput-object p1, v0, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    .line 341
    iget v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->blockLength:I

    iget v1, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 342
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->dataW:Lorg/ejml/data/DMatrixRBlock;

    iget v2, p1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lorg/ejml/data/DMatrixRBlock;->reshape(IIZ)V

    .line 343
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->dataWTA:Lorg/ejml/data/DMatrixRBlock;

    iget v2, p1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    invoke-virtual {v1, v0, v2, v3}, Lorg/ejml/data/DMatrixRBlock;->reshape(IIZ)V

    .line 344
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iput-object p1, v0, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    .line 345
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->W:Lorg/ejml/data/DSubmatrixD1;

    iget v2, p1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iput v2, v1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iput v2, v0, Lorg/ejml/data/DSubmatrixD1;->row1:I

    .line 346
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->gammas:[D

    array-length v0, v0

    iget v1, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    if-ge v0, v1, :cond_0

    .line 347
    iget v0, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->gammas:[D

    .line 349
    :cond_0
    iget-boolean v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->saveW:Z

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->dataW:Lorg/ejml/data/DMatrixRBlock;

    iget v1, p1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget p1, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    invoke-virtual {v0, v1, p1, v3}, Lorg/ejml/data/DMatrixRBlock;->reshape(IIZ)V

    :cond_1
    return-void
.end method


# virtual methods
.method public applyQ(Lorg/ejml/data/DMatrixRBlock;)V
    .locals 1

    const/4 v0, 0x0

    .line 177
    invoke-virtual {p0, p1, v0}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->applyQ(Lorg/ejml/data/DMatrixRBlock;Z)V

    return-void
.end method

.method public applyQ(Lorg/ejml/data/DMatrixRBlock;Z)V
    .locals 10

    .line 187
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->dataA:Lorg/ejml/data/DMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->dataA:Lorg/ejml/data/DMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 189
    new-instance v1, Lorg/ejml/data/DSubmatrixD1;

    invoke-direct {v1, p1}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;)V

    .line 191
    iget-object p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->W:Lorg/ejml/data/DSubmatrixD1;

    const/4 v2, 0x0

    iput v2, p1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iput v2, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    .line 192
    iget-object p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->W:Lorg/ejml/data/DSubmatrixD1;

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->dataA:Lorg/ejml/data/DMatrixRBlock;

    iget v4, v4, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iput v4, v3, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iput v4, p1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    .line 193
    iget-object p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->WTA:Lorg/ejml/data/DSubmatrixD1;

    iput v2, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    iput v2, p1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    .line 195
    iget p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->blockLength:I

    rem-int v3, v0, p1

    sub-int v3, v0, v3

    if-ne v3, v0, :cond_0

    sub-int/2addr v3, p1

    :cond_0
    if-gez v3, :cond_1

    move v3, v2

    :cond_1
    :goto_0
    if-ltz v3, :cond_4

    .line 204
    iget-object p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iput v3, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    .line 205
    iget-object p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iget v0, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    iget v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->blockLength:I

    add-int/2addr v0, v4

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->dataA:Lorg/ejml/data/DMatrixRBlock;

    iget v4, v4, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    .line 206
    iget-object p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iput v3, p1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    if-eqz p2, :cond_2

    .line 208
    iput v3, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    .line 209
    :cond_2
    iput v3, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    .line 211
    invoke-direct {p0}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->setW()V

    .line 212
    iget-object p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->WTA:Lorg/ejml/data/DSubmatrixD1;

    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iget v0, v0, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iget v4, v4, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v0, v4

    iput v0, p1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    .line 213
    iget-object p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->WTA:Lorg/ejml/data/DSubmatrixD1;

    iget v0, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v4, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v0, v4

    iput v0, p1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    .line 214
    iget-object p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->WTA:Lorg/ejml/data/DSubmatrixD1;

    iget-object p1, p1, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast p1, Lorg/ejml/data/DMatrixD1;

    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->WTA:Lorg/ejml/data/DSubmatrixD1;

    iget v0, v0, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->WTA:Lorg/ejml/data/DSubmatrixD1;

    iget v4, v4, Lorg/ejml/data/DSubmatrixD1;->col1:I

    invoke-virtual {p1, v0, v4, v2}, Lorg/ejml/data/DMatrixD1;->reshape(IIZ)V

    .line 217
    iget-boolean p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->saveW:Z

    if-nez p1, :cond_3

    .line 218
    iget v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->blockLength:I

    iget-object v5, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iget-object v6, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->W:Lorg/ejml/data/DSubmatrixD1;

    iget-object v7, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->workspace:Lpabeles/concurrency/GrowArray;

    iget-object v8, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->gammas:[D

    iget v9, v5, Lorg/ejml/data/DSubmatrixD1;->col0:I

    invoke-static/range {v4 .. v9}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_DDRB;->computeW_Column(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lpabeles/concurrency/GrowArray;[DI)V

    .line 221
    :cond_3
    iget p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->blockLength:I

    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->WTA:Lorg/ejml/data/DSubmatrixD1;

    invoke-static {p1, v0, v1, v4}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_DDRB;->multTransA_vecCol(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V

    .line 222
    iget p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->blockLength:I

    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->W:Lorg/ejml/data/DSubmatrixD1;

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->WTA:Lorg/ejml/data/DSubmatrixD1;

    invoke-static {p1, v0, v4, v1}, Lorg/ejml/dense/block/MatrixMult_DDRB;->multPlus(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V

    .line 202
    iget p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->blockLength:I

    sub-int/2addr v3, p1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public applyQTran(Lorg/ejml/data/DMatrixRBlock;)V
    .locals 10

    .line 240
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->dataA:Lorg/ejml/data/DMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->dataA:Lorg/ejml/data/DMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 242
    new-instance v1, Lorg/ejml/data/DSubmatrixD1;

    invoke-direct {v1, p1}, Lorg/ejml/data/DSubmatrixD1;-><init>(Lorg/ejml/data/DMatrixD1;)V

    .line 244
    iget-object p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->W:Lorg/ejml/data/DSubmatrixD1;

    const/4 v2, 0x0

    iput v2, p1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iput v2, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    .line 245
    iget-object p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->W:Lorg/ejml/data/DSubmatrixD1;

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->dataA:Lorg/ejml/data/DMatrixRBlock;

    iget v4, v4, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iput v4, v3, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iput v4, p1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    .line 246
    iget-object p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->WTA:Lorg/ejml/data/DSubmatrixD1;

    iput v2, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    iput v2, p1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    move p1, v2

    :goto_0
    if-ge p1, v0, :cond_1

    .line 251
    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iput p1, v3, Lorg/ejml/data/DSubmatrixD1;->col0:I

    .line 252
    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iget v4, v3, Lorg/ejml/data/DSubmatrixD1;->col0:I

    iget v5, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->blockLength:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->dataA:Lorg/ejml/data/DMatrixRBlock;

    iget v5, v5, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Lorg/ejml/data/DSubmatrixD1;->col1:I

    .line 253
    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iput p1, v3, Lorg/ejml/data/DSubmatrixD1;->row0:I

    .line 255
    iput p1, v1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    .line 260
    invoke-direct {p0}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->setW()V

    .line 262
    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->WTA:Lorg/ejml/data/DSubmatrixD1;

    iput v2, v3, Lorg/ejml/data/DSubmatrixD1;->row0:I

    .line 263
    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->WTA:Lorg/ejml/data/DSubmatrixD1;

    iput v2, v3, Lorg/ejml/data/DSubmatrixD1;->col0:I

    .line 264
    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->WTA:Lorg/ejml/data/DSubmatrixD1;

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->W:Lorg/ejml/data/DSubmatrixD1;

    iget v4, v4, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget-object v5, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->W:Lorg/ejml/data/DSubmatrixD1;

    iget v5, v5, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v4, v5

    iput v4, v3, Lorg/ejml/data/DSubmatrixD1;->row1:I

    .line 265
    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->WTA:Lorg/ejml/data/DSubmatrixD1;

    iget v4, v1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v4, v5

    iput v4, v3, Lorg/ejml/data/DSubmatrixD1;->col1:I

    .line 266
    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->WTA:Lorg/ejml/data/DSubmatrixD1;

    iget-object v3, v3, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v3, Lorg/ejml/data/DMatrixD1;

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->WTA:Lorg/ejml/data/DSubmatrixD1;

    iget v4, v4, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget-object v5, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->WTA:Lorg/ejml/data/DSubmatrixD1;

    iget v5, v5, Lorg/ejml/data/DSubmatrixD1;->col1:I

    invoke-virtual {v3, v4, v5, v2}, Lorg/ejml/data/DMatrixD1;->reshape(IIZ)V

    .line 269
    iget-boolean v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->saveW:Z

    if-nez v3, :cond_0

    .line 270
    iget v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->blockLength:I

    iget-object v5, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iget-object v6, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->W:Lorg/ejml/data/DSubmatrixD1;

    iget-object v7, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->workspace:Lpabeles/concurrency/GrowArray;

    iget-object v8, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->gammas:[D

    iget v9, v5, Lorg/ejml/data/DSubmatrixD1;->col0:I

    invoke-static/range {v4 .. v9}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_DDRB;->computeW_Column(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lpabeles/concurrency/GrowArray;[DI)V

    .line 273
    :cond_0
    iget v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->blockLength:I

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->W:Lorg/ejml/data/DSubmatrixD1;

    iget-object v5, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->WTA:Lorg/ejml/data/DSubmatrixD1;

    invoke-static {v3, v4, v1, v5}, Lorg/ejml/dense/block/MatrixMult_DDRB;->multTransA(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V

    .line 274
    iget v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->blockLength:I

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iget-object v5, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->WTA:Lorg/ejml/data/DSubmatrixD1;

    invoke-static {v3, v4, v5, v1}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_DDRB;->multAdd_zeros(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V

    .line 249
    iget v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->blockLength:I

    add-int/2addr p1, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public decompose(Lorg/ejml/data/DMatrixRBlock;)Z
    .locals 7

    .line 306
    invoke-direct {p0, p1}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->setup(Lorg/ejml/data/DMatrixRBlock;)V

    .line 308
    iget v0, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 312
    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iput v2, v3, Lorg/ejml/data/DSubmatrixD1;->col0:I

    .line 313
    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iget v4, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget-object v5, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iget v5, v5, Lorg/ejml/data/DSubmatrixD1;->col0:I

    iget v6, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->blockLength:I

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Lorg/ejml/data/DSubmatrixD1;->col1:I

    .line 314
    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iput v2, v3, Lorg/ejml/data/DSubmatrixD1;->row0:I

    .line 318
    iget v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->blockLength:I

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iget-object v5, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->gammas:[D

    invoke-static {v3, v4, v5}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_DDRB;->decomposeQR_block_col(ILorg/ejml/data/DSubmatrixD1;[D)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    .line 323
    :cond_0
    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->A:Lorg/ejml/data/DSubmatrixD1;

    invoke-virtual {p0, v3}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->updateA(Lorg/ejml/data/DSubmatrixD1;)V

    .line 311
    iget v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->blockLength:I

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 67
    check-cast p1, Lorg/ejml/data/DMatrixRBlock;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->decompose(Lorg/ejml/data/DMatrixRBlock;)Z

    move-result p1

    return p1
.end method

.method public getQ(Lorg/ejml/data/DMatrixRBlock;Z)Lorg/ejml/data/DMatrixRBlock;
    .locals 3

    .line 124
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->dataA:Lorg/ejml/data/DMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->dataA:Lorg/ejml/data/DMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget v2, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->blockLength:I

    invoke-static {p1, v0, v1, v2, p2}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->initializeQ(Lorg/ejml/data/DMatrixRBlock;IIIZ)Lorg/ejml/data/DMatrixRBlock;

    move-result-object p1

    const/4 p2, 0x1

    .line 126
    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->applyQ(Lorg/ejml/data/DMatrixRBlock;Z)V

    return-object p1
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 67
    check-cast p1, Lorg/ejml/data/DMatrixRBlock;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->getQ(Lorg/ejml/data/DMatrixRBlock;Z)Lorg/ejml/data/DMatrixRBlock;

    move-result-object p1

    return-object p1
.end method

.method public getQR()Lorg/ejml/data/DMatrixRBlock;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->dataA:Lorg/ejml/data/DMatrixRBlock;

    return-object v0
.end method

.method public getR(Lorg/ejml/data/DMatrixRBlock;Z)Lorg/ejml/data/DMatrixRBlock;
    .locals 3

    .line 280
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->dataA:Lorg/ejml/data/DMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->dataA:Lorg/ejml/data/DMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    .line 284
    new-instance p1, Lorg/ejml/data/DMatrixRBlock;

    iget-object p2, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->dataA:Lorg/ejml/data/DMatrixRBlock;

    iget p2, p2, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->blockLength:I

    invoke-direct {p1, v0, p2, v1}, Lorg/ejml/data/DMatrixRBlock;-><init>(III)V

    goto :goto_0

    .line 286
    :cond_0
    new-instance p1, Lorg/ejml/data/DMatrixRBlock;

    iget-object p2, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->dataA:Lorg/ejml/data/DMatrixRBlock;

    iget p2, p2, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->dataA:Lorg/ejml/data/DMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->blockLength:I

    invoke-direct {p1, p2, v0, v1}, Lorg/ejml/data/DMatrixRBlock;-><init>(III)V

    goto :goto_0

    :cond_1
    const-string v1, "Unexpected dimension."

    if-eqz p2, :cond_3

    .line 290
    iget p2, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->dataA:Lorg/ejml/data/DMatrixRBlock;

    iget v2, v2, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    if-ne p2, v2, :cond_2

    iget p2, p1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    if-ne p2, v0, :cond_2

    goto :goto_0

    .line 291
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 293
    :cond_3
    iget p2, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->dataA:Lorg/ejml/data/DMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    if-ne p2, v0, :cond_4

    iget p2, p1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->dataA:Lorg/ejml/data/DMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    if-ne p2, v0, :cond_4

    :goto_0
    const/4 p2, 0x0

    .line 298
    invoke-static {p2, p1}, Lorg/ejml/dense/block/MatrixOps_DDRB;->zeroTriangle(ZLorg/ejml/data/DMatrixRBlock;)V

    const/4 p2, 0x1

    .line 299
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->dataA:Lorg/ejml/data/DMatrixRBlock;

    invoke-static {p2, v0, p1}, Lorg/ejml/dense/block/MatrixOps_DDRB;->copyTriangle(ZLorg/ejml/data/DMatrixRBlock;Lorg/ejml/data/DMatrixRBlock;)V

    return-object p1

    .line 294
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getR(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 67
    check-cast p1, Lorg/ejml/data/DMatrixRBlock;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->getR(Lorg/ejml/data/DMatrixRBlock;Z)Lorg/ejml/data/DMatrixRBlock;

    move-result-object p1

    return-object p1
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setSaveW(Z)V
    .locals 0

    .line 119
    iput-boolean p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->saveW:Z

    return-void
.end method

.method protected updateA(Lorg/ejml/data/DSubmatrixD1;)V
    .locals 8

    .line 363
    invoke-direct {p0}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->setW()V

    .line 365
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iget v0, v0, Lorg/ejml/data/DSubmatrixD1;->row0:I

    iput v0, p1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    .line 366
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iget v0, v0, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iput v0, p1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    .line 367
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iget v0, v0, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iput v0, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    .line 368
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iget-object v0, v0, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixD1;

    iget v0, v0, Lorg/ejml/data/DMatrixD1;->numCols:I

    iput v0, p1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    .line 370
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->WTA:Lorg/ejml/data/DSubmatrixD1;

    const/4 v1, 0x0

    iput v1, v0, Lorg/ejml/data/DSubmatrixD1;->row0:I

    .line 371
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->WTA:Lorg/ejml/data/DSubmatrixD1;

    iput v1, v0, Lorg/ejml/data/DSubmatrixD1;->col0:I

    .line 372
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->WTA:Lorg/ejml/data/DSubmatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->W:Lorg/ejml/data/DSubmatrixD1;

    iget v2, v2, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->W:Lorg/ejml/data/DSubmatrixD1;

    iget v3, v3, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v2, v3

    iput v2, v0, Lorg/ejml/data/DSubmatrixD1;->row1:I

    .line 373
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->WTA:Lorg/ejml/data/DSubmatrixD1;

    iget v2, p1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v3, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v2, v3

    iput v2, v0, Lorg/ejml/data/DSubmatrixD1;->col1:I

    .line 374
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->WTA:Lorg/ejml/data/DSubmatrixD1;

    iget-object v0, v0, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->WTA:Lorg/ejml/data/DSubmatrixD1;

    iget v2, v2, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->WTA:Lorg/ejml/data/DSubmatrixD1;

    iget v3, v3, Lorg/ejml/data/DSubmatrixD1;->col1:I

    invoke-virtual {v0, v2, v3, v1}, Lorg/ejml/data/DMatrixD1;->reshape(IIZ)V

    .line 376
    iget v0, p1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v1, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    if-le v0, v1, :cond_0

    .line 377
    iget v2, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->blockLength:I

    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->W:Lorg/ejml/data/DSubmatrixD1;

    iget-object v5, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->workspace:Lpabeles/concurrency/GrowArray;

    iget-object v6, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->gammas:[D

    iget v7, v3, Lorg/ejml/data/DSubmatrixD1;->col0:I

    invoke-static/range {v2 .. v7}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_DDRB;->computeW_Column(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lpabeles/concurrency/GrowArray;[DI)V

    .line 379
    iget v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->blockLength:I

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->W:Lorg/ejml/data/DSubmatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->WTA:Lorg/ejml/data/DSubmatrixD1;

    invoke-static {v0, v1, p1, v2}, Lorg/ejml/dense/block/MatrixMult_DDRB;->multTransA(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V

    .line 380
    iget v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->blockLength:I

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->WTA:Lorg/ejml/data/DSubmatrixD1;

    invoke-static {v0, v1, v2, p1}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_DDRB;->multAdd_zeros(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;)V

    goto :goto_0

    .line 381
    :cond_0
    iget-boolean p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->saveW:Z

    if-eqz p1, :cond_1

    .line 382
    iget v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->blockLength:I

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->Y:Lorg/ejml/data/DSubmatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->W:Lorg/ejml/data/DSubmatrixD1;

    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->workspace:Lpabeles/concurrency/GrowArray;

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_DDRB;->gammas:[D

    iget v5, v1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_DDRB;->computeW_Column(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;Lpabeles/concurrency/GrowArray;[DI)V

    :cond_1
    :goto_0
    return-void
.end method
