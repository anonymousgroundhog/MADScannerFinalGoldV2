.class Lorg/ejml/equation/Operation$42;
.super Lorg/ejml/equation/Operation;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ejml/equation/Operation;->copy(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Ljava/util/List;)Lorg/ejml/equation/Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final colExtent:Lorg/ejml/equation/Operation$ArrayExtent;

.field final extents:Lorg/ejml/equation/Operation$Extents;

.field final rowExtent:Lorg/ejml/equation/Operation$ArrayExtent;

.field final synthetic val$dst:Lorg/ejml/equation/Variable;

.field final synthetic val$range:Ljava/util/List;

.field final synthetic val$src:Lorg/ejml/equation/Variable;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Ljava/util/List;)V
    .locals 0

    .line 762
    iput-object p2, p0, Lorg/ejml/equation/Operation$42;->val$src:Lorg/ejml/equation/Variable;

    iput-object p3, p0, Lorg/ejml/equation/Operation$42;->val$dst:Lorg/ejml/equation/Variable;

    iput-object p4, p0, Lorg/ejml/equation/Operation$42;->val$range:Ljava/util/List;

    invoke-direct {p0, p1}, Lorg/ejml/equation/Operation;-><init>(Ljava/lang/String;)V

    .line 763
    new-instance p1, Lorg/ejml/equation/Operation$Extents;

    invoke-direct {p1}, Lorg/ejml/equation/Operation$Extents;-><init>()V

    iput-object p1, p0, Lorg/ejml/equation/Operation$42;->extents:Lorg/ejml/equation/Operation$Extents;

    .line 764
    new-instance p1, Lorg/ejml/equation/Operation$ArrayExtent;

    invoke-direct {p1}, Lorg/ejml/equation/Operation$ArrayExtent;-><init>()V

    iput-object p1, p0, Lorg/ejml/equation/Operation$42;->rowExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    .line 765
    new-instance p1, Lorg/ejml/equation/Operation$ArrayExtent;

    invoke-direct {p1}, Lorg/ejml/equation/Operation$ArrayExtent;-><init>()V

    iput-object p1, p0, Lorg/ejml/equation/Operation$42;->colExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    return-void
.end method


