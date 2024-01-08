.class Lorg/ejml/equation/Operation$73;
.super Lorg/ejml/equation/Operation;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ejml/equation/Operation;->diag(Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$A:Lorg/ejml/equation/Variable;

.field final synthetic val$output:Lorg/ejml/equation/VariableMatrix;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableMatrix;)V
    .locals 0

    .line 1298
    iput-object p2, p0, Lorg/ejml/equation/Operation$73;->val$A:Lorg/ejml/equation/Variable;

    iput-object p3, p0, Lorg/ejml/equation/Operation$73;->val$output:Lorg/ejml/equation/VariableMatrix;

    invoke-direct {p0, p1}, Lorg/ejml/equation/Operation;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 6

    .line 1301
    iget-object v0, p0, Lorg/ejml/equation/Operation$73;->val$A:Lorg/ejml/equation/Variable;

    check-cast v0, Lorg/ejml/equation/VariableMatrix;

    iget-object v0, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    .line 1303
    invoke-static {v0}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1304
    invoke-virtual {v0}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v1

    .line 1305
    iget-object v2, p0, Lorg/ejml/equation/Operation$73;->val$output:Lorg/ejml/equation/VariableMatrix;

    iget-object v2, v2, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v2, v1, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 1306
    iget-object v2, p0, Lorg/ejml/equation/Operation$73;->val$output:Lorg/ejml/equation/VariableMatrix;

    iget-object v2, v2, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    iget-object v0, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    invoke-static {v2, v1, v0}, Lorg/ejml/dense/row/CommonOps_DDRM;->diag(Lorg/ejml/data/DMatrixRMaj;I[D)Lorg/ejml/data/DMatrixRMaj;

    goto :goto_1

    .line 1308
    :cond_0
    iget v1, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v2, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1309
    iget-object v2, p0, Lorg/ejml/equation/Operation$73;->val$output:Lorg/ejml/equation/VariableMatrix;

    iget-object v2, v2, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1311
    iget-object v3, p0, Lorg/ejml/equation/Operation$73;->val$output:Lorg/ejml/equation/VariableMatrix;

    iget-object v3, v3, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    iget-object v3, v3, Lorg/ejml/data/DMatrixRMaj;->data:[D

    invoke-virtual {v0, v2, v2}, Lorg/ejml/data/DMatrixRMaj;->unsafe_get(II)D

    move-result-wide v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
