.class public Lcom/brakefield/infinitestudio/color/SwatchManager;
.super Ljava/lang/Object;
.source "SwatchManager.java"


# static fields
.field private static swatch:Lcom/brakefield/infinitestudio/color/Swatch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addColor(I)V
    .locals 1

    .line 16
    invoke-static {}, Lcom/brakefield/infinitestudio/color/SwatchManager;->getCurrentSwatch()Lcom/brakefield/infinitestudio/color/Swatch;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/color/Swatch;->add(I)V

    return-void
.end method

.method public static clear()V
    .locals 1

    .line 28
    invoke-static {}, Lcom/brakefield/infinitestudio/color/SwatchManager;->getCurrentSwatch()Lcom/brakefield/infinitestudio/color/Swatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/color/Swatch;->clear()V

    return-void
.end method

.method public static getCurrentSwatch()Lcom/brakefield/infinitestudio/color/Swatch;
    .locals 1

    .line 9
    sget-object v0, Lcom/brakefield/infinitestudio/color/SwatchManager;->swatch:Lcom/brakefield/infinitestudio/color/Swatch;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/brakefield/infinitestudio/color/Swatch;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/color/Swatch;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/color/SwatchManager;->swatch:Lcom/brakefield/infinitestudio/color/Swatch;

    .line 12
    :cond_0
    sget-object v0, Lcom/brakefield/infinitestudio/color/SwatchManager;->swatch:Lcom/brakefield/infinitestudio/color/Swatch;

    return-object v0
.end method

.method public static setSwatch(Lcom/brakefield/infinitestudio/color/Swatch;)V
    .locals 0

    .line 20
    sput-object p0, Lcom/brakefield/infinitestudio/color/SwatchManager;->swatch:Lcom/brakefield/infinitestudio/color/Swatch;

    return-void
.end method

.method public static snap(I)I
    .locals 1

    .line 24
    invoke-static {}, Lcom/brakefield/infinitestudio/color/SwatchManager;->getCurrentSwatch()Lcom/brakefield/infinitestudio/color/Swatch;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/color/Swatch;->snap(I)I

    move-result p0

    return p0
.end method
