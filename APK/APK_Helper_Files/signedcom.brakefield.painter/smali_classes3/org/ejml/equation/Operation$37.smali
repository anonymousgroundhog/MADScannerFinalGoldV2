.class Lorg/ejml/equation/Operation$37;
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

    .line 707
    iput-object p2, p0, Lorg/ejml/equation/Operation$37;->val$dst:Lorg/ejml/equation/Variable;

    iput-object p3, p0, Lorg/ejml/equation/Operation$37;->val$src:Lorg/ejml/equation/Variable;

    invoke-direct {p0, p1}, Lorg/ejml/equation/Operation;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 3

    .line 710
    iget-object v0, p0, Lorg/ejml/equation/Operation$37;->val$dst:Lorg/ejml/equation/Variable;

    check-cast v0, Lorg/ejml/equation/VariableMatrix;

    iget-object v0, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    .line 711
    iget-object v1, p0, Lorg/ejml/equation/Operation$37;->val$src:Lorg/ejml/equation/Variable;

    check-cast v1, Lorg/ejml/equation/VariableMatrix;

    iget-object v1, v1, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    .line 712
    iget v2, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {v0, v2, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 713
    iget-object v1, p0, Lorg/ejml/equation/Operation$37;->val$src:Lorg/ejml/equation/Variable;

    check-cast v1, Lorg/ejml/equation/VariableMatrix;

    iget-object v1, v1, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, v1}, Lorg/ejml/data/DMatrixRMaj;->set(Lorg/ejml/data/DMatrixD1;)V

    return-void
.end method
