.class public Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;
.super Ljava/lang/Object;
.source "DeterminantFromMinor_DDRM.java"


# instance fields
.field private dirty:Z

.field private final levelIndexes:[I

.field private final levelRemoved:[I

.field private final levelResults:[D

.field private final minWidth:I

.field private numOpen:I

.field private final open:[I

.field private final tempMat:Lorg/ejml/data/DMatrixRMaj;

.field private final width:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x5

    .line 71
    invoke-direct {p0, p1, v0}, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->dirty:Z

    const/4 v0, 0x5

    if-gt p2, v0, :cond_1

    const/4 v0, 0x2

    if-lt p2, v0, :cond_1

    if-ge p1, p2, :cond_0

    move p2, p1

    .line 86
    :cond_0
    iput p2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->minWidth:I

    .line 87
    iput p1, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->width:I

    add-int/lit8 v0, p2, -0x2

    sub-int v0, p1, v0

    .line 91
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->levelResults:[D

    .line 92
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->levelRemoved:[I

    .line 93
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->levelIndexes:[I

    .line 95
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->open:[I

    .line 97
    new-instance p1, Lorg/ejml/data/DMatrixRMaj;

    add-int/lit8 p2, p2, -0x1

    invoke-direct {p1, p2, p2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object p1, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->tempMat:Lorg/ejml/data/DMatrixRMaj;

    return-void

    .line 80
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No direct function for that width"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createMinor(Lorg/ejml/data/DMatrix1Row;)V
    .locals 10

    .line 220
    iget v0, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->minWidth:I

    add-int/lit8 v0, v0, -0x1

    .line 221
    iget v1, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->width:I

    sub-int v2, v1, v0

    mul-int/2addr v2, v1

    const/4 v1, 0x0

    move v3, v1

    .line 223
    :goto_0
    iget v4, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->numOpen:I

    if-ge v3, v4, :cond_1

    .line 224
    iget-object v4, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->open:[I

    aget v4, v4, v3

    add-int/2addr v4, v2

    move v5, v1

    move v6, v3

    :goto_1
    if-ge v5, v0, :cond_0

    .line 229
    iget-object v7, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->tempMat:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p1, v4}, Lorg/ejml/data/DMatrix1Row;->get(I)D

    move-result-wide v8

    invoke-virtual {v7, v6, v8, v9}, Lorg/ejml/data/DMatrixRMaj;->set(ID)D

    add-int/2addr v6, v0

    .line 231
    iget v7, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->width:I

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
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 168
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->width:I

    if-ge v1, v2, :cond_0

    .line 169
    iget-object v2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->open:[I

    aput v1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    :cond_0
    iput v2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->numOpen:I

    .line 173
    iget-boolean v1, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->dirty:Z

    if-eqz v1, :cond_1

    move v1, v0

    .line 174
    :goto_1
    iget-object v2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->levelIndexes:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 175
    aput v0, v2, v1

    .line 176
    iget-object v2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->levelResults:[D

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    .line 177
    iget-object v2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->levelRemoved:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->dirty:Z

    return-void
.end method

.method private openAdd(I)V
    .locals 3

    .line 201
    iget-object v0, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->open:[I

    iget v1, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->numOpen:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->numOpen:I

    aput p1, v0, v1

    return-void
.end method

.method private openAdd(II)V
    .locals 3

    .line 193
    iget v0, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->numOpen:I

    :goto_0
    if-le v0, p1, :cond_0

    .line 194
    iget-object v1, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->open:[I

    add-int/lit8 v2, v0, -0x1

    aget v2, v1, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 196
    :cond_0
    iget v0, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->numOpen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->numOpen:I

    .line 197
    iget-object v0, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->open:[I

    aput p2, v0, p1

    return-void
.end method

.method private openRemove(I)I
    .locals 4

    .line 184
    iget-object v0, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->open:[I

    aget v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 186
    iget v3, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->numOpen:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    iget p1, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->numOpen:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->numOpen:I

    return v1
.end method

.method private putIntoOpen(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 206
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->numOpen:I

    if-ge v1, v2, :cond_1

    .line 207
    iget-object v2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->open:[I

    aget v2, v2, v1

    iget-object v3, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->levelRemoved:[I

    aget v3, v3, p1

    if-le v2, v3, :cond_0

    .line 209
    invoke-direct {p0, v1, v3}, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->openAdd(II)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 214
    iget-object v0, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->levelRemoved:[I

    aget p1, v0, p1

    invoke-direct {p0, p1}, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->openAdd(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public compute(Lorg/ejml/data/DMatrix1Row;)D
    .locals 10

    .line 108
    iget v0, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->width:I

    iget v1, p1, Lorg/ejml/data/DMatrix1Row;->numCols:I

    if-ne v0, v1, :cond_5

    iget v0, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->width:I

    iget v1, p1, Lorg/ejml/data/DMatrix1Row;->numRows:I

    if-ne v0, v1, :cond_5

    .line 113
    invoke-direct {p0}, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->initStructures()V

    const/4 v0, 0x0

    move v1, v0

    .line 119
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->width:I

    sub-int v3, v2, v1

    .line 120
    iget-object v4, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->levelIndexes:[I

    aget v5, v4, v1

    if-ne v5, v3, :cond_2

    if-nez v1, :cond_0

    .line 124
    iget-object p1, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->levelResults:[D

    aget-wide v0, p1, v0

    return-wide v0

    :cond_0
    add-int/lit8 v3, v1, -0x1

    .line 126
    aget v5, v4, v3

    add-int/lit8 v6, v5, 0x1

    aput v6, v4, v3

    mul-int/2addr v2, v3

    .line 128
    iget-object v4, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->levelRemoved:[I

    aget v4, v4, v3

    add-int/2addr v2, v4

    invoke-virtual {p1, v2}, Lorg/ejml/data/DMatrix1Row;->get(I)D

    move-result-wide v6

    .line 129
    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_1

    .line 130
    iget-object v2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->levelResults:[D

    aget-wide v4, v2, v3

    aget-wide v8, v2, v1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    goto :goto_1

    .line 132
    :cond_1
    iget-object v2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->levelResults:[D

    aget-wide v4, v2, v3

    aget-wide v8, v2, v1

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 135
    :goto_1
    invoke-direct {p0, v3}, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->putIntoOpen(I)V

    .line 137
    iget-object v2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->levelResults:[D

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    .line 138
    iget-object v2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->levelIndexes:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 141
    :cond_2
    invoke-direct {p0, v5}, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->openRemove(I)I

    move-result v2

    .line 143
    iget-object v4, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->levelRemoved:[I

    aput v2, v4, v1

    .line 145
    iget v2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->minWidth:I

    if-ne v3, v2, :cond_4

    .line 146
    invoke-direct {p0, p1}, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->createMinor(Lorg/ejml/data/DMatrix1Row;)V

    .line 147
    iget v2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->width:I

    mul-int/2addr v2, v1

    iget-object v3, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->levelRemoved:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lorg/ejml/data/DMatrix1Row;->get(I)D

    move-result-wide v2

    .line 149
    iget-object v4, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->tempMat:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v4}, Lorg/ejml/dense/row/misc/UnrolledDeterminantFromMinor_DDRM;->det(Lorg/ejml/data/DMatrix1Row;)D

    move-result-wide v6

    mul-double/2addr v2, v6

    .line 151
    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_3

    .line 152
    iget-object v4, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->levelResults:[D

    aget-wide v5, v4, v1

    add-double/2addr v5, v2

    aput-wide v5, v4, v1

    goto :goto_2

    .line 154
    :cond_3
    iget-object v4, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->levelResults:[D

    aget-wide v5, v4, v1

    sub-double/2addr v5, v2

    aput-wide v5, v4, v1

    .line 158
    :goto_2
    invoke-direct {p0, v1}, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->putIntoOpen(I)V

    .line 159
    iget-object v2, p0, Lorg/ejml/dense/row/misc/DeterminantFromMinor_DDRM;->levelIndexes:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 109
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unexpected matrix dimension"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
