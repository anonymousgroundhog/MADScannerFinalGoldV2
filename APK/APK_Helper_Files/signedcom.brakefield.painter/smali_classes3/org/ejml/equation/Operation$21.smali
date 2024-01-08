.class Lorg/ejml/equation/Operation$21;
.super Lorg/ejml/equation/Operation;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ejml/equation/Operation;->log(Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$A:Lorg/ejml/equation/Variable;

.field final synthetic val$ret:Lorg/ejml/equation/Operation$Info;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Operation$Info;)V
    .locals 0

    .line 419
    iput-object p2, p0, Lorg/ejml/equation/Operation$21;->val$A:Lorg/ejml/equation/Variable;

    iput-object p3, p0, Lorg/ejml/equation/Operation$21;->val$ret:Lorg/ejml/equation/Operation$Info;

    invoke-direct {p0, p1}, Lorg/ejml/equation/Operation;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 4

    .line 422
    iget-object v0, p0, Lorg/ejml/equation/Operation$21;->val$A:Lorg/ejml/equation/Variable;

    check-cast v0, Lorg/ejml/equation/VariableMatrix;

    iget-object v0, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    .line 423
    iget-object v1, p0, Lorg/ejml/equation/Operation$21;->val$ret:Lorg/ejml/equation/Operation$Info;

    iget-object v1, v1, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    check-cast v1, Lorg/ejml/equation/VariableMatrix;

    iget-object v1, v1, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    .line 424
    iget v2, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v3, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {v1, v2, v3}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 425
    invoke-static {v0, v1}, Lorg/ejml/dense/row/CommonOps_DDRM;->elementLog(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;

    return-void
.end method
