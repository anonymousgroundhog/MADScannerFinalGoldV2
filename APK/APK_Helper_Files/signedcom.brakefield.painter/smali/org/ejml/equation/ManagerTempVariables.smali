.class public Lorg/ejml/equation/ManagerTempVariables;
.super Ljava/lang/Object;
.source "ManagerTempVariables.java"


# instance fields
.field rand:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Random;

    const-wide/32 v1, -0x21524111

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lorg/ejml/equation/ManagerTempVariables;->rand:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public createDouble()Lorg/ejml/equation/VariableDouble;
    .locals 3

    .line 46
    new-instance v0, Lorg/ejml/equation/VariableDouble;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/ejml/equation/VariableDouble;-><init>(D)V

    return-object v0
.end method

.method public createDouble(D)Lorg/ejml/equation/VariableDouble;
    .locals 1

    .line 50
    new-instance v0, Lorg/ejml/equation/VariableDouble;

    invoke-direct {v0, p1, p2}, Lorg/ejml/equation/VariableDouble;-><init>(D)V

    return-object v0
.end method

.method public createInteger()Lorg/ejml/equation/VariableInteger;
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0}, Lorg/ejml/equation/ManagerTempVariables;->createInteger(I)Lorg/ejml/equation/VariableInteger;

    move-result-object v0

    return-object v0
.end method

.method public createInteger(I)Lorg/ejml/equation/VariableInteger;
    .locals 1

    .line 58
    new-instance v0, Lorg/ejml/equation/VariableInteger;

    invoke-direct {v0, p1}, Lorg/ejml/equation/VariableInteger;-><init>(I)V

    return-object v0
.end method

.method public createIntegerSequence(Lorg/ejml/equation/IntegerSequence;)Lorg/ejml/equation/VariableIntegerSequence;
    .locals 1

    .line 62
    new-instance v0, Lorg/ejml/equation/VariableIntegerSequence;

    invoke-direct {v0, p1}, Lorg/ejml/equation/VariableIntegerSequence;-><init>(Lorg/ejml/equation/IntegerSequence;)V

    return-object v0
.end method

.method public createMatrix()Lorg/ejml/equation/VariableMatrix;
    .locals 1

    .line 42
    invoke-static {}, Lorg/ejml/equation/VariableMatrix;->createTemp()Lorg/ejml/equation/VariableMatrix;

    move-result-object v0

    return-object v0
.end method

.method public getRandom()Ljava/util/Random;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/ejml/equation/ManagerTempVariables;->rand:Ljava/util/Random;

    return-object v0
.end method
