.class public Landroidx/input/motionprediction/kalman/matrix/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"


# instance fields
.field private final mCols:I

.field private final mMem:[D

.field private final mRows:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    .line 47
    iput p2, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    mul-int/2addr p1, p2

    .line 48
    new-array p1, p1, [D

    iput-object p1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mMem:[D

    return-void
.end method

.method public constructor <init>(I[D)V
    .locals 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    array-length v0, p2

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    iput v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    .line 62
    iput p1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    .line 63
    iput-object p2, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mMem:[D

    .line 64
    array-length v1, p2

    mul-int v2, v0, p1

    if-ne v1, v2, :cond_0

    return-void

    .line 65
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    array-length p2, p2

    .line 69
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    and-int/2addr p1, v0

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Invalid number of elements in \'values\' Expected:%d Actual:%d"

    .line 66
    invoke-static {v2, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Landroidx/input/motionprediction/kalman/matrix/Matrix;)V
    .locals 3

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iget v0, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    iput v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    .line 81
    iget v1, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    iput v1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    mul-int/2addr v0, v1

    .line 82
    new-array v0, v0, [D

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mMem:[D

    .line 83
    iget-object p1, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mMem:[D

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static identity(I)Landroidx/input/motionprediction/kalman/matrix/Matrix;
    .locals 1

    .line 103
    new-instance v0, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    invoke-direct {v0, p0, p0}, Landroidx/input/motionprediction/kalman/matrix/Matrix;-><init>(II)V

    .line 104
    invoke-static {v0}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->setIdentity(Landroidx/input/motionprediction/kalman/matrix/Matrix;)V

    return-object v0
.end method

.method public static setIdentity(Landroidx/input/motionprediction/kalman/matrix/Matrix;)V
    .locals 4

    .line 115
    iget-object v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mMem:[D

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 116
    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    iget v1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 118
    invoke-virtual {p0, v1, v1, v2, v3}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private shortString()Ljava/lang/String;
    .locals 2

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dot(Landroidx/input/motionprediction/kalman/matrix/Matrix;Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;
    .locals 10

    .line 238
    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    iget v1, p2, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    iget v1, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    if-ne v0, v1, :cond_3

    iget v0, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    iget v1, p2, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    move v1, v0

    .line 248
    :goto_0
    iget v2, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 249
    :goto_1
    iget v3, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    if-ge v2, v3, :cond_1

    const-wide/16 v3, 0x0

    move v5, v0

    .line 251
    :goto_2
    iget v6, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    if-ge v5, v6, :cond_0

    .line 252
    invoke-virtual {p0, v1, v5}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v6

    invoke-virtual {p1, v5, v2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 254
    :cond_0
    invoke-virtual {p2, v1, v2, v3, v4}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p2

    .line 239
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 244
    invoke-direct {p0}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->shortString()Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-direct {p1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->shortString()Ljava/lang/String;

    move-result-object p1

    .line 246
    invoke-direct {p2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->shortString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v2, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "The matrices dimensions are not conformant for a dot matrix operation. this:%s that:%s result:%s"

    .line 240
    invoke-static {v1, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dotTranspose(Landroidx/input/motionprediction/kalman/matrix/Matrix;Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;
    .locals 10

    .line 347
    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    iget v1, p2, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    iget v1, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    if-ne v0, v1, :cond_3

    iget v0, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    iget v1, p2, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    move v1, v0

    .line 357
    :goto_0
    iget v2, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 358
    :goto_1
    iget v3, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    if-ge v2, v3, :cond_1

    const-wide/16 v3, 0x0

    move v5, v0

    .line 360
    :goto_2
    iget v6, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    if-ge v5, v6, :cond_0

    .line 361
    invoke-virtual {p0, v1, v5}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v6

    invoke-virtual {p1, v2, v5}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 363
    :cond_0
    invoke-virtual {p2, v1, v2, v3, v4}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p2

    .line 348
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 353
    invoke-direct {p0}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->shortString()Ljava/lang/String;

    move-result-object v2

    .line 354
    invoke-direct {p1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->shortString()Ljava/lang/String;

    move-result-object p1

    .line 355
    invoke-direct {p2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->shortString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v2, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "The matrices dimensions are not conformant for a transpose operation. this:%s that:%s result:%s"

    .line 349
    invoke-static {v1, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 375
    :cond_0
    instance-of v1, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 378
    :cond_1
    check-cast p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;

    .line 379
    iget v1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    iget v3, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    if-eq v1, v3, :cond_2

    return v2

    .line 382
    :cond_2
    iget v1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    iget v3, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    move v1, v2

    .line 385
    :goto_0
    iget-object v3, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mMem:[D

    array-length v4, v3

    if-ge v1, v4, :cond_5

    .line 386
    aget-wide v3, v3, v1

    iget-object v5, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mMem:[D

    aget-wide v5, v5, v1

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public fill(D)V
    .locals 1

    .line 170
    iget-object v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mMem:[D

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->fill([DD)V

    return-void
.end method

.method public get(II)D
    .locals 3

    if-ltz p1, :cond_0

    .line 131
    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    if-ge p2, v0, :cond_0

    .line 140
    iget-object v1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mMem:[D

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    aget-wide p1, v1, p1

    return-wide p1

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 136
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 137
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 138
    invoke-direct {p0}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->shortString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, p2, v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Invalid matrix index value. i:%d j:%d not available in %s"

    .line 133
    invoke-static {v1, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNumCols()I
    .locals 1

    .line 93
    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    return v0
.end method

.method public getNumRows()I
    .locals 1

    .line 88
    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 396
    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    mul-int/lit8 v0, v0, 0x65

    iget v1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    add-int/2addr v0, v1

    .line 397
    iget-object v1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mMem:[D

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, v1, v3

    mul-int/lit8 v0, v0, 0x25

    .line 398
    invoke-static {v4, v5}, Ljava/lang/Double;->hashCode(D)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public inverse(Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;
    .locals 13

    .line 269
    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    iget v1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    if-ne v0, v1, :cond_11

    .line 274
    iget v2, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    if-ne v2, v0, :cond_10

    iget v0, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    mul-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_10

    const/4 v0, 0x0

    move v1, v0

    .line 284
    :goto_0
    iget v2, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    const-wide/16 v3, 0x0

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 285
    :goto_1
    iget v5, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    if-ge v2, v5, :cond_1

    .line 286
    invoke-virtual {p0, v1, v2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v5

    invoke-virtual {p1, v1, v2, v5, v6}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    .line 287
    iget v5, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    add-int/2addr v5, v2

    if-ne v1, v2, :cond_0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_0
    move-wide v6, v3

    :goto_2
    invoke-virtual {p1, v1, v5, v6, v7}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 291
    :goto_3
    iget v2, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    if-ge v1, v2, :cond_a

    .line 293
    invoke-virtual {p1, v1, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    add-int/lit8 v2, v1, 0x1

    move v8, v1

    move v7, v2

    .line 294
    :goto_4
    iget v9, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    if-ge v7, v9, :cond_4

    .line 295
    invoke-virtual {p1, v7, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpl-double v11, v9, v5

    if-lez v11, :cond_3

    move v8, v7

    move-wide v5, v9

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    if-eq v8, v1, :cond_5

    move v5, v0

    .line 302
    :goto_5
    iget v6, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    if-ge v5, v6, :cond_5

    .line 303
    invoke-virtual {p1, v1, v5}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v6

    .line 304
    invoke-virtual {p1, v8, v5}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v9

    invoke-virtual {p1, v1, v5, v9, v10}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    .line 305
    invoke-virtual {p1, v8, v5, v6, v7}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 308
    :cond_5
    invoke-virtual {p1, v1, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v5

    cmpl-double v7, v5, v3

    if-eqz v7, :cond_9

    move v7, v0

    .line 312
    :goto_6
    iget v8, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    if-ge v7, v8, :cond_6

    .line 313
    invoke-virtual {p1, v1, v7}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v8

    div-double/2addr v8, v5

    invoke-virtual {p1, v1, v7, v8, v9}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_6
    move v5, v2

    .line 315
    :goto_7
    iget v6, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    if-ge v5, v6, :cond_8

    .line 316
    invoke-virtual {p1, v5, v1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v6

    move v8, v0

    .line 317
    :goto_8
    iget v9, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    if-ge v8, v9, :cond_7

    .line 318
    invoke-virtual {p1, v5, v8}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v9

    invoke-virtual {p1, v1, v8}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v11

    mul-double/2addr v11, v6

    sub-double/2addr v9, v11

    invoke-virtual {p1, v5, v8, v9, v10}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_8
    move v1, v2

    goto :goto_3

    .line 310
    :cond_9
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "Singular matrix"

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    add-int/lit8 v2, v2, -0x1

    :goto_9
    if-ltz v2, :cond_d

    move v1, v0

    :goto_a
    if-ge v1, v2, :cond_c

    .line 324
    invoke-virtual {p1, v1, v2}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v3

    move v5, v0

    .line 325
    :goto_b
    iget v6, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    if-ge v5, v6, :cond_b

    .line 326
    invoke-virtual {p1, v1, v5}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v6

    invoke-virtual {p1, v2, v5}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v8

    mul-double/2addr v8, v3

    sub-double/2addr v6, v8

    invoke-virtual {p1, v1, v5, v6, v7}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_c
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :cond_d
    move v1, v0

    .line 330
    :goto_c
    iget v2, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    if-ge v1, v2, :cond_f

    move v2, v0

    .line 331
    :goto_d
    iget v3, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    if-ge v2, v3, :cond_e

    add-int/2addr v3, v2

    .line 332
    invoke-virtual {p1, v1, v3}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->get(II)D

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->put(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_f
    return-object p0

    .line 275
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 279
    invoke-direct {p1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->shortString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "The scratch matrix size is not correct. this:%s"

    .line 276
    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 271
    invoke-direct {p0}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->shortString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The matrix is not square. this:%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public minus(Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;
    .locals 6

    .line 215
    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    iget v1, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    iget v1, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 223
    :goto_0
    iget-object v1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mMem:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 224
    aget-wide v2, v1, v0

    iget-object v4, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mMem:[D

    aget-wide v4, v4, v0

    sub-double/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    .line 216
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 220
    invoke-direct {p0}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->shortString()Ljava/lang/String;

    move-result-object v2

    .line 221
    invoke-direct {p1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->shortString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "The matrix dimensions are not the same. this:%s that:%s"

    .line 217
    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public plus(Landroidx/input/motionprediction/kalman/matrix/Matrix;)Landroidx/input/motionprediction/kalman/matrix/Matrix;
    .locals 6

    .line 193
    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    iget v1, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    iget v1, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 201
    :goto_0
    iget-object v1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mMem:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 202
    aget-wide v2, v1, v0

    iget-object v4, p1, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mMem:[D

    aget-wide v4, v4, v0

    add-double/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    .line 194
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 198
    invoke-direct {p0}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->shortString()Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-direct {p1}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->shortString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "The matrix dimensions are not the same. this:%s that:%s"

    .line 195
    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(IID)V
    .locals 2

    if-ltz p1, :cond_0

    .line 152
    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    if-ge p2, v0, :cond_0

    .line 161
    iget-object v1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mMem:[D

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    aput-wide p3, v1, p1

    return-void

    .line 153
    :cond_0
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    sget-object p4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 157
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 158
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 159
    invoke-direct {p0}, Landroidx/input/motionprediction/kalman/matrix/Matrix;->shortString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Invalid matrix index value. i:%d j:%d not available in %s"

    .line 154
    invoke-static {p4, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public scale(D)V
    .locals 5

    .line 179
    iget v0, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    iget v1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    mul-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 181
    iget-object v2, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mMem:[D

    aget-wide v3, v2, v1

    mul-double/2addr v3, p1

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    iget v2, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 411
    iget v1, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mRows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 412
    :goto_0
    iget-object v2, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mMem:[D

    array-length v2, v2

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    .line 414
    iget v2, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mCols:I

    rem-int v2, v1, v2

    if-nez v2, :cond_0

    const-string v2, "; "

    goto :goto_1

    :cond_0
    const-string v2, ", "

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    :cond_1
    iget-object v2, p0, Landroidx/input/motionprediction/kalman/matrix/Matrix;->mMem:[D

    aget-wide v2, v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "]"

    .line 418
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
