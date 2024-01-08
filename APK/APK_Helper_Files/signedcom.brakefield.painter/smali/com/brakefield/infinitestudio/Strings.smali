.class public Lcom/brakefield/infinitestudio/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# static fields
.field private static final DEBUG:Z

.field private static res:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 14
    :cond_0
    sget-object v0, Lcom/brakefield/infinitestudio/Strings;->res:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs get(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 20
    :cond_0
    sget-object v0, Lcom/brakefield/infinitestudio/Strings;->res:Landroid/content/res/Resources;

    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 24
    invoke-static {p0}, Lcom/brakefield/infinitestudio/ResourceHelper;->getStringId(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-static {p0}, Lcom/brakefield/infinitestudio/Localization;->applyTo(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sput-object p0, Lcom/brakefield/infinitestudio/Strings;->res:Landroid/content/res/Resources;

    return-void
.end method
