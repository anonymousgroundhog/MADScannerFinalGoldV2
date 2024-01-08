.class Lorg/ejml/equation/Operation$76;
.super Lorg/ejml/equation/Operation;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ejml/equation/Operation;->rng(Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$A:Lorg/ejml/equation/Variable;

.field final synthetic val$manager:Lorg/ejml/equation/ManagerTempVariables;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)V
    .locals 0

    .line 1381
    iput-object p2, p0, Lorg/ejml/equation/Operation$76;->val$A:Lorg/ejml/equation/Variable;

    iput-object p3, p0, Lorg/ejml/equation/Operation$76;->val$manager:Lorg/ejml/equation/ManagerTempVariables;

    invoke-direct {p0, p1}, Lorg/ejml/equation/Operation;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 4

    .line 1384
    iget-object v0, p0, Lorg/ejml/equation/Operation$76;->val$A:Lorg/ejml/equation/Variable;

    check-cast v0, Lorg/ejml/equation/VariableInteger;

    iget v0, v0, Lorg/ejml/equation/VariableInteger;->value:I

    .line 1385
    iget-object v1, p0, Lorg/ejml/equation/Operation$76;->val$manager:Lorg/ejml/equation/ManagerTempVariables;

    invoke-virtual {v1}, Lorg/ejml/equation/ManagerTempVariables;->getRandom()Ljava/util/Random;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/Random;->setSeed(J)V

    return-void
.end method
