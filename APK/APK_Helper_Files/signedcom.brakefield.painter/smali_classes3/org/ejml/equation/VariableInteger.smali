.class public Lorg/ejml/equation/VariableInteger;
.super Lorg/ejml/equation/VariableScalar;
.source "VariableInteger.java"


# instance fields
.field public value:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 30
    sget-object v0, Lorg/ejml/equation/VariableScalar$Type;->INTEGER:Lorg/ejml/equation/VariableScalar$Type;

    invoke-direct {p0, v0}, Lorg/ejml/equation/VariableScalar;-><init>(Lorg/ejml/equation/VariableScalar$Type;)V

    .line 31
    iput p1, p0, Lorg/ejml/equation/VariableInteger;->value:I

    return-void
.end method


# virtual methods
.method public getDouble()D
    .locals 2

    .line 36
    iget v0, p0, Lorg/ejml/equation/VariableInteger;->value:I

    int-to-double v0, v0

    return-wide v0
.end method
