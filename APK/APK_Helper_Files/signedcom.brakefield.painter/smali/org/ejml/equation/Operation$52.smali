.class Lorg/ejml/equation/Operation$52;
.super Lorg/ejml/equation/Operation;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ejml/equation/Operation;->det(Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$A:Lorg/ejml/equation/Variable;

.field final synthetic val$output:Lorg/ejml/equation/VariableDouble;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableDouble;)V
    .locals 0

    .line 998
    iput-object p2, p0, Lorg/ejml/equation/Operation$52;->val$A:Lorg/ejml/equation/Variable;

    iput-object p3, p0, Lorg/ejml/equation/Operation$52;->val$output:Lorg/ejml/equation/VariableDouble;

    invoke-direct {p0, p1}, Lorg/ejml/equation/Operation;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 4

    .line 1001
    iget-object v0, p0, Lorg/ejml/equation/Operation$52;->val$A:Lorg/ejml/equation/Variable;

    check-cast v0, Lorg/ejml/equation/VariableScalar;

    .line 1002
    iget-object v1, p0, Lorg/ejml/equation/Operation$52;->val$output:Lorg/ejml/equation/VariableDouble;

    invoke-virtual {v0}, Lorg/ejml/equation/VariableScalar;->getDouble()D

    move-result-wide v2

    iput-wide v2, v1, Lorg/ejml/equation/VariableDouble;->value:D

    return-void
.end method
