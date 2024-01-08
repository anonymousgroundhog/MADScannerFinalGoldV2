.class public abstract Lcom/brakefield/painter/addons/EmbeddedAddon;
.super Lcom/brakefield/painter/addons/Addon;
.source "EmbeddedAddon.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/brakefield/painter/addons/Addon;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBasePreferenceName()Ljava/lang/String;
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PREF_INTERNAL_MODULE_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/brakefield/painter/addons/EmbeddedAddon;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getModuleName()Ljava/lang/String;
.end method

.method public install(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public isInstalled(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public uninstall(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
