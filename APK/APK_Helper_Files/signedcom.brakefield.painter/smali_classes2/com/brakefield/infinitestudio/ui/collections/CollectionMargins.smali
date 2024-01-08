.class public Lcom/brakefield/infinitestudio/ui/collections/CollectionMargins;
.super Ljava/lang/Object;
.source "CollectionMargins.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FixedMargins(F)Lcom/brakefield/infinitestudio/ui/layout/Margin;
    .locals 1

    .line 19
    new-instance v0, Lcom/brakefield/infinitestudio/ui/layout/Margin;

    invoke-static {p0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p0

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/ui/layout/Margin;-><init>(F)V

    return-object v0
.end method

.method public static FlexMargins(Lcom/brakefield/infinitestudio/ui/layout/FlexSpan;FF)Lcom/brakefield/infinitestudio/ui/layout/Margin;
    .locals 1

    .line 23
    new-instance v0, Lcom/brakefield/infinitestudio/ui/layout/FlexMargin;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p1

    invoke-static {p2}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p2

    invoke-direct {v0, p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/layout/FlexMargin;-><init>(Lcom/brakefield/infinitestudio/ui/layout/FlexSpan;FF)V

    return-object v0
.end method

.method public static NoMargins()Lcom/brakefield/infinitestudio/ui/layout/Margin;
    .locals 2

    .line 11
    new-instance v0, Lcom/brakefield/infinitestudio/ui/layout/Margin;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/ui/layout/Margin;-><init>(F)V

    return-object v0
.end method

.method public static ThinMargins()Lcom/brakefield/infinitestudio/ui/layout/Margin;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionMargins;->FixedMargins(F)Lcom/brakefield/infinitestudio/ui/layout/Margin;

    move-result-object v0

    return-object v0
.end method
