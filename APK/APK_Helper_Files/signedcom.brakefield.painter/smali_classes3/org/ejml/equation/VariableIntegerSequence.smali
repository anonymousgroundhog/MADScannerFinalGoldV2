.class public Lorg/ejml/equation/VariableIntegerSequence;
.super Lorg/ejml/equation/Variable;
.source "VariableIntegerSequence.java"


# instance fields
.field sequence:Lorg/ejml/equation/IntegerSequence;


# direct methods
.method protected constructor <init>(Lorg/ejml/equation/IntegerSequence;)V
    .locals 1

    .line 30
    sget-object v0, Lorg/ejml/equation/VariableType;->INTEGER_SEQUENCE:Lorg/ejml/equation/VariableType;

    invoke-direct {p0, v0}, Lorg/ejml/equation/Variable;-><init>(Lorg/ejml/equation/VariableType;)V

    .line 31
    iput-object p1, p0, Lorg/ejml/equation/VariableIntegerSequence;->sequence:Lorg/ejml/equation/IntegerSequence;

    return-void
.end method
