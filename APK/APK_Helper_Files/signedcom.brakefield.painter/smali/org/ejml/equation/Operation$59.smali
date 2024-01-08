.class Lorg/ejml/equation/Operation$59;
.super Lorg/ejml/equation/Operation;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ejml/equation/Operation;->max(Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$A:Lorg/ejml/equation/Variable;

.field final synthetic val$output:Lorg/ejml/equation/VariableInteger;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/ejml/equation/VariableInteger;Lorg/ejml/equation/Variable;)V
    .locals 0

    .line 1096
    iput-object p2, p0, Lorg/ejml/equation/Operation$59;->val$output:Lorg/ejml/equation/VariableInteger;

    iput-object p3, p0, Lorg/ejml/equation/Operation$59;->val$A:Lorg/ejml/equation/Variable;

    invoke-direct {p0, p1}, Lorg/ejml/equation/Operation;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 2

    .line 1099
    iget-object v0, p0, Lorg/ejml/equation/Operation$59;->val$output:Lorg/ejml/equation/VariableInteger;

    iget-object v1, p0, Lorg/ejml/equation/Operation$59;->val$A:Lorg/ejml/equation/Variable;

    check-cast v1, Lorg/ejml/equation/VariableInteger;

    iget v1, v1, Lorg/ejml/equation/VariableInteger;->value:I

    iput v1, v0, Lorg/ejml/equation/VariableInteger;->value:I

    return-void
.end method
