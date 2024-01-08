.class Lorg/ejml/equation/Operation$68;
.super Lorg/ejml/equation/Operation;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ejml/equation/Operation;->abs(Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$A:Lorg/ejml/equation/Variable;

.field final synthetic val$output:Lorg/ejml/equation/VariableMatrix;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableMatrix;)V
    .locals 0

    .line 1225
    iput-object p2, p0, Lorg/ejml/equation/Operation$68;->val$A:Lorg/ejml/equation/Variable;

    iput-object p3, p0, Lorg/ejml/equation/Operation$68;->val$output:Lorg/ejml/equation/VariableMatrix;

    invoke-direct {p0, p1}, Lorg/ejml/equation/Operation;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 6

    .line 1228
    iget-object v0, p0, Lorg/ejml/equation/Operation$68;->val$A:Lorg/ejml/equation/Variable;

    check-cast v0, Lorg/ejml/equation/VariableMatrix;

    iget-object v0, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    .line 1229
    iget-object v1, p0, Lorg/ejml/equation/Operation$68;->val$output:Lorg/ejml/equation/VariableMatrix;

    iget-object v1, v1, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    iget v2, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v3, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {v1, v2, v3}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 1230
    invoke-virtual {v0}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1232
    iget-object v3, p0, Lorg/ejml/equation/Operation$68;->val$output:Lorg/ejml/equation/VariableMatrix;

    iget-object v3, v3, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    iget-object v3, v3, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v4, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v4, v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
