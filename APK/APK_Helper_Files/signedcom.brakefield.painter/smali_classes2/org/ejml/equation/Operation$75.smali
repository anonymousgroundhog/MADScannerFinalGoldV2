.class Lorg/ejml/equation/Operation$75;
.super Lorg/ejml/equation/Operation;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ejml/equation/Operation;->ones(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
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

    .line 1357
    iput-object p2, p0, Lorg/ejml/equation/Operation$75;->val$A:Lorg/ejml/equation/Variable;

    iput-object p3, p0, Lorg/ejml/equation/Operation$75;->val$B:Lorg/ejml/equation/Variable;

    iput-object p4, p0, Lorg/ejml/equation/Operation$75;->val$output:Lorg/ejml/equation/VariableMatrix;

    invoke-direct {p0, p1}, Lorg/ejml/equation/Operation;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 3

    .line 1360
    iget-object v0, p0, Lorg/ejml/equation/Operation$75;->val$A:Lorg/ejml/equation/Variable;

    check-cast v0, Lorg/ejml/equation/VariableInteger;

    iget v0, v0, Lorg/ejml/equation/VariableInteger;->value:I

    .line 1361
    iget-object v1, p0, Lorg/ejml/equation/Operation$75;->val$B:Lorg/ejml/equation/Variable;

    check-cast v1, Lorg/ejml/equation/VariableInteger;

    iget v1, v1, Lorg/ejml/equation/VariableInteger;->value:I

    .line 1362
    iget-object v2, p0, Lorg/ejml/equation/Operation$75;->val$output:Lorg/ejml/equation/VariableMatrix;

    iget-object v2, v2, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v2, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 1363
    iget-object v0, p0, Lorg/ejml/equation/Operation$75;->val$output:Lorg/ejml/equation/VariableMatrix;

    iget-object v0, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2}, Lorg/ejml/dense/row/CommonOps_DDRM;->fill(Lorg/ejml/data/DMatrixD1;D)V

    return-void
.end method
