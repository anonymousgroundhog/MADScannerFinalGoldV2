.class Lorg/ejml/equation/Operation$57;
.super Lorg/ejml/equation/Operation;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ejml/equation/Operation;->normP(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$output:Lorg/ejml/equation/VariableDouble;

.field final synthetic val$valueP:D

.field final synthetic val$varA:Lorg/ejml/equation/VariableMatrix;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/ejml/equation/VariableDouble;Lorg/ejml/equation/VariableMatrix;D)V
    .locals 0

    .line 1071
    iput-object p2, p0, Lorg/ejml/equation/Operation$57;->val$output:Lorg/ejml/equation/VariableDouble;

    iput-object p3, p0, Lorg/ejml/equation/Operation$57;->val$varA:Lorg/ejml/equation/VariableMatrix;

    iput-wide p4, p0, Lorg/ejml/equation/Operation$57;->val$valueP:D

    invoke-direct {p0, p1}, Lorg/ejml/equation/Operation;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 4

    .line 1074
    iget-object v0, p0, Lorg/ejml/equation/Operation$57;->val$output:Lorg/ejml/equation/VariableDouble;

    iget-object v1, p0, Lorg/ejml/equation/Operation$57;->val$varA:Lorg/ejml/equation/VariableMatrix;

    iget-object v1, v1, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    iget-wide v2, p0, Lorg/ejml/equation/Operation$57;->val$valueP:D

    invoke-static {v1, v2, v3}, Lorg/ejml/dense/row/NormOps_DDRM;->normP(Lorg/ejml/data/DMatrixRMaj;D)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/ejml/equation/VariableDouble;->value:D

    return-void
.end method
