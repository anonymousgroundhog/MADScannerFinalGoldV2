.class public Lorg/ejml/equation/Operation$ArrayExtent;
.super Ljava/lang/Object;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ejml/equation/Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayExtent"
.end annotation


# instance fields
.field array:[I

.field length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1769
    iput-object v0, p0, Lorg/ejml/equation/Operation$ArrayExtent;->array:[I

    return-void
.end method


# virtual methods
.method public setLength(I)V
    .locals 1

    .line 1773
    iget-object v0, p0, Lorg/ejml/equation/Operation$ArrayExtent;->array:[I

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 1774
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/ejml/equation/Operation$ArrayExtent;->array:[I

    .line 1776
    :cond_0
    iput p1, p0, Lorg/ejml/equation/Operation$ArrayExtent;->length:I

    return-void
.end method
