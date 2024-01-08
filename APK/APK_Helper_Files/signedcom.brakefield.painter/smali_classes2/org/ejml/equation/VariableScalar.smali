.class public abstract Lorg/ejml/equation/VariableScalar;
.super Lorg/ejml/equation/Variable;
.source "VariableScalar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ejml/equation/VariableScalar$Type;
    }
.end annotation


# instance fields
.field type:Lorg/ejml/equation/VariableScalar$Type;


# direct methods
.method protected constructor <init>(Lorg/ejml/equation/VariableScalar$Type;)V
    .locals 1

    .line 31
    sget-object v0, Lorg/ejml/equation/VariableType;->SCALAR:Lorg/ejml/equation/VariableType;

    invoke-direct {p0, v0}, Lorg/ejml/equation/Variable;-><init>(Lorg/ejml/equation/VariableType;)V

    .line 32
    iput-object p1, p0, Lorg/ejml/equation/VariableScalar;->type:Lorg/ejml/equation/VariableScalar$Type;

    return-void
.end method


# virtual methods
.method public abstract getDouble()D
.end method

.method public getScalarType()Lorg/ejml/equation/VariableScalar$Type;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/ejml/equation/VariableScalar;->type:Lorg/ejml/equation/VariableScalar$Type;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 39
    sget-object v0, Lorg/ejml/equation/VariableScalar$1;->$SwitchMap$org$ejml$equation$VariableScalar$Type:[I

    iget-object v1, p0, Lorg/ejml/equation/VariableScalar;->type:Lorg/ejml/equation/VariableScalar$Type;

    invoke-virtual {v1}, Lorg/ejml/equation/VariableScalar$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, "ScalarUnknown"

    return-object v0

    :cond_0
    const-string v0, "ScalarC"

    return-object v0

    :cond_1
    const-string v0, "ScalarD"

    return-object v0

    :cond_2
    const-string v0, "ScalarI"

    return-object v0
.end method
