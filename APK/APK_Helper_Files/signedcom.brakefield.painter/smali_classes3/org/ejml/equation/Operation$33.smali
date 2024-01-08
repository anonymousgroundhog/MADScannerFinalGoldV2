.class Lorg/ejml/equation/Operation$33;
.super Lorg/ejml/equation/Operation;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ejml/equation/Operation;->elementPow(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
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

    .line 642
    iput-object p2, p0, Lorg/ejml/equation/Operation$33;->val$A:Lorg/ejml/equation/Variable;

    iput-object p3, p0, Lorg/ejml/equation/Operation$33;->val$B:Lorg/ejml/equation/Variable;

    iput-object p4, p0, Lorg/ejml/equation/Operation$33;->val$output:Lorg/ejml/equation/VariableDouble;

    invoke-direct {p0, p1}, Lorg/ejml/equation/Operation;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 5

    .line 645
    iget-object v0, p0, Lorg/ejml/equation/Operation$33;->val$A:Lorg/ejml/equation/Variable;

    check-cast v0, Lorg/ejml/equation/VariableScalar;

    invoke-virtual {v0}, Lorg/ejml/equation/VariableScalar;->getDouble()D

    move-result-wide v0

    .line 646
    iget-object v2, p0, Lorg/ejml/equation/Operation$33;->val$B:Lorg/ejml/equation/Variable;

    check-cast v2, Lorg/ejml/equation/VariableScalar;

    invoke-virtual {v2}, Lorg/ejml/equation/VariableScalar;->getDouble()D

    move-result-wide v2

    .line 648
    iget-object v4, p0, Lorg/ejml/equation/Operation$33;->val$output:Lorg/ejml/equation/VariableDouble;

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iput-wide v0, v4, Lorg/ejml/equation/VariableDouble;->value:D

    return-void
.end method
