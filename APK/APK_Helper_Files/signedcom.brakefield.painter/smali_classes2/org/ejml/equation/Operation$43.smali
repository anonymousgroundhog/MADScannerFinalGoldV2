.class Lorg/ejml/equation/Operation$43;
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

    .line 813
    iput-object p2, p0, Lorg/ejml/equation/Operation$43;->val$src:Lorg/ejml/equation/Variable;

    iput-object p3, p0, Lorg/ejml/equation/Operation$43;->val$dst:Lorg/ejml/equation/Variable;

    iput-object p4, p0, Lorg/ejml/equation/Operation$43;->val$range:Ljava/util/List;

    invoke-direct {p0, p1}, Lorg/ejml/equation/Operation;-><init>(Ljava/lang/String;)V

    .line 814
    new-instance p1, Lorg/ejml/equation/Operation$Extents;

    invoke-direct {p1}, Lorg/ejml/equation/Operation$Extents;-><init>()V

    iput-object p1, p0, Lorg/ejml/equation/Operation$43;->extents:Lorg/ejml/equation/Operation$Extents;

    .line 815
    new-instance p1, Lorg/ejml/equation/Operation$ArrayExtent;

    invoke-direct {p1}, Lorg/ejml/equation/Operation$ArrayExtent;-><init>()V

    iput-object p1, p0, Lorg/ejml/equation/Operation$43;->rowExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    .line 816
    new-instance p1, Lorg/ejml/equation/Operation$ArrayExtent;

    invoke-direct {p1}, Lorg/ejml/equation/Operation$ArrayExtent;-><init>()V

    iput-object p1, p0, Lorg/ejml/equation/Operation$43;->colExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    return-void
.end method


