.class Lorg/ejml/data/FMatrixSparseCSC$1;
.super Ljava/lang/Object;
.source "FMatrixSparseCSC.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ejml/data/FMatrixSparseCSC;->createCoordinateIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/ejml/data/FMatrixSparse$CoordinateRealValue;",
        ">;"
    }
.end annotation


# instance fields
.field column:I

.field final coordinate:Lorg/ejml/data/FMatrixSparse$CoordinateRealValue;

.field nz_index:I

.field final synthetic this$0:Lorg/ejml/data/FMatrixSparseCSC;


# direct methods
.method constructor <init>(Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lorg/ejml/data/FMatrixSparseCSC$1;->this$0:Lorg/ejml/data/FMatrixSparseCSC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    new-instance p1, Lorg/ejml/data/FMatrixSparse$CoordinateRealValue;

    invoke-direct {p1}, Lorg/ejml/data/FMatrixSparse$CoordinateRealValue;-><init>()V

    iput-object p1, p0, Lorg/ejml/data/FMatrixSparseCSC$1;->coordinate:Lorg/ejml/data/FMatrixSparse$CoordinateRealValue;

    const/4 p1, 0x0

    .line 473
    iput p1, p0, Lorg/ejml/data/FMatrixSparseCSC$1;->nz_index:I

    .line 474
    iput p1, p0, Lorg/ejml/data/FMatrixSparseCSC$1;->column:I

    .line 477
    invoke-direct {p0}, Lorg/ejml/data/FMatrixSparseCSC$1;->incrementColumn()V

    return-void
.end method

.method private incrementColumn()V
    .locals 4

    .line 496
    :goto_0
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC$1;->column:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC$1;->this$0:Lorg/ejml/data/FMatrixSparseCSC;

    iget v1, v1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC$1;->nz_index:I

    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC$1;->this$0:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v1, v1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC$1;->column:I

    add-int/lit8 v3, v2, 0x1

    aget v1, v1, v3

    if-lt v0, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 497
    iput v2, p0, Lorg/ejml/data/FMatrixSparseCSC$1;->column:I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 482
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC$1;->nz_index:I

    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC$1;->this$0:Lorg/ejml/data/FMatrixSparseCSC;

    iget v1, v1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

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

    .line 471
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixSparseCSC$1;->next()Lorg/ejml/data/FMatrixSparse$CoordinateRealValue;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/ejml/data/FMatrixSparse$CoordinateRealValue;
    .locals 3

    .line 487
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC$1;->coordinate:Lorg/ejml/data/FMatrixSparse$CoordinateRealValue;

    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC$1;->this$0:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v1, v1, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC$1;->nz_index:I

    aget v1, v1, v2

    iput v1, v0, Lorg/ejml/data/FMatrixSparse$CoordinateRealValue;->row:I

    .line 488
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC$1;->coordinate:Lorg/ejml/data/FMatrixSparse$CoordinateRealValue;

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC$1;->column:I

    iput v1, v0, Lorg/ejml/data/FMatrixSparse$CoordinateRealValue;->col:I

    .line 489
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC$1;->coordinate:Lorg/ejml/data/FMatrixSparse$CoordinateRealValue;

    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseCSC$1;->this$0:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v1, v1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC$1;->nz_index:I

    aget v1, v1, v2

    iput v1, v0, Lorg/ejml/data/FMatrixSparse$CoordinateRealValue;->value:F

    .line 490
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC$1;->nz_index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/data/FMatrixSparseCSC$1;->nz_index:I

    .line 491
    invoke-direct {p0}, Lorg/ejml/data/FMatrixSparseCSC$1;->incrementColumn()V

    .line 492
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC$1;->coordinate:Lorg/ejml/data/FMatrixSparse$CoordinateRealValue;

    return-object v0
.end method
