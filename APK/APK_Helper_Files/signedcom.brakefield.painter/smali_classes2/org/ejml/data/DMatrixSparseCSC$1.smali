.class Lorg/ejml/data/DMatrixSparseCSC$1;
.super Ljava/lang/Object;
.source "DMatrixSparseCSC.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ejml/data/DMatrixSparseCSC;->createCoordinateIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;",
        ">;"
    }
.end annotation


# instance fields
.field column:I

.field final coordinate:Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;

.field nz_index:I

.field final synthetic this$0:Lorg/ejml/data/DMatrixSparseCSC;


# direct methods
.method constructor <init>(Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lorg/ejml/data/DMatrixSparseCSC$1;->this$0:Lorg/ejml/data/DMatrixSparseCSC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    new-instance p1, Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;

    invoke-direct {p1}, Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;-><init>()V

    iput-object p1, p0, Lorg/ejml/data/DMatrixSparseCSC$1;->coordinate:Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;

    const/4 p1, 0x0

    .line 471
    iput p1, p0, Lorg/ejml/data/DMatrixSparseCSC$1;->nz_index:I

    .line 472
    iput p1, p0, Lorg/ejml/data/DMatrixSparseCSC$1;->column:I

    .line 475
    invoke-direct {p0}, Lorg/ejml/data/DMatrixSparseCSC$1;->incrementColumn()V

    return-void
.end method

.method private incrementColumn()V
    .locals 4

    .line 494
    :goto_0
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC$1;->column:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC$1;->this$0:Lorg/ejml/data/DMatrixSparseCSC;

    iget v1, v1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC$1;->nz_index:I

    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC$1;->this$0:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v1, v1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC$1;->column:I

    add-int/lit8 v3, v2, 0x1

    aget v1, v1, v3

    if-lt v0, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 495
    iput v2, p0, Lorg/ejml/data/DMatrixSparseCSC$1;->column:I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 480
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC$1;->nz_index:I

    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC$1;->this$0:Lorg/ejml/data/DMatrixSparseCSC;

    iget v1, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 469
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixSparseCSC$1;->next()Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;
    .locals 3

    .line 485
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC$1;->coordinate:Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;

    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC$1;->this$0:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v1, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC$1;->nz_index:I

    aget v1, v1, v2

    iput v1, v0, Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;->row:I

    .line 486
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC$1;->coordinate:Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC$1;->column:I

    iput v1, v0, Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;->col:I

    .line 487
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC$1;->coordinate:Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;

    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseCSC$1;->this$0:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v1, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC$1;->nz_index:I

    aget-wide v1, v1, v2

    iput-wide v1, v0, Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;->value:D

    .line 488
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC$1;->nz_index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/data/DMatrixSparseCSC$1;->nz_index:I

    .line 489
    invoke-direct {p0}, Lorg/ejml/data/DMatrixSparseCSC$1;->incrementColumn()V

    .line 490
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC$1;->coordinate:Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;

    return-object v0
.end method
