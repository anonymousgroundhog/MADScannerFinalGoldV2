.class public Lcom/brakefield/infinitestudio/ChromebookUtils;
.super Ljava/lang/Object;
.source "ChromebookUtils.java"


# static fields
.field private static displayOrientation:Z = false

.field private static firstCheck:Z = true

.field private static isChromebook:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isChromebook(Landroid/content/Context;)Z
    .locals 2

    .line 16
    sget-boolean v0, Lcom/brakefield/infinitestudio/ChromebookUtils;->firstCheck:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 17
    sput-boolean v0, Lcom/brakefield/infinitestudio/ChromebookUtils;->firstCheck:Z

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "org.chromium.arc.device_management"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/brakefield/infinitestudio/ChromebookUtils;->isChromebook:Z

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "ro.surface_flinger.primary_display_orientation"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/brakefield/infinitestudio/ChromebookUtils;->displayOrientation:Z

    .line 21
    :cond_0
    sget-boolean p0, Lcom/brakefield/infinitestudio/ChromebookUtils;->isChromebook:Z

    return p0
.end method
