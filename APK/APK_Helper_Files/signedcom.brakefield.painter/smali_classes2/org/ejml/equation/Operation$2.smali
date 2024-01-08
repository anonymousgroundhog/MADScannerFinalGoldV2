.class Lorg/ejml/equation/Operation$2;
.super Lorg/ejml/equation/Operation;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ejml/equation/Operation;->multiply(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$A:Lorg/ejml/equation/Variable;

.field final synthetic val$B:Lorg/ejml/equation/Variable;

.field final synthetic val$output:Lorg/ejml/equation/VariableInteger;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableInteger;)V
    .locals 0

    .line 95
    iput-object p2, p0, Lorg/ejml/equation/Operation$2;->val$A:Lorg/ejml/equation/Variable;

    iput-object p3, p0, Lorg/ejml/equation/Operation$2;->val$B:Lorg/ejml/equation/Variable;

    iput-object p4, p0, Lorg/ejml/equation/Operation$2;->val$output:Lorg/ejml/equation/VariableInteger;

    invoke-direct {p0, p1}, Lorg/ejml/equation/Operation;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 3

    .line 98
    iget-object v0, p0, Lorg/ejml/equation/Operation$2;->val$A:Lorg/ejml/equation/Variable;

    check-cast v0, Lorg/ejml/equation/VariableInteger;

    .line 99
    iget-object v1, p0, Lorg/ejml/equation/Operation$2;->val$B:Lorg/ejml/equation/Variable;

    check-cast v1, Lorg/ejml/equation/VariableInteger;

    .line 101
    iget-object v2, p0, Lorg/ejml/equation/Operation$2;->val$output:Lorg/ejml/equation/VariableInteger;

    iget v0, v0, Lorg/ejml/equation/VariableInteger;->value:I

    iget v1, v1, Lorg/ejml/equation/VariableInteger;->value:I

    mul-int/2addr v0, v1

    iput v0, v2, Lorg/ejml/equation/VariableInteger;->value:I

    return-void
.end method
