.class Lorg/ejml/equation/Operation$38;
.super Lorg/ejml/equation/Operation;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ejml/equation/Operation;->copy(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;)Lorg/ejml/equation/Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dst:Lorg/ejml/equation/Variable;

.field final synthetic val$src:Lorg/ejml/equation/Variable;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;)V
    .locals 0

    .line 717
    iput-object p2, p0, Lorg/ejml/equation/Operation$38;->val$src:Lorg/ejml/equation/Variable;

    iput-object p3, p0, Lorg/ejml/equation/Operation$38;->val$dst:Lorg/ejml/equation/Variable;

    invoke-direct {p0, p1}, Lorg/ejml/equation/Operation;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 4

    .line 720
    iget-object v0, p0, Lorg/ejml/equation/Operation$38;->val$src:Lorg/ejml/equation/Variable;

    check-cast v0, Lorg/ejml/equation/VariableMatrix;

    iget-object v0, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    .line 721
    iget v1, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v1, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v1, v2, :cond_0

    .line 724
    iget-object v1, p0, Lorg/ejml/equation/Operation$38;->val$dst:Lorg/ejml/equation/Variable;

    check-cast v1, Lorg/ejml/equation/VariableDouble;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Lorg/ejml/data/DMatrixRMaj;->unsafe_get(II)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/ejml/equation/VariableDouble;->value:D

    return-void

    .line 722
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to assign a non 1x1 matrix to a double"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
