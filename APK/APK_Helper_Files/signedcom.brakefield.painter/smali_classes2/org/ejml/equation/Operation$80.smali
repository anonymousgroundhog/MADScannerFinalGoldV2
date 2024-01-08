.class Lorg/ejml/equation/Operation$80;
.super Lorg/ejml/equation/Operation;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ejml/equation/Operation;->dot(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$A:Lorg/ejml/equation/Variable;

.field final synthetic val$B:Lorg/ejml/equation/Variable;

.field final synthetic val$output:Lorg/ejml/equation/VariableDouble;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableDouble;)V
    .locals 0

    .line 1479
    iput-object p2, p0, Lorg/ejml/equation/Operation$80;->val$A:Lorg/ejml/equation/Variable;

    iput-object p3, p0, Lorg/ejml/equation/Operation$80;->val$B:Lorg/ejml/equation/Variable;

    iput-object p4, p0, Lorg/ejml/equation/Operation$80;->val$output:Lorg/ejml/equation/VariableDouble;

    invoke-direct {p0, p1}, Lorg/ejml/equation/Operation;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 3

    .line 1482
    iget-object v0, p0, Lorg/ejml/equation/Operation$80;->val$A:Lorg/ejml/equation/Variable;

    check-cast v0, Lorg/ejml/equation/VariableMatrix;

    iget-object v0, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    .line 1483
    iget-object v1, p0, Lorg/ejml/equation/Operation$80;->val$B:Lorg/ejml/equation/Variable;

    check-cast v1, Lorg/ejml/equation/VariableMatrix;

    iget-object v1, v1, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    .line 1485
    invoke-static {v0}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lorg/ejml/dense/row/MatrixFeatures_DDRM;->isVector(Lorg/ejml/data/Matrix;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1488
    iget-object v2, p0, Lorg/ejml/equation/Operation$80;->val$output:Lorg/ejml/equation/VariableDouble;

    invoke-static {v0, v1}, Lorg/ejml/dense/row/mult/VectorVectorMult_DDRM;->innerProd(Lorg/ejml/data/DMatrixD1;Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v0

    iput-wide v0, v2, Lorg/ejml/equation/VariableDouble;->value:D

    return-void

    .line 1486
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Both inputs to dot() must be vectors"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
