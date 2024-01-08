.class public interface abstract Lorg/ejml/equation/IntegerSequence;
.super Ljava/lang/Object;
.source "IntegerSequence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ejml/equation/IntegerSequence$Range;,
        Lorg/ejml/equation/IntegerSequence$Combined;,
        Lorg/ejml/equation/IntegerSequence$For;,
        Lorg/ejml/equation/IntegerSequence$Explicit;,
        Lorg/ejml/equation/IntegerSequence$Type;
    }
.end annotation


# virtual methods
.method public abstract getType()Lorg/ejml/equation/IntegerSequence$Type;
.end method

.method public abstract hasNext()Z
.end method

.method public abstract initialize(I)V
.end method

.method public abstract length()I
.end method

.method public abstract next()I
.end method

.method public abstract requiresMaxIndex()Z
.end method
