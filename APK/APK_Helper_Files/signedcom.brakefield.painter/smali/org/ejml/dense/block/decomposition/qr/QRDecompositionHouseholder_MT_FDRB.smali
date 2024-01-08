.class public Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;
.super Ljava/lang/Object;
.source "QRDecompositionHouseholder_MT_FDRB.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/QRDecomposition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/QRDecomposition<",
        "Lorg/ejml/data/FMatrixRBlock;",
        ">;"
    }
.end annotation


# instance fields
.field private final A:Lorg/ejml/data/FSubmatrixD1;

.field private final W:Lorg/ejml/data/FSubmatrixD1;

.field private final WTA:Lorg/ejml/data/FSubmatrixD1;

.field private final Y:Lorg/ejml/data/FSubmatrixD1;

.field private blockLength:I

.field private dataA:Lorg/ejml/data/FMatrixRBlock;

.field private final dataW:Lorg/ejml/data/FMatrixRBlock;

.field private final dataWTA:Lorg/ejml/data/FMatrixRBlock;

.field private gammas:[F

.field private saveW:Z

.field private final workspace:Lpabeles/concurrency/GrowArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/FGrowArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$pq654f7UQ7aW8eY1DSwJEDd0k2c()Lorg/ejml/data/FGrowArray;
    .locals 1

    new-instance v0, Lorg/ejml/data/FGrowArray;

    invoke-direct {v0}, Lorg/ejml/data/FGrowArray;-><init>()V

    return-object v0
.end method

.method public constructor <init>()V
    .locals 4

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lorg/ejml/data/FMatrixRBlock;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/FMatrixRBlock;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->dataW:Lorg/ejml/data/FMatrixRBlock;

    .line 78
    new-instance v2, Lorg/ejml/data/FMatrixRBlock;

    invoke-direct {v2, v1, v1}, Lorg/ejml/data/FMatrixRBlock;-><init>(II)V

    iput-object v2, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->dataWTA:Lorg/ejml/data/FMatrixRBlock;

    .line 84
    new-instance v3, Lorg/ejml/data/FSubmatrixD1;

    invoke-direct {v3}, Lorg/ejml/data/FSubmatrixD1;-><init>()V

    iput-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FSubmatrixD1;

    .line 85
    new-instance v3, Lorg/ejml/data/FSubmatrixD1;

    invoke-direct {v3}, Lorg/ejml/data/FSubmatrixD1;-><init>()V

    iput-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    .line 86
    new-instance v3, Lorg/ejml/data/FSubmatrixD1;

    invoke-direct {v3, v0}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;)V

    iput-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->W:Lorg/ejml/data/FSubmatrixD1;

    .line 87
    new-instance v0, Lorg/ejml/data/FSubmatrixD1;

    invoke-direct {v0, v2}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;)V

    iput-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->WTA:Lorg/ejml/data/FSubmatrixD1;

    .line 88
    new-instance v0, Lpabeles/concurrency/GrowArray;

    new-instance v2, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v2}, Lpabeles/concurrency/GrowArray;-><init>(Lpabeles/concurrency/ConcurrencyOps$NewInstance;)V

    iput-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->workspace:Lpabeles/concurrency/GrowArray;

    new-array v0, v1, [F

    .line 90
    iput-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->gammas:[F

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->saveW:Z

    return-void
.end method

.method public static initializeQ(Lorg/ejml/data/FMatrixRBlock;IIIZ)Lorg/ejml/data/FMatrixRBlock;
    .locals 2

    .line 136
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const-string v0, " "

    const-string v1, "Unexpected matrix dimension. Found "

    if-eqz p4, :cond_2

    if-nez p0, :cond_0

    .line 139
    new-instance p0, Lorg/ejml/data/FMatrixRBlock;

    invoke-direct {p0, p1, p2, p3}, Lorg/ejml/data/FMatrixRBlock;-><init>(III)V

    .line 140
    invoke-static {p0}, Lorg/ejml/dense/block/MatrixOps_FDRB;->setIdentity(Lorg/ejml/data/FMatrixRBlock;)V

    goto :goto_0

    .line 142
    :cond_0
    iget p3, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-ne p3, p1, :cond_1

    iget p1, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    if-ne p1, p2, :cond_1

    .line 145
    invoke-static {p0}, Lorg/ejml/dense/block/MatrixOps_FDRB;->setIdentity(Lorg/ejml/data/FMatrixRBlock;)V

    goto :goto_0

    .line 143
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p0, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-nez p0, :cond_3

    .line 150
    new-instance p0, Lorg/ejml/data/FMatrixRBlock;

    invoke-direct {p0, p1, p1, p3}, Lorg/ejml/data/FMatrixRBlock;-><init>(III)V

    .line 151
    invoke-static {p0}, Lorg/ejml/dense/block/MatrixOps_FDRB;->setIdentity(Lorg/ejml/data/FMatrixRBlock;)V

    goto :goto_0

    .line 153
    :cond_3
    iget p2, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-ne p2, p1, :cond_4

    iget p2, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    if-ne p2, p1, :cond_4

    .line 156
    invoke-static {p0}, Lorg/ejml/dense/block/MatrixOps_FDRB;->setIdentity(Lorg/ejml/data/FMatrixRBlock;)V

    :goto_0
    return-object p0

    .line 154
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p0, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setW()V
    .locals 3

    .line 389
    iget-boolean v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->saveW:Z

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->W:Lorg/ejml/data/FSubmatrixD1;

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iget v1, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    iput v1, v0, Lorg/ejml/data/FSubmatrixD1;->col0:I

    .line 391
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->W:Lorg/ejml/data/FSubmatrixD1;

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iget v1, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iput v1, v0, Lorg/ejml/data/FSubmatrixD1;->col1:I

    .line 392
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->W:Lorg/ejml/data/FSubmatrixD1;

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iget v1, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iput v1, v0, Lorg/ejml/data/FSubmatrixD1;->row0:I

    .line 393
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->W:Lorg/ejml/data/FSubmatrixD1;

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iget v1, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iput v1, v0, Lorg/ejml/data/FSubmatrixD1;->row1:I

    goto :goto_0

    .line 395
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->W:Lorg/ejml/data/FSubmatrixD1;

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iget v1, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iget v2, v2, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ejml/data/FSubmatrixD1;->col1:I

    .line 396
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->W:Lorg/ejml/data/FSubmatrixD1;

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iget v1, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iput v1, v0, Lorg/ejml/data/FSubmatrixD1;->row0:I

    :goto_0
    return-void
.end method

.method private setup(Lorg/ejml/data/FMatrixRBlock;)V
    .locals 4

    .line 333
    iget v0, p1, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iput v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->blockLength:I

    .line 334
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->dataW:Lorg/ejml/data/FMatrixRBlock;

    iput v0, v1, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    .line 335
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->dataWTA:Lorg/ejml/data/FMatrixRBlock;

    iget v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->blockLength:I

    iput v1, v0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    .line 337
    iput-object p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->dataA:Lorg/ejml/data/FMatrixRBlock;

    .line 338
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FSubmatrixD1;

    iput-object p1, v0, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    .line 340
    iget v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->blockLength:I

    iget v1, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 341
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->dataW:Lorg/ejml/data/FMatrixRBlock;

    iget v2, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lorg/ejml/data/FMatrixRBlock;->reshape(IIZ)V

    .line 342
    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->dataWTA:Lorg/ejml/data/FMatrixRBlock;

    iget v2, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    invoke-virtual {v1, v0, v2, v3}, Lorg/ejml/data/FMatrixRBlock;->reshape(IIZ)V

    .line 343
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iput-object p1, v0, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    .line 344
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->W:Lorg/ejml/data/FSubmatrixD1;

    iget v2, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iput v2, v1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iput v2, v0, Lorg/ejml/data/FSubmatrixD1;->row1:I

    .line 345
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->gammas:[F

    array-length v0, v0

    iget v1, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    if-ge v0, v1, :cond_0

    .line 346
    iget v0, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->gammas:[F

    .line 348
    :cond_0
    iget-boolean v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->saveW:Z

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->dataW:Lorg/ejml/data/FMatrixRBlock;

    iget v1, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget p1, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    invoke-virtual {v0, v1, p1, v3}, Lorg/ejml/data/FMatrixRBlock;->reshape(IIZ)V

    :cond_1
    return-void
.end method


# virtual methods
.method public applyQ(Lorg/ejml/data/FMatrixRBlock;)V
    .locals 1

    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0, p1, v0}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->applyQ(Lorg/ejml/data/FMatrixRBlock;Z)V

    return-void
.end method

.method public applyQ(Lorg/ejml/data/FMatrixRBlock;Z)V
    .locals 10

    .line 186
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->dataA:Lorg/ejml/data/FMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->dataA:Lorg/ejml/data/FMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 188
    new-instance v1, Lorg/ejml/data/FSubmatrixD1;

    invoke-direct {v1, p1}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;)V

    .line 190
    iget-object p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->W:Lorg/ejml/data/FSubmatrixD1;

    const/4 v2, 0x0

    iput v2, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iput v2, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    .line 191
    iget-object p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->W:Lorg/ejml/data/FSubmatrixD1;

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->dataA:Lorg/ejml/data/FMatrixRBlock;

    iget v4, v4, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iput v4, v3, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iput v4, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    .line 192
    iget-object p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->WTA:Lorg/ejml/data/FSubmatrixD1;

    iput v2, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    iput v2, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    .line 194
    iget p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->blockLength:I

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

    .line 203
    iget-object p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iput v3, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    .line 204
    iget-object p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iget v0, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    iget v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->blockLength:I

    add-int/2addr v0, v4

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->dataA:Lorg/ejml/data/FMatrixRBlock;

    iget v4, v4, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    .line 205
    iget-object p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iput v3, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    if-eqz p2, :cond_2

    .line 207
    iput v3, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    .line 208
    :cond_2
    iput v3, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    .line 210
    invoke-direct {p0}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->setW()V

    .line 211
    iget-object p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->WTA:Lorg/ejml/data/FSubmatrixD1;

    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iget v0, v0, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iget v4, v4, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v0, v4

    iput v0, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    .line 212
    iget-object p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->WTA:Lorg/ejml/data/FSubmatrixD1;

    iget v0, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v0, v4

    iput v0, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    .line 213
    iget-object p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->WTA:Lorg/ejml/data/FSubmatrixD1;

    iget-object p1, p1, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast p1, Lorg/ejml/data/FMatrixD1;

    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->WTA:Lorg/ejml/data/FSubmatrixD1;

    iget v0, v0, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->WTA:Lorg/ejml/data/FSubmatrixD1;

    iget v4, v4, Lorg/ejml/data/FSubmatrixD1;->col1:I

    invoke-virtual {p1, v0, v4, v2}, Lorg/ejml/data/FMatrixD1;->reshape(IIZ)V

    .line 216
    iget-boolean p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->saveW:Z

    if-nez p1, :cond_3

    .line 217
    iget v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->blockLength:I

    iget-object v5, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iget-object v6, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->W:Lorg/ejml/data/FSubmatrixD1;

    iget-object v7, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->workspace:Lpabeles/concurrency/GrowArray;

    iget-object v8, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->gammas:[F

    iget v9, v5, Lorg/ejml/data/FSubmatrixD1;->col0:I

    invoke-static/range {v4 .. v9}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB;->computeW_Column(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lpabeles/concurrency/GrowArray;[FI)V

    .line 220
    :cond_3
    iget p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->blockLength:I

    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->WTA:Lorg/ejml/data/FSubmatrixD1;

    invoke-static {p1, v0, v1, v4}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB;->multTransA_vecCol(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V

    .line 221
    iget p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->blockLength:I

    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->W:Lorg/ejml/data/FSubmatrixD1;

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->WTA:Lorg/ejml/data/FSubmatrixD1;

    invoke-static {p1, v0, v4, v1}, Lorg/ejml/dense/block/MatrixMult_MT_FDRB;->multPlus(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V

    .line 201
    iget p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->blockLength:I

    sub-int/2addr v3, p1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public applyQTran(Lorg/ejml/data/FMatrixRBlock;)V
    .locals 10

    .line 239
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->dataA:Lorg/ejml/data/FMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->dataA:Lorg/ejml/data/FMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 241
    new-instance v1, Lorg/ejml/data/FSubmatrixD1;

    invoke-direct {v1, p1}, Lorg/ejml/data/FSubmatrixD1;-><init>(Lorg/ejml/data/FMatrixD1;)V

    .line 243
    iget-object p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->W:Lorg/ejml/data/FSubmatrixD1;

    const/4 v2, 0x0

    iput v2, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iput v2, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    .line 244
    iget-object p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->W:Lorg/ejml/data/FSubmatrixD1;

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->dataA:Lorg/ejml/data/FMatrixRBlock;

    iget v4, v4, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iput v4, v3, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iput v4, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    .line 245
    iget-object p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->WTA:Lorg/ejml/data/FSubmatrixD1;

    iput v2, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    iput v2, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    move p1, v2

    :goto_0
    if-ge p1, v0, :cond_1

    .line 250
    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iput p1, v3, Lorg/ejml/data/FSubmatrixD1;->col0:I

    .line 251
    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iget v4, v3, Lorg/ejml/data/FSubmatrixD1;->col0:I

    iget v5, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->blockLength:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->dataA:Lorg/ejml/data/FMatrixRBlock;

    iget v5, v5, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Lorg/ejml/data/FSubmatrixD1;->col1:I

    .line 252
    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iput p1, v3, Lorg/ejml/data/FSubmatrixD1;->row0:I

    .line 254
    iput p1, v1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    .line 259
    invoke-direct {p0}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->setW()V

    .line 261
    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->WTA:Lorg/ejml/data/FSubmatrixD1;

    iput v2, v3, Lorg/ejml/data/FSubmatrixD1;->row0:I

    .line 262
    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->WTA:Lorg/ejml/data/FSubmatrixD1;

    iput v2, v3, Lorg/ejml/data/FSubmatrixD1;->col0:I

    .line 263
    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->WTA:Lorg/ejml/data/FSubmatrixD1;

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->W:Lorg/ejml/data/FSubmatrixD1;

    iget v4, v4, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget-object v5, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->W:Lorg/ejml/data/FSubmatrixD1;

    iget v5, v5, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v4, v5

    iput v4, v3, Lorg/ejml/data/FSubmatrixD1;->row1:I

    .line 264
    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->WTA:Lorg/ejml/data/FSubmatrixD1;

    iget v4, v1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v4, v5

    iput v4, v3, Lorg/ejml/data/FSubmatrixD1;->col1:I

    .line 265
    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->WTA:Lorg/ejml/data/FSubmatrixD1;

    iget-object v3, v3, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v3, Lorg/ejml/data/FMatrixD1;

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->WTA:Lorg/ejml/data/FSubmatrixD1;

    iget v4, v4, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget-object v5, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->WTA:Lorg/ejml/data/FSubmatrixD1;

    iget v5, v5, Lorg/ejml/data/FSubmatrixD1;->col1:I

    invoke-virtual {v3, v4, v5, v2}, Lorg/ejml/data/FMatrixD1;->reshape(IIZ)V

    .line 268
    iget-boolean v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->saveW:Z

    if-nez v3, :cond_0

    .line 269
    iget v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->blockLength:I

    iget-object v5, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iget-object v6, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->W:Lorg/ejml/data/FSubmatrixD1;

    iget-object v7, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->workspace:Lpabeles/concurrency/GrowArray;

    iget-object v8, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->gammas:[F

    iget v9, v5, Lorg/ejml/data/FSubmatrixD1;->col0:I

    invoke-static/range {v4 .. v9}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB;->computeW_Column(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lpabeles/concurrency/GrowArray;[FI)V

    .line 272
    :cond_0
    iget v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->blockLength:I

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->W:Lorg/ejml/data/FSubmatrixD1;

    iget-object v5, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->WTA:Lorg/ejml/data/FSubmatrixD1;

    invoke-static {v3, v4, v1, v5}, Lorg/ejml/dense/block/MatrixMult_MT_FDRB;->multTransA(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V

    .line 273
    iget v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->blockLength:I

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iget-object v5, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->WTA:Lorg/ejml/data/FSubmatrixD1;

    invoke-static {v3, v4, v5, v1}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB;->multAdd_zeros(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V

    .line 248
    iget v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->blockLength:I

    add-int/2addr p1, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public decompose(Lorg/ejml/data/FMatrixRBlock;)Z
    .locals 7

    .line 305
    invoke-direct {p0, p1}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->setup(Lorg/ejml/data/FMatrixRBlock;)V

    .line 307
    iget v0, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 311
    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iput v2, v3, Lorg/ejml/data/FSubmatrixD1;->col0:I

    .line 312
    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iget v4, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget-object v5, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iget v5, v5, Lorg/ejml/data/FSubmatrixD1;->col0:I

    iget v6, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->blockLength:I

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Lorg/ejml/data/FSubmatrixD1;->col1:I

    .line 313
    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iput v2, v3, Lorg/ejml/data/FSubmatrixD1;->row0:I

    .line 317
    iget v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->blockLength:I

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iget-object v5, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->gammas:[F

    invoke-static {v3, v4, v5}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB;->decomposeQR_block_col(ILorg/ejml/data/FSubmatrixD1;[F)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    .line 322
    :cond_0
    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->A:Lorg/ejml/data/FSubmatrixD1;

    invoke-virtual {p0, v3}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->updateA(Lorg/ejml/data/FSubmatrixD1;)V

    .line 310
    iget v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->blockLength:I

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 65
    check-cast p1, Lorg/ejml/data/FMatrixRBlock;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->decompose(Lorg/ejml/data/FMatrixRBlock;)Z

    move-result p1

    return p1
.end method

.method public getQ(Lorg/ejml/data/FMatrixRBlock;Z)Lorg/ejml/data/FMatrixRBlock;
    .locals 3

    .line 123
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->dataA:Lorg/ejml/data/FMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->dataA:Lorg/ejml/data/FMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget v2, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->blockLength:I

    invoke-static {p1, v0, v1, v2, p2}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->initializeQ(Lorg/ejml/data/FMatrixRBlock;IIIZ)Lorg/ejml/data/FMatrixRBlock;

    move-result-object p1

    const/4 p2, 0x1

    .line 125
    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->applyQ(Lorg/ejml/data/FMatrixRBlock;Z)V

    return-object p1
.end method

.method public bridge synthetic getQ(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 65
    check-cast p1, Lorg/ejml/data/FMatrixRBlock;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->getQ(Lorg/ejml/data/FMatrixRBlock;Z)Lorg/ejml/data/FMatrixRBlock;

    move-result-object p1

    return-object p1
.end method

.method public getQR()Lorg/ejml/data/FMatrixRBlock;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->dataA:Lorg/ejml/data/FMatrixRBlock;

    return-object v0
.end method

.method public getR(Lorg/ejml/data/FMatrixRBlock;Z)Lorg/ejml/data/FMatrixRBlock;
    .locals 3

    .line 279
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->dataA:Lorg/ejml/data/FMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->dataA:Lorg/ejml/data/FMatrixRBlock;

    iget v1, v1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    .line 283
    new-instance p1, Lorg/ejml/data/FMatrixRBlock;

    iget-object p2, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->dataA:Lorg/ejml/data/FMatrixRBlock;

    iget p2, p2, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->blockLength:I

    invoke-direct {p1, v0, p2, v1}, Lorg/ejml/data/FMatrixRBlock;-><init>(III)V

    goto :goto_0

    .line 285
    :cond_0
    new-instance p1, Lorg/ejml/data/FMatrixRBlock;

    iget-object p2, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->dataA:Lorg/ejml/data/FMatrixRBlock;

    iget p2, p2, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->dataA:Lorg/ejml/data/FMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->blockLength:I

    invoke-direct {p1, p2, v0, v1}, Lorg/ejml/data/FMatrixRBlock;-><init>(III)V

    goto :goto_0

    :cond_1
    const-string v1, "Unexpected dimension."

    if-eqz p2, :cond_3

    .line 289
    iget p2, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->dataA:Lorg/ejml/data/FMatrixRBlock;

    iget v2, v2, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    if-ne p2, v2, :cond_2

    iget p2, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-ne p2, v0, :cond_2

    goto :goto_0

    .line 290
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 292
    :cond_3
    iget p2, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->dataA:Lorg/ejml/data/FMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    if-ne p2, v0, :cond_4

    iget p2, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->dataA:Lorg/ejml/data/FMatrixRBlock;

    iget v0, v0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-ne p2, v0, :cond_4

    :goto_0
    const/4 p2, 0x0

    .line 297
    invoke-static {p2, p1}, Lorg/ejml/dense/block/MatrixOps_FDRB;->zeroTriangle(ZLorg/ejml/data/FMatrixRBlock;)V

    const/4 p2, 0x1

    .line 298
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->dataA:Lorg/ejml/data/FMatrixRBlock;

    invoke-static {p2, v0, p1}, Lorg/ejml/dense/block/MatrixOps_FDRB;->copyTriangle(ZLorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRBlock;)V

    return-object p1

    .line 293
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getR(Lorg/ejml/data/Matrix;Z)Lorg/ejml/data/Matrix;
    .locals 0

    .line 65
    check-cast p1, Lorg/ejml/data/FMatrixRBlock;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->getR(Lorg/ejml/data/FMatrixRBlock;Z)Lorg/ejml/data/FMatrixRBlock;

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

    .line 118
    iput-boolean p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->saveW:Z

    return-void
.end method

.method protected updateA(Lorg/ejml/data/FSubmatrixD1;)V
    .locals 8

    .line 362
    invoke-direct {p0}, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->setW()V

    .line 364
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iget v0, v0, Lorg/ejml/data/FSubmatrixD1;->row0:I

    iput v0, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    .line 365
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iget v0, v0, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iput v0, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    .line 366
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iget v0, v0, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iput v0, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    .line 367
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iget-object v0, v0, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixD1;

    iget v0, v0, Lorg/ejml/data/FMatrixD1;->numCols:I

    iput v0, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    .line 369
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->WTA:Lorg/ejml/data/FSubmatrixD1;

    const/4 v1, 0x0

    iput v1, v0, Lorg/ejml/data/FSubmatrixD1;->row0:I

    .line 370
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->WTA:Lorg/ejml/data/FSubmatrixD1;

    iput v1, v0, Lorg/ejml/data/FSubmatrixD1;->col0:I

    .line 371
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->WTA:Lorg/ejml/data/FSubmatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->W:Lorg/ejml/data/FSubmatrixD1;

    iget v2, v2, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->W:Lorg/ejml/data/FSubmatrixD1;

    iget v3, v3, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v2, v3

    iput v2, v0, Lorg/ejml/data/FSubmatrixD1;->row1:I

    .line 372
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->WTA:Lorg/ejml/data/FSubmatrixD1;

    iget v2, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v3, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v2, v3

    iput v2, v0, Lorg/ejml/data/FSubmatrixD1;->col1:I

    .line 373
    iget-object v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->WTA:Lorg/ejml/data/FSubmatrixD1;

    iget-object v0, v0, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->WTA:Lorg/ejml/data/FSubmatrixD1;

    iget v2, v2, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->WTA:Lorg/ejml/data/FSubmatrixD1;

    iget v3, v3, Lorg/ejml/data/FSubmatrixD1;->col1:I

    invoke-virtual {v0, v2, v3, v1}, Lorg/ejml/data/FMatrixD1;->reshape(IIZ)V

    .line 375
    iget v0, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    if-le v0, v1, :cond_0

    .line 376
    iget v2, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->blockLength:I

    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->W:Lorg/ejml/data/FSubmatrixD1;

    iget-object v5, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->workspace:Lpabeles/concurrency/GrowArray;

    iget-object v6, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->gammas:[F

    iget v7, v3, Lorg/ejml/data/FSubmatrixD1;->col0:I

    invoke-static/range {v2 .. v7}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB;->computeW_Column(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lpabeles/concurrency/GrowArray;[FI)V

    .line 378
    iget v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->blockLength:I

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->W:Lorg/ejml/data/FSubmatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->WTA:Lorg/ejml/data/FSubmatrixD1;

    invoke-static {v0, v1, p1, v2}, Lorg/ejml/dense/block/MatrixMult_MT_FDRB;->multTransA(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V

    .line 379
    iget v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->blockLength:I

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->WTA:Lorg/ejml/data/FSubmatrixD1;

    invoke-static {v0, v1, v2, p1}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB;->multAdd_zeros(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;)V

    goto :goto_0

    .line 380
    :cond_0
    iget-boolean p1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->saveW:Z

    if-eqz p1, :cond_1

    .line 381
    iget v0, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->blockLength:I

    iget-object v1, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->Y:Lorg/ejml/data/FSubmatrixD1;

    iget-object v2, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->W:Lorg/ejml/data/FSubmatrixD1;

    iget-object v3, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->workspace:Lpabeles/concurrency/GrowArray;

    iget-object v4, p0, Lorg/ejml/dense/block/decomposition/qr/QRDecompositionHouseholder_MT_FDRB;->gammas:[F

    iget v5, v1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_MT_FDRB;->computeW_Column(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;Lpabeles/concurrency/GrowArray;[FI)V

    :cond_1
    :goto_0
    return-void
.end method
