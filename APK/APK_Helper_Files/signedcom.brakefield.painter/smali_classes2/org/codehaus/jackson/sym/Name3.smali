.class public final Lorg/codehaus/jackson/sym/Name3;
.super Lorg/codehaus/jackson/sym/Name;
.source "Name3.java"


# instance fields
.field final mQuad1:I

.field final mQuad2:I

.field final mQuad3:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/sym/Name;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lorg/codehaus/jackson/sym/Name3;->mQuad1:I

    .line 19
    iput p4, p0, Lorg/codehaus/jackson/sym/Name3;->mQuad2:I

    .line 20
    iput p5, p0, Lorg/codehaus/jackson/sym/Name3;->mQuad3:I

    return-void
.end method


# virtual methods
.method public equals(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public equals(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public equals([II)Z
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 34
    aget p2, p1, v1

    iget v0, p0, Lorg/codehaus/jackson/sym/Name3;->mQuad1:I

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    aget v0, p1, p2

    iget v2, p0, Lorg/codehaus/jackson/sym/Name3;->mQuad2:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x2

    aget p1, p1, v0

    iget v0, p0, Lorg/codehaus/jackson/sym/Name3;->mQuad3:I

    if-ne p1, v0, :cond_0

    move v1, p2

    :cond_0
    return v1
.end method