# virtual methods
.method public process()V
    .locals 9

    .line 770
    iget-object v0, p0, Lorg/ejml/equation/Operation$42;->val$src:Lorg/ejml/equation/Variable;

    check-cast v0, Lorg/ejml/equation/VariableMatrix;

    iget-object v1, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    .line 771
    iget-object v0, p0, Lorg/ejml/equation/Operation$42;->val$dst:Lorg/ejml/equation/Variable;

    check-cast v0, Lorg/ejml/equation/VariableMatrix;

    iget-object v0, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    .line 773
    iget-object v2, p0, Lorg/ejml/equation/Operation$42;->val$range:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    .line 774
    invoke-static {v1}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 777
    iget-object v2, p0, Lorg/ejml/equation/Operation$42;->val$range:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ejml/equation/Variable;

    iget-object v5, p0, Lorg/ejml/equation/Operation$42;->extents:Lorg/ejml/equation/Operation$Extents;

    invoke-virtual {v0}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v6

    invoke-static {v2, v5, v3, v6}, Lorg/ejml/equation/Operation;->access$100(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Operation$Extents;ZI)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 778
    iget-object v2, p0, Lorg/ejml/equation/Operation$42;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v2, v2, Lorg/ejml/equation/Operation$Extents;->col1:I

    iget-object v5, p0, Lorg/ejml/equation/Operation$42;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v5, v5, Lorg/ejml/equation/Operation$Extents;->col0:I

    sub-int/2addr v2, v5

    add-int/2addr v2, v4

    .line 779
    invoke-virtual {v1}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v5

    if-ne v5, v2, :cond_1

    .line 781
    iget-object v5, p0, Lorg/ejml/equation/Operation$42;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v5, v5, Lorg/ejml/equation/Operation$Extents;->col1:I

    add-int/2addr v5, v4

    invoke-virtual {v0}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v4

    if-gt v5, v4, :cond_0

    .line 783
    iget-object v1, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v0, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v4, p0, Lorg/ejml/equation/Operation$42;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v4, v4, Lorg/ejml/equation/Operation$Extents;->col0:I

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1

    .line 782
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested range is outside of dst length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 780
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source vector not the right length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 785
    :cond_2
    iget-object v2, p0, Lorg/ejml/equation/Operation$42;->val$range:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ejml/equation/Variable;

    invoke-virtual {v0}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v4

    iget-object v5, p0, Lorg/ejml/equation/Operation$42;->colExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    invoke-static {v2, v4, v5}, Lorg/ejml/equation/Operation;->access$200(Lorg/ejml/equation/Variable;ILorg/ejml/equation/Operation$ArrayExtent;)V

    .line 786
    iget-object v2, p0, Lorg/ejml/equation/Operation$42;->colExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    iget v2, v2, Lorg/ejml/equation/Operation$ArrayExtent;->length:I

    invoke-virtual {v1}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v4

    if-gt v2, v4, :cond_3

    .line 788
    :goto_0
    iget-object v2, p0, Lorg/ejml/equation/Operation$42;->colExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    iget v2, v2, Lorg/ejml/equation/Operation$ArrayExtent;->length:I

    if-ge v3, v2, :cond_7

    .line 789
    iget-object v2, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v4, p0, Lorg/ejml/equation/Operation$42;->colExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    iget-object v4, v4, Lorg/ejml/equation/Operation$ArrayExtent;->array:[I

    aget v4, v4, v3

    iget-object v5, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v5, v5, v3

    aput-wide v5, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 787
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "src doesn\'t have enough elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 775
    :cond_4
    new-instance v0, Lorg/ejml/equation/ParseError;

    const-string v1, "Source must be a vector for copy into elements"

    invoke-direct {v0, v1}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 792
    :cond_5
    iget-object v2, p0, Lorg/ejml/equation/Operation$42;->val$range:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_8

    .line 793
    iget-object v2, p0, Lorg/ejml/equation/Operation$42;->val$range:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ejml/equation/Variable;

    iget-object v5, p0, Lorg/ejml/equation/Operation$42;->extents:Lorg/ejml/equation/Operation$Extents;

    invoke-virtual {v0}, Lorg/ejml/data/DMatrixRMaj;->getNumRows()I

    move-result v6

    invoke-static {v2, v5, v4, v6}, Lorg/ejml/equation/Operation;->access$100(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Operation$Extents;ZI)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/ejml/equation/Operation$42;->val$range:Ljava/util/List;

    .line 794
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ejml/equation/Variable;

    iget-object v5, p0, Lorg/ejml/equation/Operation$42;->extents:Lorg/ejml/equation/Operation$Extents;

    invoke-virtual {v0}, Lorg/ejml/data/DMatrixRMaj;->getNumCols()I

    move-result v6

    invoke-static {v2, v5, v3, v6}, Lorg/ejml/equation/Operation;->access$100(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Operation$Extents;ZI)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 796
    iget-object v2, p0, Lorg/ejml/equation/Operation$42;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v2, v2, Lorg/ejml/equation/Operation$Extents;->row1:I

    iget-object v3, p0, Lorg/ejml/equation/Operation$42;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v3, v3, Lorg/ejml/equation/Operation$Extents;->row0:I

    sub-int/2addr v2, v3

    add-int/lit8 v3, v2, 0x1

    .line 797
    iget-object v2, p0, Lorg/ejml/equation/Operation$42;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v2, v2, Lorg/ejml/equation/Operation$Extents;->col1:I

    iget-object v5, p0, Lorg/ejml/equation/Operation$42;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v5, v5, Lorg/ejml/equation/Operation$Extents;->col0:I

    sub-int/2addr v2, v5

    add-int/lit8 v5, v2, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 799
    iget-object v6, p0, Lorg/ejml/equation/Operation$42;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v7, v6, Lorg/ejml/equation/Operation$Extents;->row0:I

    iget-object v6, p0, Lorg/ejml/equation/Operation$42;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v8, v6, Lorg/ejml/equation/Operation$Extents;->col0:I

    move-object v6, v0

    invoke-static/range {v1 .. v8}, Lorg/ejml/dense/row/CommonOps_DDRM;->extract(Lorg/ejml/data/DMatrix;IIIILorg/ejml/data/DMatrix;II)V

    goto :goto_1

    .line 801
    :cond_6
    iget-object v2, p0, Lorg/ejml/equation/Operation$42;->val$range:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ejml/equation/Variable;

    iget v3, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget-object v5, p0, Lorg/ejml/equation/Operation$42;->rowExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    invoke-static {v2, v3, v5}, Lorg/ejml/equation/Operation;->access$200(Lorg/ejml/equation/Variable;ILorg/ejml/equation/Operation$ArrayExtent;)V

    .line 802
    iget-object v2, p0, Lorg/ejml/equation/Operation$42;->val$range:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ejml/equation/Variable;

    iget v3, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget-object v4, p0, Lorg/ejml/equation/Operation$42;->colExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    invoke-static {v2, v3, v4}, Lorg/ejml/equation/Operation;->access$200(Lorg/ejml/equation/Variable;ILorg/ejml/equation/Operation$ArrayExtent;)V

    .line 804
    iget-object v2, p0, Lorg/ejml/equation/Operation$42;->rowExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    iget-object v3, v2, Lorg/ejml/equation/Operation$ArrayExtent;->array:[I

    iget-object v2, p0, Lorg/ejml/equation/Operation$42;->rowExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    iget v4, v2, Lorg/ejml/equation/Operation$ArrayExtent;->length:I

    iget-object v2, p0, Lorg/ejml/equation/Operation$42;->colExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    iget-object v5, v2, Lorg/ejml/equation/Operation$ArrayExtent;->array:[I

    iget-object v2, p0, Lorg/ejml/equation/Operation$42;->colExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    iget v6, v2, Lorg/ejml/equation/Operation$ArrayExtent;->length:I

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lorg/ejml/dense/row/CommonOps_DDRM;->insert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;[II[II)V

    :cond_7
    :goto_1
    return-void

    .line 808
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected number of ranges.  Should have been caught earlier"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
