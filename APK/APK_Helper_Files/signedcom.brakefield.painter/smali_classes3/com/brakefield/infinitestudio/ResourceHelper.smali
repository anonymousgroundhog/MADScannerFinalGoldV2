.class public Lcom/brakefield/infinitestudio/ResourceHelper;
.super Ljava/lang/Object;
.source "ResourceHelper.java"


# static fields
.field private static applicationId:Ljava/lang/String;

.field private static res:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dp(F)F
    .locals 2

    .line 28
    sget-object v0, Lcom/brakefield/infinitestudio/ResourceHelper;->res:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static getDrawableId(Ljava/lang/String;)I
    .locals 3

    .line 24
    sget-object v0, Lcom/brakefield/infinitestudio/ResourceHelper;->res:Landroid/content/res/Resources;

    const/4 v1, 0x0

    sget-object v1, Lcom/brakefield/infinitestudio/image/eps/Jpb/CfMJvi;->ETVWUhOqQ:Ljava/lang/String;

    sget-object v2, Lcom/brakefield/infinitestudio/ResourceHelper;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getStringId(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 19
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 20
    :cond_1
    sget-object v0, Lcom/brakefield/infinitestudio/ResourceHelper;->res:Landroid/content/res/Resources;

    const-string/jumbo v1, "string"

    sget-object v2, Lcom/brakefield/infinitestudio/ResourceHelper;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static init(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 0

    .line 13
    sput-object p0, Lcom/brakefield/infinitestudio/ResourceHelper;->res:Landroid/content/res/Resources;

    .line 14
    sput-object p1, Lcom/brakefield/infinitestudio/ResourceHelper;->applicationId:Ljava/lang/String;

    return-void
.end method
