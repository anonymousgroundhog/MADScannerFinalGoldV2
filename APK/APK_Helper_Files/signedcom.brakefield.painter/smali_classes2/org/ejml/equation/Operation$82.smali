.class Lorg/ejml/equation/Operation$82;
.super Lorg/ejml/equation/Operation;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ejml/equation/Operation;->extract(Ljava/util/List;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final colExtent:Lorg/ejml/equation/Operation$ArrayExtent;

.field final extents:Lorg/ejml/equation/Operation$Extents;

.field final rowExtent:Lorg/ejml/equation/Operation$ArrayExtent;

.field final synthetic val$inputs:Ljava/util/List;

.field final synthetic val$output:Lorg/ejml/equation/VariableMatrix;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;Lorg/ejml/equation/VariableMatrix;)V
    .locals 0

    .line 1549
    iput-object p2, p0, Lorg/ejml/equation/Operation$82;->val$inputs:Ljava/util/List;

    iput-object p3, p0, Lorg/ejml/equation/Operation$82;->val$output:Lorg/ejml/equation/VariableMatrix;

    invoke-direct {p0, p1}, Lorg/ejml/equation/Operation;-><init>(Ljava/lang/String;)V

    .line 1551
    new-instance p1, Lorg/ejml/equation/Operation$Extents;

    invoke-direct {p1}, Lorg/ejml/equation/Operation$Extents;-><init>()V

    iput-object p1, p0, Lorg/ejml/equation/Operation$82;->extents:Lorg/ejml/equation/Operation$Extents;

    .line 1553
    new-instance p1, Lorg/ejml/equation/Operation$ArrayExtent;

    invoke-direct {p1}, Lorg/ejml/equation/Operation$ArrayExtent;-><init>()V

    iput-object p1, p0, Lorg/ejml/equation/Operation$82;->rowExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    .line 1554
    new-instance p1, Lorg/ejml/equation/Operation$ArrayExtent;

    invoke-direct {p1}, Lorg/ejml/equation/Operation$ArrayExtent;-><init>()V

    iput-object p1, p0, Lorg/ejml/equation/Operation$82;->colExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    return-void
.end method


