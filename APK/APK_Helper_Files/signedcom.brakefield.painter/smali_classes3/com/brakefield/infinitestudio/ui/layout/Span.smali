.class public Lcom/brakefield/infinitestudio/ui/layout/Span;
.super Ljava/lang/Object;
.source "Span.java"


# instance fields
.field final value:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/layout/Span;->value:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/layout/Span;->value:I

    return-void
.end method


# virtual methods
.method public totalSpan(I)I
    .locals 0

    .line 12
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/layout/Span;->value:I

    return p1
.end method
