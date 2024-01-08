.class public Lcom/brakefield/painter/addons/Addons;
.super Ljava/lang/Object;
.source "Addons.java"


# static fields
.field private static addons:[Lcom/brakefield/painter/addons/Addon;

.field public static instaPick:Lcom/brakefield/painter/addons/instapick/InstaPickOnDemandAddon;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/brakefield/painter/addons/instapick/InstaPickOnDemandAddon;

    invoke-direct {v0}, Lcom/brakefield/painter/addons/instapick/InstaPickOnDemandAddon;-><init>()V

    sput-object v0, Lcom/brakefield/painter/addons/Addons;->instaPick:Lcom/brakefield/painter/addons/instapick/InstaPickOnDemandAddon;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/brakefield/painter/addons/Addon;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 14
    sput-object v1, Lcom/brakefield/painter/addons/Addons;->addons:[Lcom/brakefield/painter/addons/Addon;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setup(Landroid/content/Context;)V
    .locals 4

    .line 19
    sget-object v0, Lcom/brakefield/painter/addons/Addons;->addons:[Lcom/brakefield/painter/addons/Addon;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p0}, Lcom/brakefield/painter/addons/Addon;->setup(Landroid/content/Context;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 4

    .line 23
    sget-object v0, Lcom/brakefield/painter/addons/Addons;->addons:[Lcom/brakefield/painter/addons/Addon;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p0}, Lcom/brakefield/painter/addons/Addon;->connect(Landroid/content/Context;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 4

    .line 27
    sget-object v0, Lcom/brakefield/painter/addons/Addons;->addons:[Lcom/brakefield/painter/addons/Addon;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p0}, Lcom/brakefield/painter/addons/Addon;->disconnect(Landroid/content/Context;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