# virtual methods
.method public process()V
    .locals 8

    .line 821
    iget-object v0, p0, Lorg/ejml/equation/Operation$43;->val$src:Lorg/ejml/equation/Variable;

    check-cast v0, Lorg/ejml/equation/VariableScalar;

    invoke-virtual {v0}, Lorg/ejml/equation/VariableScalar;->getDouble()D

    move-result-wide v0

    .line 822
    iget-object v2, p0, Lorg/ejml/equation/Operation$43;->val$dst:Lorg/ejml/equation/Variable;

    check-cast v2, Lorg/ejml/equation/VariableMatrix;

    iget-object v2, v2, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    .line 824
    iget-object v3, p0, Lorg/ejml/equation/Operation$43;->val$range:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    .line 825
    iget-object v3, p0, Lorg/ejml/equation/Operation$43;->val$range:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ejml/equation/Variable;

    iget-object v6, p0, Lorg/ejml/equation/Operation$43;->extents:Lorg/ejml/equation/Operation$Extents;

    invoke-virtual {v2}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v7

    invoke-static {v3, v6, v4, v7}, Lorg/ejml/equation/Operation;->access$100(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Operation$Extents;ZI)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 826
    iget-object v2, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v3, p0, Lorg/ejml/equation/Operation$43;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v3, v3, Lorg/ejml/equation/Operation$Extents;->col0:I

    iget-object v4, p0, Lorg/ejml/equation/Operation$43;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v4, v4, Lorg/ejml/equation/Operation$Extents;->col1:I

    add-int/2addr v4, v5

    invoke-static {v2, v3, v4, v0, v1}, Ljava/util/Arrays;->fill([DIID)V

    goto/16 :goto_5

    .line 828
    :cond_0
    iget-object v3, p0, Lorg/ejml/equation/Operation$43;->val$range:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ejml/equation/Variable;

    invoke-virtual {v2}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v5

    iget-object v6, p0, Lorg/ejml/equation/Operation$43;->colExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    invoke-static {v3, v5, v6}, Lorg/ejml/equation/Operation;->access$200(Lorg/ejml/equation/Variable;ILorg/ejml/equation/Operation$ArrayExtent;)V

    .line 829
    :goto_0
    iget-object v3, p0, Lorg/ejml/equation/Operation$43;->colExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    iget v3, v3, Lorg/ejml/equation/Operation$ArrayExtent;->length:I

    if-ge v4, v3, :cond_5

    .line 830
    iget-object v3, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v5, p0, Lorg/ejml/equation/Operation$43;->colExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    iget-object v5, v5, Lorg/ejml/equation/Operation$ArrayExtent;->array:[I

    aget v5, v5, v4

    aput-wide v0, v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 833
    :cond_1
    iget-object v3, p0, Lorg/ejml/equation/Operation$43;->val$range:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_6

    .line 834
    iget-object v3, p0, Lorg/ejml/equation/Operation$43;->val$range:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ejml/equation/Variable;

    iget-object v6, p0, Lorg/ejml/equation/Operation$43;->extents:Lorg/ejml/equation/Operation$Extents;

    invoke-virtual {v2}, Lorg/ejml/data/DMatrixRMaj;->getNumRows()I

    move-result v7

    invoke-static {v3, v6, v5, v7}, Lorg/ejml/equation/Operation;->access$100(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Operation$Extents;ZI)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/ejml/equation/Operation$43;->val$range:Ljava/util/List;

    .line 835
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ejml/equation/Variable;

    iget-object v6, p0, Lorg/ejml/equation/Operation$43;->extents:Lorg/ejml/equation/Operation$Extents;

    invoke-virtual {v2}, Lorg/ejml/data/DMatrixRMaj;->getNumCols()I

    move-result v7

    invoke-static {v3, v6, v4, v7}, Lorg/ejml/equation/Operation;->access$100(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Operation$Extents;ZI)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 837
    iget-object v3, p0, Lorg/ejml/equation/Operation$43;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v4, v3, Lorg/ejml/equation/Operation$Extents;->row1:I

    add-int/2addr v4, v5

    iput v4, v3, Lorg/ejml/equation/Operation$Extents;->row1:I

    .line 838
    iget-object v3, p0, Lorg/ejml/equation/Operation$43;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v4, v3, Lorg/ejml/equation/Operation$Extents;->col1:I

    add-int/2addr v4, v5

    iput v4, v3, Lorg/ejml/equation/Operation$Extents;->col1:I

    .line 840
    iget-object v3, p0, Lorg/ejml/equation/Operation$43;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v3, v3, Lorg/ejml/equation/Operation$Extents;->row0:I

    :goto_1
    iget-object v4, p0, Lorg/ejml/equation/Operation$43;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v4, v4, Lorg/ejml/equation/Operation$Extents;->row1:I

    if-ge v3, v4, :cond_5

    .line 841
    iget v4, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v4, v3

    iget-object v5, p0, Lorg/ejml/equation/Operation$43;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v5, v5, Lorg/ejml/equation/Operation$Extents;->col0:I

    add-int/2addr v4, v5

    .line 842
    iget-object v5, p0, Lorg/ejml/equation/Operation$43;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v5, v5, Lorg/ejml/equation/Operation$Extents;->col0:I

    :goto_2
    iget-object v6, p0, Lorg/ejml/equation/Operation$43;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v6, v6, Lorg/ejml/equation/Operation$Extents;->col1:I

    if-ge v5, v6, :cond_2

    .line 843
    iget-object v6, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v7, v4, 0x1

    aput-wide v0, v6, v4

    add-int/lit8 v5, v5, 0x1

    move v4, v7

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 847
    :cond_3
    iget-object v3, p0, Lorg/ejml/equation/Operation$43;->val$range:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ejml/equation/Variable;

    iget v6, v2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget-object v7, p0, Lorg/ejml/equation/Operation$43;->rowExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    invoke-static {v3, v6, v7}, Lorg/ejml/equation/Operation;->access$200(Lorg/ejml/equation/Variable;ILorg/ejml/equation/Operation$ArrayExtent;)V

    .line 848
    iget-object v3, p0, Lorg/ejml/equation/Operation$43;->val$range:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ejml/equation/Variable;

    iget v5, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget-object v6, p0, Lorg/ejml/equation/Operation$43;->colExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    invoke-static {v3, v5, v6}, Lorg/ejml/equation/Operation;->access$200(Lorg/ejml/equation/Variable;ILorg/ejml/equation/Operation$ArrayExtent;)V

    move v3, v4

    .line 850
    :goto_3
    iget-object v5, p0, Lorg/ejml/equation/Operation$43;->rowExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    iget v5, v5, Lorg/ejml/equation/Operation$ArrayExtent;->length:I

    if-ge v3, v5, :cond_5

    move v5, v4

    .line 851
    :goto_4
    iget-object v6, p0, Lorg/ejml/equation/Operation$43;->colExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    iget v6, v6, Lorg/ejml/equation/Operation$ArrayExtent;->length:I

    if-ge v5, v6, :cond_4

    .line 852
    iget-object v6, p0, Lorg/ejml/equation/Operation$43;->rowExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    iget-object v6, v6, Lorg/ejml/equation/Operation$ArrayExtent;->array:[I

    aget v6, v6, v3

    iget-object v7, p0, Lorg/ejml/equation/Operation$43;->colExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    iget-object v7, v7, Lorg/ejml/equation/Operation$ArrayExtent;->array:[I

    aget v7, v7, v5

    invoke-virtual {v2, v6, v7, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->unsafe_set(IID)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    :goto_5
    return-void

    .line 857
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected number of ranges.  Should have been caught earlier"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
