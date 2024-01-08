.class Lorg/ejml/equation/Operation$25;
.super Lorg/ejml/equation/Operation;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ejml/equation/Operation;->add(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$m:Lorg/ejml/equation/VariableMatrix;

.field final synthetic val$output:Lorg/ejml/equation/VariableMatrix;

.field final synthetic val$s:Lorg/ejml/equation/VariableScalar;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/ejml/equation/VariableMatrix;Lorg/ejml/equation/VariableMatrix;Lorg/ejml/equation/VariableScalar;)V
    .locals 0

    .line 493
    iput-object p2, p0, Lorg/ejml/equation/Operation$25;->val$output:Lorg/ejml/equation/VariableMatrix;

    iput-object p3, p0, Lorg/ejml/equation/Operation$25;->val$m:Lorg/ejml/equation/VariableMatrix;

    iput-object p4, p0, Lorg/ejml/equation/Operation$25;->val$s:Lorg/ejml/equation/VariableScalar;

    invoke-direct {p0, p1}, Lorg/ejml/equation/Operation;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 4

    .line 496
    iget-object v0, p0, Lorg/ejml/equation/Operation$25;->val$output:Lorg/ejml/equation/VariableMatrix;

    iget-object v0, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, p0, Lorg/ejml/equation/Operation$25;->val$m:Lorg/ejml/equation/VariableMatrix;

    iget-object v1, v1, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget-object v2, p0, Lorg/ejml/equation/Operation$25;->val$m:Lorg/ejml/equation/VariableMatrix;

    iget-object v2, v2, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    iget v2, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {v0, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 497
    iget-object v0, p0, Lorg/ejml/equation/Operation$25;->val$m:Lorg/ejml/equation/VariableMatrix;

    iget-object v0, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, p0, Lorg/ejml/equation/Operation$25;->val$s:Lorg/ejml/equation/VariableScalar;

    invoke-virtual {v1}, Lorg/ejml/equation/VariableScalar;->getDouble()D

    move-result-wide v1

    iget-object v3, p0, Lorg/ejml/equation/Operation$25;->val$output:Lorg/ejml/equation/VariableMatrix;

    iget-object v3, v3, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v0, v1, v2, v3}, Lorg/ejml/dense/row/CommonOps_DDRM;->add(Lorg/ejml/data/DMatrixD1;DLorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;

    return-void
.end method
