.class Lorg/ejml/equation/Operation$78;
.super Lorg/ejml/equation/Operation;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ejml/equation/Operation;->randn(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$A:Lorg/ejml/equation/Variable;

.field final synthetic val$B:Lorg/ejml/equation/Variable;

.field final synthetic val$manager:Lorg/ejml/equation/ManagerTempVariables;

.field final synthetic val$output:Lorg/ejml/equation/VariableMatrix;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableMatrix;Lorg/ejml/equation/ManagerTempVariables;)V
    .locals 0

    .line 1429
    iput-object p2, p0, Lorg/ejml/equation/Operation$78;->val$A:Lorg/ejml/equation/Variable;

    iput-object p3, p0, Lorg/ejml/equation/Operation$78;->val$B:Lorg/ejml/equation/Variable;

    iput-object p4, p0, Lorg/ejml/equation/Operation$78;->val$output:Lorg/ejml/equation/VariableMatrix;

    iput-object p5, p0, Lorg/ejml/equation/Operation$78;->val$manager:Lorg/ejml/equation/ManagerTempVariables;

    invoke-direct {p0, p1}, Lorg/ejml/equation/Operation;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 7

    .line 1432
    iget-object v0, p0, Lorg/ejml/equation/Operation$78;->val$A:Lorg/ejml/equation/Variable;

    check-cast v0, Lorg/ejml/equation/VariableInteger;

    iget v0, v0, Lorg/ejml/equation/VariableInteger;->value:I

    .line 1433
    iget-object v1, p0, Lorg/ejml/equation/Operation$78;->val$B:Lorg/ejml/equation/Variable;

    check-cast v1, Lorg/ejml/equation/VariableInteger;

    iget v1, v1, Lorg/ejml/equation/VariableInteger;->value:I

    .line 1434
    iget-object v2, p0, Lorg/ejml/equation/Operation$78;->val$output:Lorg/ejml/equation/VariableMatrix;

    iget-object v2, v2, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v2, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 1435
    iget-object v0, p0, Lorg/ejml/equation/Operation$78;->val$output:Lorg/ejml/equation/VariableMatrix;

    iget-object v1, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget-object v0, p0, Lorg/ejml/equation/Operation$78;->val$manager:Lorg/ejml/equation/ManagerTempVariables;

    invoke-virtual {v0}, Lorg/ejml/equation/ManagerTempVariables;->getRandom()Ljava/util/Random;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lorg/ejml/dense/row/RandomMatrices_DDRM;->fillGaussian(Lorg/ejml/data/DMatrixD1;DDLjava/util/Random;)V

    return-void
.end method
