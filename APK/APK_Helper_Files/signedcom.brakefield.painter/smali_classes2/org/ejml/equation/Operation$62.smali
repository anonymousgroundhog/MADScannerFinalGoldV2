.class Lorg/ejml/equation/Operation$62;
.super Lorg/ejml/equation/Operation;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ejml/equation/Operation;->max_two(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$output:Lorg/ejml/equation/VariableMatrix;

.field final synthetic val$varA:Lorg/ejml/equation/VariableMatrix;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/ejml/equation/VariableMatrix;Lorg/ejml/equation/VariableMatrix;)V
    .locals 0

    .line 1136
    iput-object p2, p0, Lorg/ejml/equation/Operation$62;->val$output:Lorg/ejml/equation/VariableMatrix;

    iput-object p3, p0, Lorg/ejml/equation/Operation$62;->val$varA:Lorg/ejml/equation/VariableMatrix;

    invoke-direct {p0, p1}, Lorg/ejml/equation/Operation;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 3

    .line 1139
    iget-object v0, p0, Lorg/ejml/equation/Operation$62;->val$output:Lorg/ejml/equation/VariableMatrix;

    iget-object v0, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, p0, Lorg/ejml/equation/Operation$62;->val$varA:Lorg/ejml/equation/VariableMatrix;

    iget-object v1, v1, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 1140
    iget-object v0, p0, Lorg/ejml/equation/Operation$62;->val$varA:Lorg/ejml/equation/VariableMatrix;

    iget-object v0, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    iget-object v1, p0, Lorg/ejml/equation/Operation$62;->val$output:Lorg/ejml/equation/VariableMatrix;

    iget-object v1, v1, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v0, v1}, Lorg/ejml/dense/row/CommonOps_DDRM;->maxCols(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    return-void
.end method
