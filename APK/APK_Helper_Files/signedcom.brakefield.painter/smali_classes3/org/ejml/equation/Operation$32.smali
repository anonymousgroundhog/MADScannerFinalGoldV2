.class Lorg/ejml/equation/Operation$32;
.super Lorg/ejml/equation/Operation;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ejml/equation/Operation;->elementDivision(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
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

    .line 616
    iput-object p2, p0, Lorg/ejml/equation/Operation$32;->val$A:Lorg/ejml/equation/Variable;

    iput-object p3, p0, Lorg/ejml/equation/Operation$32;->val$B:Lorg/ejml/equation/Variable;

    iput-object p4, p0, Lorg/ejml/equation/Operation$32;->val$output:Lorg/ejml/equation/VariableMatrix;

    invoke-direct {p0, p1}, Lorg/ejml/equation/Operation;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 5

    .line 619
    iget-object v0, p0, Lorg/ejml/equation/Operation$32;->val$A:Lorg/ejml/equation/Variable;

    check-cast v0, Lorg/ejml/equation/VariableMatrix;

    .line 620
    iget-object v1, p0, Lorg/ejml/equation/Operation$32;->val$B:Lorg/ejml/equation/Variable;

    check-cast v1, Lorg/ejml/equation/VariableMatrix;

    .line 622
    iget-object v2, p0, Lorg/ejml/equation/Operation$32;->val$output:Lorg/ejml/equation/VariableMatrix;

    iget-object v3, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    iget v3, v3, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget-object v4, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    iget v4, v4, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {p0, v2, v3, v4}, Lorg/ejml/equation/Operation$32;->resize(Lorg/ejml/equation/VariableMatrix;II)V

    .line 623
    iget-object v0, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, v1, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    iget-object v2, p0, Lorg/ejml/equation/Operation$32;->val$output:Lorg/ejml/equation/VariableMatrix;

    iget-object v2, v2, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v0, v1, v2}, Lorg/ejml/dense/row/CommonOps_DDRM;->elementDiv(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)Lorg/ejml/data/DMatrixD1;

    return-void
.end method
