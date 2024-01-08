.class Lorg/ejml/equation/Operation$65;
.super Lorg/ejml/equation/Operation;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ejml/equation/Operation;->min(Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$A:Lorg/ejml/equation/Variable;

.field final synthetic val$output:Lorg/ejml/equation/VariableDouble;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/ejml/equation/VariableDouble;Lorg/ejml/equation/Variable;)V
    .locals 0

    .line 1174
    iput-object p2, p0, Lorg/ejml/equation/Operation$65;->val$output:Lorg/ejml/equation/VariableDouble;

    iput-object p3, p0, Lorg/ejml/equation/Operation$65;->val$A:Lorg/ejml/equation/Variable;

    invoke-direct {p0, p1}, Lorg/ejml/equation/Operation;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 3

    .line 1177
    iget-object v0, p0, Lorg/ejml/equation/Operation$65;->val$output:Lorg/ejml/equation/VariableDouble;

    iget-object v1, p0, Lorg/ejml/equation/Operation$65;->val$A:Lorg/ejml/equation/Variable;

    check-cast v1, Lorg/ejml/equation/VariableDouble;

    invoke-virtual {v1}, Lorg/ejml/equation/VariableDouble;->getDouble()D

    move-result-wide v1

    iput-wide v1, v0, Lorg/ejml/equation/VariableDouble;->value:D

    return-void
.end method