# virtual methods
.method public process()V
    .locals 10

    .line 1559
    iget-object v0, p0, Lorg/ejml/equation/Operation$82;->val$inputs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ejml/equation/VariableMatrix;

    iget-object v2, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    .line 1561
    iget-object v0, p0, Lorg/ejml/equation/Operation$82;->val$inputs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 1562
    iget-object v0, p0, Lorg/ejml/equation/Operation$82;->val$inputs:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ejml/equation/Variable;

    iget-object v4, p0, Lorg/ejml/equation/Operation$82;->extents:Lorg/ejml/equation/Operation$Extents;

    invoke-virtual {v2}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v5

    invoke-static {v0, v4, v1, v5}, Lorg/ejml/equation/Operation;->access$100(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Operation$Extents;ZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1563
    iget-object v0, p0, Lorg/ejml/equation/Operation$82;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v4, v0, Lorg/ejml/equation/Operation$Extents;->col1:I

    add-int/2addr v4, v3

    iput v4, v0, Lorg/ejml/equation/Operation$Extents;->col1:I

    .line 1564
    iget-object v0, p0, Lorg/ejml/equation/Operation$82;->val$output:Lorg/ejml/equation/VariableMatrix;

    iget-object v0, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    iget-object v4, p0, Lorg/ejml/equation/Operation$82;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v4, v4, Lorg/ejml/equation/Operation$Extents;->col1:I

    iget-object v5, p0, Lorg/ejml/equation/Operation$82;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v5, v5, Lorg/ejml/equation/Operation$Extents;->col0:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 1565
    iget-object v0, v2, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v2, p0, Lorg/ejml/equation/Operation$82;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v2, v2, Lorg/ejml/equation/Operation$Extents;->col0:I

    iget-object v3, p0, Lorg/ejml/equation/Operation$82;->val$output:Lorg/ejml/equation/VariableMatrix;

    iget-object v3, v3, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    iget-object v3, v3, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v4, p0, Lorg/ejml/equation/Operation$82;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v4, v4, Lorg/ejml/equation/Operation$Extents;->col1:I

    iget-object v5, p0, Lorg/ejml/equation/Operation$82;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v5, v5, Lorg/ejml/equation/Operation$Extents;->col0:I

    sub-int/2addr v4, v5

    invoke-static {v0, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 1567
    :cond_0
    iget-object v0, p0, Lorg/ejml/equation/Operation$82;->val$inputs:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ejml/equation/Variable;

    invoke-virtual {v2}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v1

    iget-object v4, p0, Lorg/ejml/equation/Operation$82;->colExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    invoke-static {v0, v1, v4}, Lorg/ejml/equation/Operation;->access$200(Lorg/ejml/equation/Variable;ILorg/ejml/equation/Operation$ArrayExtent;)V

    .line 1568
    iget-object v0, p0, Lorg/ejml/equation/Operation$82;->val$output:Lorg/ejml/equation/VariableMatrix;

    iget-object v0, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, p0, Lorg/ejml/equation/Operation$82;->colExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    iget v1, v1, Lorg/ejml/equation/Operation$ArrayExtent;->length:I

    invoke-virtual {v0, v3, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 1569
    iget-object v0, p0, Lorg/ejml/equation/Operation$82;->colExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    iget-object v0, v0, Lorg/ejml/equation/Operation$ArrayExtent;->array:[I

    iget-object v1, p0, Lorg/ejml/equation/Operation$82;->colExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    iget v1, v1, Lorg/ejml/equation/Operation$ArrayExtent;->length:I

    iget-object v3, p0, Lorg/ejml/equation/Operation$82;->val$output:Lorg/ejml/equation/VariableMatrix;

    iget-object v3, v3, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v2, v0, v1, v3}, Lorg/ejml/dense/row/CommonOps_DDRM;->extract(Lorg/ejml/data/DMatrixRMaj;[IILorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    goto/16 :goto_0

    .line 1572
    :cond_1
    iget-object v0, p0, Lorg/ejml/equation/Operation$82;->val$inputs:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ejml/equation/Variable;

    iget-object v5, p0, Lorg/ejml/equation/Operation$82;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v6, v2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-static {v0, v5, v3, v6}, Lorg/ejml/equation/Operation;->access$100(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Operation$Extents;ZI)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/ejml/equation/Operation$82;->val$inputs:Ljava/util/List;

    .line 1573
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ejml/equation/Variable;

    iget-object v5, p0, Lorg/ejml/equation/Operation$82;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v6, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {v0, v5, v1, v6}, Lorg/ejml/equation/Operation;->access$100(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Operation$Extents;ZI)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1574
    iget-object v0, p0, Lorg/ejml/equation/Operation$82;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v1, v0, Lorg/ejml/equation/Operation$Extents;->row1:I

    add-int/2addr v1, v3

    iput v1, v0, Lorg/ejml/equation/Operation$Extents;->row1:I

    .line 1575
    iget-object v0, p0, Lorg/ejml/equation/Operation$82;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v1, v0, Lorg/ejml/equation/Operation$Extents;->col1:I

    add-int/2addr v1, v3

    iput v1, v0, Lorg/ejml/equation/Operation$Extents;->col1:I

    .line 1576
    iget-object v0, p0, Lorg/ejml/equation/Operation$82;->val$output:Lorg/ejml/equation/VariableMatrix;

    iget-object v0, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, p0, Lorg/ejml/equation/Operation$82;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v1, v1, Lorg/ejml/equation/Operation$Extents;->row1:I

    iget-object v3, p0, Lorg/ejml/equation/Operation$82;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v3, v3, Lorg/ejml/equation/Operation$Extents;->row0:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lorg/ejml/equation/Operation$82;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v3, v3, Lorg/ejml/equation/Operation$Extents;->col1:I

    iget-object v4, p0, Lorg/ejml/equation/Operation$82;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v4, v4, Lorg/ejml/equation/Operation$Extents;->col0:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 1577
    iget-object v0, p0, Lorg/ejml/equation/Operation$82;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v3, v0, Lorg/ejml/equation/Operation$Extents;->row0:I

    iget-object v0, p0, Lorg/ejml/equation/Operation$82;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v4, v0, Lorg/ejml/equation/Operation$Extents;->row1:I

    iget-object v0, p0, Lorg/ejml/equation/Operation$82;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v5, v0, Lorg/ejml/equation/Operation$Extents;->col0:I

    iget-object v0, p0, Lorg/ejml/equation/Operation$82;->extents:Lorg/ejml/equation/Operation$Extents;

    iget v6, v0, Lorg/ejml/equation/Operation$Extents;->col1:I

    iget-object v0, p0, Lorg/ejml/equation/Operation$82;->val$output:Lorg/ejml/equation/VariableMatrix;

    iget-object v7, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lorg/ejml/dense/row/CommonOps_DDRM;->extract(Lorg/ejml/data/DMatrix;IIIILorg/ejml/data/DMatrix;II)V

    goto :goto_0

    .line 1579
    :cond_2
    iget-object v0, p0, Lorg/ejml/equation/Operation$82;->val$inputs:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ejml/equation/Variable;

    iget v1, v2, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget-object v3, p0, Lorg/ejml/equation/Operation$82;->rowExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    invoke-static {v0, v1, v3}, Lorg/ejml/equation/Operation;->access$200(Lorg/ejml/equation/Variable;ILorg/ejml/equation/Operation$ArrayExtent;)V

    .line 1580
    iget-object v0, p0, Lorg/ejml/equation/Operation$82;->val$inputs:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ejml/equation/Variable;

    iget v1, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget-object v3, p0, Lorg/ejml/equation/Operation$82;->colExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    invoke-static {v0, v1, v3}, Lorg/ejml/equation/Operation;->access$200(Lorg/ejml/equation/Variable;ILorg/ejml/equation/Operation$ArrayExtent;)V

    .line 1582
    iget-object v0, p0, Lorg/ejml/equation/Operation$82;->val$output:Lorg/ejml/equation/VariableMatrix;

    iget-object v0, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, p0, Lorg/ejml/equation/Operation$82;->rowExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    iget v1, v1, Lorg/ejml/equation/Operation$ArrayExtent;->length:I

    iget-object v3, p0, Lorg/ejml/equation/Operation$82;->colExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    iget v3, v3, Lorg/ejml/equation/Operation$ArrayExtent;->length:I

    invoke-virtual {v0, v1, v3}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 1583
    iget-object v0, p0, Lorg/ejml/equation/Operation$82;->rowExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    iget-object v3, v0, Lorg/ejml/equation/Operation$ArrayExtent;->array:[I

    iget-object v0, p0, Lorg/ejml/equation/Operation$82;->rowExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    iget v4, v0, Lorg/ejml/equation/Operation$ArrayExtent;->length:I

    iget-object v0, p0, Lorg/ejml/equation/Operation$82;->colExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    iget-object v5, v0, Lorg/ejml/equation/Operation$ArrayExtent;->array:[I

    iget-object v0, p0, Lorg/ejml/equation/Operation$82;->colExtent:Lorg/ejml/equation/Operation$ArrayExtent;

    iget v6, v0, Lorg/ejml/equation/Operation$ArrayExtent;->length:I

    iget-object v0, p0, Lorg/ejml/equation/Operation$82;->val$output:Lorg/ejml/equation/VariableMatrix;

    iget-object v7, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    invoke-static/range {v2 .. v7}, Lorg/ejml/dense/row/CommonOps_DDRM;->extract(Lorg/ejml/data/DMatrixRMaj;[II[IILorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    :goto_0
    return-void
.end method
