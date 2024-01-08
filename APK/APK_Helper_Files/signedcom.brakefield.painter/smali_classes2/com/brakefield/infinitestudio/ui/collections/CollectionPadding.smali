.class public Lcom/brakefield/infinitestudio/ui/collections/CollectionPadding;
.super Ljava/lang/Object;
.source "CollectionPadding.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static NormalPadding()Lcom/brakefield/infinitestudio/ui/layout/Padding;
    .locals 7

    .line 18
    new-instance v6, Lcom/brakefield/infinitestudio/ui/layout/StepPadding;

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v1

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v2

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v3

    const/high16 v0, 0x43d20000    # 420.0f

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v4

    const/high16 v0, 0x44700000    # 960.0f

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/infinitestudio/ui/layout/StepPadding;-><init>(FFFFF)V

    return-object v6
.end method

.method public static ThinPadding()Lcom/brakefield/infinitestudio/ui/layout/Padding;
    .locals 2

    .line 14
    new-instance v0, Lcom/brakefield/infinitestudio/ui/layout/Padding;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v1

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/ui/layout/Padding;-><init>(F)V

    return-object v0
.end method

.method public static ZeroPadding()Lcom/brakefield/infinitestudio/ui/layout/Padding;
    .locals 2

    .line 10
    new-instance v0, Lcom/brakefield/infinitestudio/ui/layout/Padding;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/ui/layout/Padding;-><init>(F)V

    return-object v0
.end method
