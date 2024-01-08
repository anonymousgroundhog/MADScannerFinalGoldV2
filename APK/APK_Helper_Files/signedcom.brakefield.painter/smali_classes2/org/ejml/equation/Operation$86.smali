.class Lorg/ejml/equation/Operation$86;
.super Lorg/ejml/equation/Operation;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ejml/equation/Operation;->extractScalar(Ljava/util/List;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$inputs:Ljava/util/List;

.field final synthetic val$output:Lorg/ejml/equation/VariableDouble;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;Lorg/ejml/equation/VariableDouble;)V
    .locals 0

    .line 1660
    iput-object p2, p0, Lorg/ejml/equation/Operation$86;->val$inputs:Ljava/util/List;

    iput-object p3, p0, Lorg/ejml/equation/Operation$86;->val$output:Lorg/ejml/equation/VariableDouble;

    invoke-direct {p0, p1}, Lorg/ejml/equation/Operation;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 4

    .line 1665
    iget-object v0, p0, Lorg/ejml/equation/Operation$86;->val$inputs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ejml/equation/VariableMatrix;

    iget-object v0, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    .line 1667
    iget-object v1, p0, Lorg/ejml/equation/Operation$86;->val$inputs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 1668
    iget-object v1, p0, Lorg/ejml/equation/Operation$86;->val$inputs:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ejml/equation/VariableInteger;

    iget v1, v1, Lorg/ejml/equation/VariableInteger;->value:I

    .line 1670
    iget-object v2, p0, Lorg/ejml/equation/Operation$86;->val$output:Lorg/ejml/equation/VariableDouble;

    invoke-virtual {v0, v1}, Lorg/ejml/data/DMatrixRMaj;->get(I)D

    move-result-wide v0

    iput-wide v0, v2, Lorg/ejml/equation/VariableDouble;->value:D

    goto :goto_0

    .line 1672
    :cond_0
    iget-object v1, p0, Lorg/ejml/equation/Operation$86;->val$inputs:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ejml/equation/VariableInteger;

    iget v1, v1, Lorg/ejml/equation/VariableInteger;->value:I

    .line 1673
    iget-object v2, p0, Lorg/ejml/equation/Operation$86;->val$inputs:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ejml/equation/VariableInteger;

    iget v2, v2, Lorg/ejml/equation/VariableInteger;->value:I

    .line 1675
    iget-object v3, p0, Lorg/ejml/equation/Operation$86;->val$output:Lorg/ejml/equation/VariableDouble;

    invoke-virtual {v0, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->get(II)D

    move-result-wide v0

    iput-wide v0, v3, Lorg/ejml/equation/VariableDouble;->value:D

    :goto_0
    return-void
.end method
