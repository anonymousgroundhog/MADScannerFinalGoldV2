.class public Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;
.super Ljava/lang/Object;
.source "DeterminantFromMinor_FDRM.java"


# instance fields
.field private dirty:Z

.field private final levelIndexes:[I

.field private final levelRemoved:[I

.field private final levelResults:[F

.field private final minWidth:I

.field private numOpen:I

.field private final open:[I

.field private final tempMat:Lorg/ejml/data/FMatrixRMaj;

.field private final width:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x5

    .line 73
    invoke-direct {p0, p1, v0}, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->dirty:Z

    const/4 v0, 0x5

    if-gt p2, v0, :cond_1

    const/4 v0, 0x2

    if-lt p2, v0, :cond_1

    if-ge p1, p2, :cond_0

    move p2, p1

    .line 88
    :cond_0
    iput p2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->minWidth:I

    .line 89
    iput p1, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->width:I

    add-int/lit8 v0, p2, -0x2

    sub-int v0, p1, v0

    .line 93
    new-array v1, v0, [F

    iput-object v1, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->levelResults:[F

    .line 94
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->levelRemoved:[I

    .line 95
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->levelIndexes:[I

    .line 97
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->open:[I

    .line 99
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    add-int/lit8 p2, p2, -0x1

    invoke-direct {p1, p2, p2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object p1, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->tempMat:Lorg/ejml/data/FMatrixRMaj;

    return-void

    .line 82
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No direct function for that width"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createMinor(Lorg/ejml/data/FMatrix1Row;)V
    .locals 9

    .line 222
    iget v0, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->minWidth:I

    add-int/lit8 v0, v0, -0x1

    .line 223
    iget v1, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->width:I

    sub-int v2, v1, v0

    mul-int/2addr v2, v1

    const/4 v1, 0x0

    move v3, v1

    .line 225
    :goto_0
    iget v4, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->numOpen:I

    if-ge v3, v4, :cond_1

    .line 226
    iget-object v4, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->open:[I

    aget v4, v4, v3

    add-int/2addr v4, v2

    move v5, v1

    move v6, v3

    :goto_1
    if-ge v5, v0, :cond_0

    .line 231
    iget-object v7, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->tempMat:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p1, v4}, Lorg/ejml/data/FMatrix1Row;->get(I)F

    move-result v8

    invoke-virtual {v7, v6, v8}, Lorg/ejml/data/FMatrixRMaj;->set(IF)F

    add-int/2addr v6, v0

    .line 233
    iget v7, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->width:I

    add-int/2addr v4, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initStructures()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 170
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->width:I

    if-ge v1, v2, :cond_0

    .line 171
    iget-object v2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->open:[I

    aput v1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    :cond_0
    iput v2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->numOpen:I

    .line 175
    iget-boolean v1, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->dirty:Z

    if-eqz v1, :cond_1

    move v1, v0

    .line 176
    :goto_1
    iget-object v2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->levelIndexes:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 177
    aput v0, v2, v1

    .line 178
    iget-object v2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->levelResults:[F

    const/4 v3, 0x0

    aput v3, v2, v1

    .line 179
    iget-object v2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->levelRemoved:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->dirty:Z

    return-void
.end method

.method private openAdd(I)V
    .locals 3

    .line 203
    iget-object v0, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->open:[I

    iget v1, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->numOpen:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->numOpen:I

    aput p1, v0, v1

    return-void
.end method

.method private openAdd(II)V
    .locals 3

    .line 195
    iget v0, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->numOpen:I

    :goto_0
    if-le v0, p1, :cond_0

    .line 196
    iget-object v1, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->open:[I

    add-int/lit8 v2, v0, -0x1

    aget v2, v1, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 198
    :cond_0
    iget v0, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->numOpen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->numOpen:I

    .line 199
    iget-object v0, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->open:[I

    aput p2, v0, p1

    return-void
.end method

.method private openRemove(I)I
    .locals 4

    .line 186
    iget-object v0, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->open:[I

    aget v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 188
    iget v3, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->numOpen:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    iget p1, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->numOpen:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->numOpen:I

    return v1
.end method

.method private putIntoOpen(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 208
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->numOpen:I

    if-ge v1, v2, :cond_1

    .line 209
    iget-object v2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->open:[I

    aget v2, v2, v1

    iget-object v3, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->levelRemoved:[I

    aget v3, v3, p1

    if-le v2, v3, :cond_0

    .line 211
    invoke-direct {p0, v1, v3}, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->openAdd(II)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 216
    iget-object v0, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->levelRemoved:[I

    aget p1, v0, p1

    invoke-direct {p0, p1}, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->openAdd(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public compute(Lorg/ejml/data/FMatrix1Row;)F
    .locals 7

    .line 110
    iget v0, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->width:I

    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numCols:I

    if-ne v0, v1, :cond_5

    iget v0, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->width:I

    iget v1, p1, Lorg/ejml/data/FMatrix1Row;->numRows:I

    if-ne v0, v1, :cond_5

    .line 115
    invoke-direct {p0}, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->initStructures()V

    const/4 v0, 0x0

    move v1, v0

    .line 121
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->width:I

    sub-int v3, v2, v1

    .line 122
    iget-object v4, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->levelIndexes:[I

    aget v5, v4, v1

    if-ne v5, v3, :cond_2

    if-nez v1, :cond_0

    .line 126
    iget-object p1, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->levelResults:[F

    aget p1, p1, v0

    return p1

    :cond_0
    add-int/lit8 v3, v1, -0x1

    .line 128
    aget v5, v4, v3

    add-int/lit8 v6, v5, 0x1

    aput v6, v4, v3

    mul-int/2addr v2, v3

    .line 130
    iget-object v4, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->levelRemoved:[I

    aget v4, v4, v3

    add-int/2addr v2, v4

    invoke-virtual {p1, v2}, Lorg/ejml/data/FMatrix1Row;->get(I)F

    move-result v2

    .line 131
    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_1

    .line 132
    iget-object v4, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->levelResults:[F

    aget v5, v4, v3

    aget v6, v4, v1

    mul-float/2addr v2, v6

    add-float/2addr v5, v2

    aput v5, v4, v3

    goto :goto_1

    .line 134
    :cond_1
    iget-object v4, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->levelResults:[F

    aget v5, v4, v3

    aget v6, v4, v1

    mul-float/2addr v2, v6

    sub-float/2addr v5, v2

    aput v5, v4, v3

    .line 137
    :goto_1
    invoke-direct {p0, v3}, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->putIntoOpen(I)V

    .line 139
    iget-object v2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->levelResults:[F

    const/4 v3, 0x0

    aput v3, v2, v1

    .line 140
    iget-object v2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->levelIndexes:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 143
    :cond_2
    invoke-direct {p0, v5}, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->openRemove(I)I

    move-result v2

    .line 145
    iget-object v4, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->levelRemoved:[I

    aput v2, v4, v1

    .line 147
    iget v2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->minWidth:I

    if-ne v3, v2, :cond_4

    .line 148
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->createMinor(Lorg/ejml/data/FMatrix1Row;)V

    .line 149
    iget v2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->width:I

    mul-int/2addr v2, v1

    iget-object v3, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->levelRemoved:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lorg/ejml/data/FMatrix1Row;->get(I)F

    move-result v2

    .line 151
    iget-object v3, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->tempMat:Lorg/ejml/data/FMatrixRMaj;

    invoke-static {v3}, Lorg/ejml/dense/row/misc/UnrolledDeterminantFromMinor_FDRM;->det(Lorg/ejml/data/FMatrix1Row;)F

    move-result v3

    mul-float/2addr v2, v3

    .line 153
    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_3

    .line 154
    iget-object v3, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->levelResults:[F

    aget v4, v3, v1

    add-float/2addr v4, v2

    aput v4, v3, v1

    goto :goto_2

    .line 156
    :cond_3
    iget-object v3, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->levelResults:[F

    aget v4, v3, v1

    sub-float/2addr v4, v2

    aput v4, v3, v1

    .line 160
    :goto_2
    invoke-direct {p0, v1}, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->putIntoOpen(I)V

    .line 161
    iget-object v2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_FDRM;->levelIndexes:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 111
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unexpected matrix dimension"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
