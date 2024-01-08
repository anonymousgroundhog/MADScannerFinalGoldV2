.class Lorg/ejml/equation/Operation$22;
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
.field final synthetic val$A:Lorg/ejml/equation/Variable;

.field final synthetic val$B:Lorg/ejml/equation/Variable;

.field final synthetic val$output:Lorg/ejml/equation/VariableMatrix;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableMatrix;)V
    .locals 0

    .line 441
    iput-object p2, p0, Lorg/ejml/equation/Operation$22;->val$A:Lorg/ejml/equation/Variable;

    iput-object p3, p0, Lorg/ejml/equation/Operation$22;->val$B:Lorg/ejml/equation/Variable;

    iput-object p4, p0, Lorg/ejml/equation/Operation$22;->val$output:Lorg/ejml/equation/VariableMatrix;

    invoke-direct {p0, p1}, Lorg/ejml/equation/Operation;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 5

    .line 444
    iget-object v0, p0, Lorg/ejml/equation/Operation$22;->val$A:Lorg/ejml/equation/Variable;

    check-cast v0, Lorg/ejml/equation/VariableMatrix;

    .line 445
    iget-object v1, p0, Lorg/ejml/equation/Operation$22;->val$B:Lorg/ejml/equation/Variable;

    check-cast v1, Lorg/ejml/equation/VariableMatrix;

    .line 447
    iget-object v2, p0, Lorg/ejml/equation/Operation$22;->val$output:Lorg/ejml/equation/VariableMatrix;

    iget-object v3, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    iget v3, v3, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget-object v4, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    iget v4, v4, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {p0, v2, v3, v4}, Lorg/ejml/equation/Operation$22;->resize(Lorg/ejml/equation/VariableMatrix;II)V

    .line 449
    :try_start_0
    iget-object v2, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    iget-object v3, v1, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    iget-object v4, p0, Lorg/ejml/equation/Operation$22;->val$output:Lorg/ejml/equation/VariableMatrix;

    iget-object v4, v4, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v2, v3, v4}, Lorg/ejml/dense/row/CommonOps_DDRM;->add(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;
    :try_end_0
    .catch Lorg/ejml/MatrixDimensionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 451
    :catch_0
    iget-object v0, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    const-string v2, "add"

    invoke-static {v0, v1, v2}, Lorg/ejml/equation/Operation;->access$000(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
