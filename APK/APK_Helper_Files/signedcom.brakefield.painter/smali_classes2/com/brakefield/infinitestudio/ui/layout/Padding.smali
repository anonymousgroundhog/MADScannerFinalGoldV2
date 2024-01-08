.class public Lcom/brakefield/infinitestudio/ui/layout/Padding;
.super Ljava/lang/Object;
.source "Padding.java"


# instance fields
.field final value:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/layout/Padding;->value:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/layout/Padding;->value:F

    return-void
.end method


# virtual methods
.method public get(I)I
    .locals 0

    .line 13
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/layout/Padding;->value:F

    float-to-int p1, p1

    return p1
.end method
