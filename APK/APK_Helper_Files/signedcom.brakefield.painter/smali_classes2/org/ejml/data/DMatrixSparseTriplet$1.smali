.class Lorg/ejml/data/DMatrixSparseTriplet$1;
.super Ljava/lang/Object;
.source "DMatrixSparseTriplet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ejml/data/DMatrixSparseTriplet;->createCoordinateIterator()Ljava/util/Iterator;
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
.field final coordinate:Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;

.field index:I

.field final synthetic this$0:Lorg/ejml/data/DMatrixSparseTriplet;


# direct methods
.method constructor <init>(Lorg/ejml/data/DMatrixSparseTriplet;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lorg/ejml/data/DMatrixSparseTriplet$1;->this$0:Lorg/ejml/data/DMatrixSparseTriplet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    new-instance p1, Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;

    invoke-direct {p1}, Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;-><init>()V

    iput-object p1, p0, Lorg/ejml/data/DMatrixSparseTriplet$1;->coordinate:Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;

    const/4 p1, 0x0

    .line 374
    iput p1, p0, Lorg/ejml/data/DMatrixSparseTriplet$1;->index:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 378
    iget v0, p0, Lorg/ejml/data/DMatrixSparseTriplet$1;->index:I

    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseTriplet$1;->this$0:Lorg/ejml/data/DMatrixSparseTriplet;

    iget v1, v1, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

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

    .line 372
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixSparseTriplet$1;->next()Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;
    .locals 3

    .line 383
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseTriplet$1;->coordinate:Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;

    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseTriplet$1;->this$0:Lorg/ejml/data/DMatrixSparseTriplet;

    iget-object v1, v1, Lorg/ejml/data/DMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v1, v1, Lorg/ejml/data/IGrowArray;->data:[I

    iget v2, p0, Lorg/ejml/data/DMatrixSparseTriplet$1;->index:I

    mul-int/lit8 v2, v2, 0x2

    aget v1, v1, v2

    iput v1, v0, Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;->row:I

    .line 384
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseTriplet$1;->coordinate:Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;

    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseTriplet$1;->this$0:Lorg/ejml/data/DMatrixSparseTriplet;

    iget-object v1, v1, Lorg/ejml/data/DMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v1, v1, Lorg/ejml/data/IGrowArray;->data:[I

    iget v2, p0, Lorg/ejml/data/DMatrixSparseTriplet$1;->index:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;->col:I

    .line 385
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseTriplet$1;->coordinate:Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;

    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseTriplet$1;->this$0:Lorg/ejml/data/DMatrixSparseTriplet;

    iget-object v1, v1, Lorg/ejml/data/DMatrixSparseTriplet;->nz_value:Lorg/ejml/data/DGrowArray;

    iget-object v1, v1, Lorg/ejml/data/DGrowArray;->data:[D

    iget v2, p0, Lorg/ejml/data/DMatrixSparseTriplet$1;->index:I

    aget-wide v1, v1, v2

    iput-wide v1, v0, Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;->value:D

    .line 386
    iget v0, p0, Lorg/ejml/data/DMatrixSparseTriplet$1;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/data/DMatrixSparseTriplet$1;->index:I

    .line 387
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseTriplet$1;->coordinate:Lorg/ejml/data/DMatrixSparse$CoordinateRealValue;

    return-object v0
.end method
