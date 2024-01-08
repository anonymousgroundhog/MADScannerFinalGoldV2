.class Lorg/ejml/equation/Operation$83;
.super Lorg/ejml/equation/Operation;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ejml/equation/Operation;->sum_one(Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$output:Lorg/ejml/equation/VariableDouble;

.field final synthetic val$varA:Lorg/ejml/equation/VariableMatrix;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/ejml/equation/VariableDouble;Lorg/ejml/equation/VariableMatrix;)V
    .locals 0

    .line 1603
    iput-object p2, p0, Lorg/ejml/equation/Operation$83;->val$output:Lorg/ejml/equation/VariableDouble;

    iput-object p3, p0, Lorg/ejml/equation/Operation$83;->val$varA:Lorg/ejml/equation/VariableMatrix;

    invoke-direct {p0, p1}, Lorg/ejml/equation/Operation;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 3

    .line 1606
    iget-object v0, p0, Lorg/ejml/equation/Operation$83;->val$output:Lorg/ejml/equation/VariableDouble;

    iget-object v1, p0, Lorg/ejml/equation/Operation$83;->val$varA:Lorg/ejml/equation/VariableMatrix;

    iget-object v1, v1, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v1}, Lorg/ejml/dense/row/CommonOps_DDRM;->elementSum(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/ejml/equation/VariableDouble;->value:D

    return-void
.end method
