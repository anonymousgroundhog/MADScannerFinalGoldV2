.class public Lorg/ejml/equation/VariableDouble;
.super Lorg/ejml/equation/VariableScalar;
.source "VariableDouble.java"


# instance fields
.field public value:D


# direct methods
.method public constructor <init>(D)V
    .locals 1

    .line 30
    sget-object v0, Lorg/ejml/equation/VariableScalar$Type;->DOUBLE:Lorg/ejml/equation/VariableScalar$Type;

    invoke-direct {p0, v0}, Lorg/ejml/equation/VariableScalar;-><init>(Lorg/ejml/equation/VariableScalar$Type;)V

    .line 31
    iput-wide p1, p0, Lorg/ejml/equation/VariableDouble;->value:D

    return-void
.end method


# virtual methods
.method public getDouble()D
    .locals 2

    .line 36
    iget-wide v0, p0, Lorg/ejml/equation/VariableDouble;->value:D

    return-wide v0
.end method
