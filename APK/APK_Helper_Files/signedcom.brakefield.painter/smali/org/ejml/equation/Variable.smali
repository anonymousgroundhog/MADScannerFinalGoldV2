.class public Lorg/ejml/equation/Variable;
.super Ljava/lang/Object;
.source "Variable.java"


# instance fields
.field public type:Lorg/ejml/equation/VariableType;


# direct methods
.method protected constructor <init>(Lorg/ejml/equation/VariableType;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/ejml/equation/Variable;->type:Lorg/ejml/equation/VariableType;

    return-void
.end method


# virtual methods
.method public getType()Lorg/ejml/equation/VariableType;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/ejml/equation/Variable;->type:Lorg/ejml/equation/VariableType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VAR_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/ejml/equation/Variable;->type:Lorg/ejml/equation/VariableType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
