.class public Lcom/brakefield/painter/PurchaseManager;
.super Ljava/lang/Object;
.source "PurchaseManager.java"


# static fields
.field private static final billingService:Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;

.field private static final byteBot:Lcom/brakefield/painter/billing/ByteBot;

.field private static purchaseFlowInfo:Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$PurchaseFlowInfo;

.field private static purchasePromptShown:Z

.field private static final purchases:Lcom/brakefield/infinitestudio/billing/Purchases;

.field private static showPurhcasePrompt:Z

.field private static final testVersionScopes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/brakefield/painter/billing/PainterVersion;",
            ">;"
        }
    .end annotation
.end field

.field private static trial:Lcom/brakefield/painter/billing/PainterTrial;

.field private static final versionScopes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/brakefield/painter/billing/PainterVersion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/brakefield/painter/PurchaseManager;->versionScopes:Ljava/util/Set;

    .line 50
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/brakefield/painter/PurchaseManager;->testVersionScopes:Ljava/util/Set;

    .line 51
    new-instance v0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;-><init>()V

    sput-object v0, Lcom/brakefield/painter/PurchaseManager;->billingService:Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;

    .line 52
    new-instance v0, Lcom/brakefield/painter/billing/PainterPurchases;

    invoke-direct {v0}, Lcom/brakefield/painter/billing/PainterPurchases;-><init>()V

    sput-object v0, Lcom/brakefield/painter/PurchaseManager;->purchases:Lcom/brakefield/infinitestudio/billing/Purchases;

    .line 53
    new-instance v0, Lcom/brakefield/painter/billing/ByteBot;

    invoke-direct {v0}, Lcom/brakefield/painter/billing/ByteBot;-><init>()V

    sput-object v0, Lcom/brakefield/painter/PurchaseManager;->byteBot:Lcom/brakefield/painter/billing/ByteBot;

    const/4 v0, 0x0

    .line 54
    sput-object v0, Lcom/brakefield/painter/PurchaseManager;->trial:Lcom/brakefield/painter/billing/PainterTrial;

    const/4 v1, 0x0

    .line 56
    sput-boolean v1, Lcom/brakefield/painter/PurchaseManager;->showPurhcasePrompt:Z

    .line 57
    sput-boolean v1, Lcom/brakefield/painter/PurchaseManager;->purchasePromptShown:Z

    .line 59
    sput-object v0, Lcom/brakefield/painter/PurchaseManager;->purchaseFlowInfo:Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$PurchaseFlowInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;)V
    .locals 0

    .line 47
    invoke-static {p0}, Lcom/brakefield/painter/PurchaseManager;->loadCachedPurchases(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100()Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$PurchaseFlowInfo;
    .locals 1

    .line 47
    sget-object v0, Lcom/brakefield/painter/PurchaseManager;->purchaseFlowInfo:Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$PurchaseFlowInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$PurchaseFlowInfo;)Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$PurchaseFlowInfo;
    .locals 0

    .line 47
    sput-object p0, Lcom/brakefield/painter/PurchaseManager;->purchaseFlowInfo:Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$PurchaseFlowInfo;

    return-object p0
.end method

.method public static addVersionScope(Lcom/brakefield/painter/billing/PainterVersion;)V
    .locals 1

    .line 276
    sget-object v0, Lcom/brakefield/painter/PurchaseManager;->versionScopes:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->hasMaster()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lcom/brakefield/painter/PainterLib;->setIsFreeVersion(Z)V

    return-void
.end method

.method public static destroy()V
    .locals 1

    .line 112
    sget-object v0, Lcom/brakefield/painter/PurchaseManager;->billingService:Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->destroy()V

    return-void
.end method

.method public static getBillingServiceName()Ljava/lang/String;
    .locals 1

    .line 302
    sget-object v0, Lcom/brakefield/painter/PurchaseManager;->billingService:Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->getServiceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBillingServiceStatus()Ljava/lang/String;
    .locals 1

    .line 306
    sget-object v0, Lcom/brakefield/painter/PurchaseManager;->billingService:Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->getServiceStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPurchasePrice(Lcom/brakefield/infinitestudio/billing/Sku;)Ljava/lang/String;
    .locals 1

    .line 332
    sget-object v0, Lcom/brakefield/painter/PurchaseManager;->purchases:Lcom/brakefield/infinitestudio/billing/Purchases;

    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/billing/Purchases;->find(Ljava/lang/Object;)Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    move-result-object p0

    .line 333
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/billing/InAppPurchase;->getDetails()Lcom/android/billingclient/api/SkuDetails;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/android/billingclient/api/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "$-.--"

    return-object p0
.end method

.method public static getPurchaseTitle(Lcom/brakefield/infinitestudio/billing/InAppPurchase;)Ljava/lang/String;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/billing/InAppPurchase;->getDetails()Lcom/android/billingclient/api/SkuDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetails;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 324
    :cond_0
    iget-object p0, p0, Lcom/brakefield/infinitestudio/billing/InAppPurchase;->sku:Lcom/brakefield/infinitestudio/billing/Sku;

    .line 325
    sget-object v0, Lcom/brakefield/painter/billing/PainterSku;->MASTER_EDUCATION:Lcom/brakefield/painter/billing/PainterSku;

    if-ne p0, v0, :cond_1

    const-string p0, "Education License"

    return-object p0

    .line 326
    :cond_1
    sget-object v0, Lcom/brakefield/painter/billing/PainterSku;->MASTER_PLAY_SUBSCRIPTION:Lcom/brakefield/painter/billing/PainterSku;

    if-ne p0, v0, :cond_2

    const-string p0, "Play Pass Access"

    return-object p0

    .line 327
    :cond_2
    sget-object v0, Lcom/brakefield/painter/billing/PainterSku;->GRADFATHERED_USER:Lcom/brakefield/painter/billing/PainterSku;

    if-ne p0, v0, :cond_3

    const-string p0, "Infinite Studio Access"

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public static getPurchases()[Lcom/brakefield/infinitestudio/billing/InAppPurchase;
    .locals 7

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 315
    sget-object v1, Lcom/brakefield/painter/PurchaseManager;->purchases:Lcom/brakefield/infinitestudio/billing/Purchases;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/billing/Purchases;->allPurchases:[Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 316
    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/billing/InAppPurchase;->purchased()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-array v1, v3, [Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    .line 318
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    return-object v0
.end method

.method public static getTrial()Lcom/brakefield/painter/billing/PainterTrial;
    .locals 1

    .line 339
    sget-object v0, Lcom/brakefield/painter/PurchaseManager;->trial:Lcom/brakefield/painter/billing/PainterTrial;

    return-object v0
.end method

.method public static hasMaster()Z
    .locals 2

    .line 139
    sget-object v0, Lcom/brakefield/painter/PurchaseManager;->testVersionScopes:Ljava/util/Set;

    sget-object v1, Lcom/brakefield/painter/billing/PainterVersion;->FREE:Lcom/brakefield/painter/billing/PainterVersion;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 142
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->hasMasterPurchase()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->inTrial()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->isDemoUser()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private static hasMasterPurchase()Z
    .locals 13

    .line 150
    sget-object v0, Lcom/brakefield/painter/PurchaseManager;->purchases:Lcom/brakefield/infinitestudio/billing/Purchases;

    sget-object v1, Lcom/brakefield/painter/billing/PainterSku;->MASTER_POST:Lcom/brakefield/painter/billing/PainterSku;

    sget-object v2, Lcom/brakefield/painter/billing/PainterSku;->MASTER_TRIAL:Lcom/brakefield/painter/billing/PainterSku;

    sget-object v3, Lcom/brakefield/painter/billing/PainterSku;->MASTER_PRE:Lcom/brakefield/painter/billing/PainterSku;

    sget-object v4, Lcom/brakefield/painter/billing/PainterSku;->MASTER_EDUCATION:Lcom/brakefield/painter/billing/PainterSku;

    sget-object v5, Lcom/brakefield/painter/billing/PainterSku;->MASTER_PROMO:Lcom/brakefield/painter/billing/PainterSku;

    sget-object v6, Lcom/brakefield/painter/billing/PainterSku;->MASTER_PLAY_SUBSCRIPTION:Lcom/brakefield/painter/billing/PainterSku;

    sget-object v7, Lcom/brakefield/painter/billing/PainterSku;->GRADFATHERED_USER:Lcom/brakefield/painter/billing/PainterSku;

    sget-object v8, Lcom/brakefield/painter/billing/PainterSku;->ESSENTIALS:Lcom/brakefield/painter/billing/PainterSku;

    sget-object v9, Lcom/brakefield/painter/billing/PainterSku;->PERSPECTIVE_GUIDES:Lcom/brakefield/painter/billing/PainterSku;

    sget-object v10, Lcom/brakefield/painter/billing/PainterSku;->DYNAMIC_FILLS:Lcom/brakefield/painter/billing/PainterSku;

    sget-object v11, Lcom/brakefield/painter/billing/PainterSku;->PATTERNS:Lcom/brakefield/painter/billing/PainterSku;

    sget-object v12, Lcom/brakefield/painter/billing/PainterSku;->FILTERS:Lcom/brakefield/painter/billing/PainterSku;

    filled-new-array/range {v1 .. v12}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/billing/Purchases;->isPurchased([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static hasMasterWithoutTrial()Z
    .locals 1

    .line 146
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->hasMaster()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->inTrial()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static inTrial()Z
    .locals 1

    .line 167
    sget-object v0, Lcom/brakefield/painter/billing/PainterVersion;->TRIAL:Lcom/brakefield/painter/billing/PainterVersion;

    invoke-static {v0}, Lcom/brakefield/painter/PurchaseManager;->isVersion(Lcom/brakefield/painter/billing/PainterVersion;)Z

    move-result v0

    return v0
.end method

.method public static init(Landroid/app/Activity;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 64
    sput-boolean p1, Lcom/brakefield/painter/PurchaseManager;->showPurhcasePrompt:Z

    .line 67
    :cond_0
    sget-object p1, Lcom/brakefield/painter/PurchaseManager;->versionScopes:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 68
    invoke-static {p0}, Lcom/brakefield/painter/billing/PainterDemo;->isDemoVersion(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    sget-object v0, Lcom/brakefield/painter/billing/PainterVersion;->DEMO:Lcom/brakefield/painter/billing/PainterVersion;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_1
    new-instance p1, Lcom/brakefield/painter/billing/PainterTrial;

    new-instance v0, Lcom/brakefield/painter/PurchaseManager$1;

    invoke-direct {v0}, Lcom/brakefield/painter/PurchaseManager$1;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/brakefield/painter/billing/PainterTrial;-><init>(Landroid/content/Context;Lcom/brakefield/painter/billing/PainterTrial$Callback;)V

    sput-object p1, Lcom/brakefield/painter/PurchaseManager;->trial:Lcom/brakefield/painter/billing/PainterTrial;

    .line 84
    sget-object p1, Lcom/brakefield/painter/PurchaseManager;->byteBot:Lcom/brakefield/painter/billing/ByteBot;

    sget-object v0, Lcom/brakefield/painter/PurchaseManager;->purchases:Lcom/brakefield/infinitestudio/billing/Purchases;

    invoke-virtual {p1, p0, v0}, Lcom/brakefield/painter/billing/ByteBot;->checkLicenses(Landroid/app/Activity;Lcom/brakefield/infinitestudio/billing/Purchases;)V

    .line 85
    sget-object p1, Lcom/brakefield/painter/PurchaseManager;->billingService:Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;

    new-instance v1, Lcom/brakefield/painter/PurchaseManager$2;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/PurchaseManager$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, p0, v0, v1}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->setup(Landroid/content/Context;Lcom/brakefield/infinitestudio/billing/Purchases;Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$BillingListener;)V

    return-void
.end method

.method public static isBillingUnavailable()Z
    .locals 1

    .line 310
    sget-object v0, Lcom/brakefield/painter/PurchaseManager;->billingService:Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->isUnavailable()Z

    move-result v0

    return v0
.end method

.method public static isDemoUser()Z
    .locals 1

    .line 168
    sget-object v0, Lcom/brakefield/painter/billing/PainterVersion;->DEMO:Lcom/brakefield/painter/billing/PainterVersion;

    invoke-static {v0}, Lcom/brakefield/painter/PurchaseManager;->isVersion(Lcom/brakefield/painter/billing/PainterVersion;)Z

    move-result v0

    return v0
.end method

.method public static isEducationVersion()Z
    .locals 1

    .line 169
    sget-object v0, Lcom/brakefield/painter/billing/PainterVersion;->EDUCATION:Lcom/brakefield/painter/billing/PainterVersion;

    invoke-static {v0}, Lcom/brakefield/painter/PurchaseManager;->isVersion(Lcom/brakefield/painter/billing/PainterVersion;)Z

    move-result v0

    return v0
.end method

.method public static isTestingVersionScope(Lcom/brakefield/painter/billing/PainterVersion;)Z
    .locals 1

    .line 292
    sget-object v0, Lcom/brakefield/painter/PurchaseManager;->testVersionScopes:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isVersion(Lcom/brakefield/painter/billing/PainterVersion;)Z
    .locals 1

    .line 165
    sget-object v0, Lcom/brakefield/painter/PurchaseManager;->versionScopes:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/brakefield/painter/PurchaseManager;->testVersionScopes:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$loadCachedPurchases$0(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "On app launch"

    .line 133
    invoke-static {p0, v0}, Lcom/brakefield/painter/PurchaseManager;->showPurchaseSplash(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$refreshView$2(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 221
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 222
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    .line 223
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 224
    new-instance p1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 225
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method static synthetic lambda$unlock$1(Landroid/view/View$OnClickListener;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 189
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$updatePurchasesFromUserAccount$3(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 270
    sget-object v0, Lcom/brakefield/painter/billing/PainterSku;->MASTER_PRE:Lcom/brakefield/painter/billing/PainterSku;

    invoke-static {p0, v0, p1}, Lcom/brakefield/painter/PurchaseManager;->unlock(Landroid/content/Context;Lcom/brakefield/painter/billing/PainterSku;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static loadCachedPurchases(Landroid/app/Activity;)V
    .locals 4

    .line 116
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->hasMasterWithoutTrial()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getUserSession()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;-><init>(J)V

    .line 118
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 119
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/PurchaseManager;->updatePurchasesFromUserAccount(Landroid/app/Activity;Landroid/view/View$OnClickListener;Z)V

    .line 123
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->hasMasterPurchase()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    sget-object v0, Lcom/brakefield/painter/PurchaseManager;->trial:Lcom/brakefield/painter/billing/PainterTrial;

    invoke-virtual {v0}, Lcom/brakefield/painter/billing/PainterTrial;->getCurrentState()Lcom/brakefield/painter/billing/PainterTrial$TrialState;

    move-result-object v0

    sget-object v2, Lcom/brakefield/painter/billing/PainterTrial$TrialState;->RUNNING:Lcom/brakefield/painter/billing/PainterTrial$TrialState;

    if-ne v0, v2, :cond_1

    .line 125
    sget-object v0, Lcom/brakefield/painter/billing/PainterVersion;->TRIAL:Lcom/brakefield/painter/billing/PainterVersion;

    invoke-static {v0}, Lcom/brakefield/painter/PurchaseManager;->addVersionScope(Lcom/brakefield/painter/billing/PainterVersion;)V

    .line 129
    :cond_1
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->hasMasterWithoutTrial()Z

    move-result v0

    if-nez v0, :cond_2

    .line 130
    sget-boolean v0, Lcom/brakefield/painter/PurchaseManager;->showPurhcasePrompt:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/brakefield/painter/PurchaseManager;->purchasePromptShown:Z

    if-nez v0, :cond_2

    .line 131
    sput-boolean v1, Lcom/brakefield/painter/PurchaseManager;->showPurhcasePrompt:Z

    const/4 v0, 0x1

    .line 132
    sput-boolean v0, Lcom/brakefield/painter/PurchaseManager;->purchasePromptShown:Z

    .line 133
    new-instance v0, Lcom/brakefield/painter/PurchaseManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/PurchaseManager$$ExternalSyntheticLambda3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public static promptPurchase(Landroid/app/Activity;Lcom/brakefield/painter/billing/PainterSku;Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$PurchaseFlowInfo;)V
    .locals 0

    .line 172
    sput-object p2, Lcom/brakefield/painter/PurchaseManager;->purchaseFlowInfo:Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$PurchaseFlowInfo;

    .line 173
    sget-object p2, Lcom/brakefield/painter/PurchaseManager;->billingService:Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;

    invoke-virtual {p1}, Lcom/brakefield/painter/billing/PainterSku;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->requestPurchase(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static refreshView(Landroid/view/View;Lcom/brakefield/painter/billing/PainterSku;Landroid/app/Dialog;)V
    .locals 6

    .line 195
    sget-object v0, Lcom/brakefield/painter/PurchaseManager;->purchases:Lcom/brakefield/infinitestudio/billing/Purchases;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/billing/Purchases;->find(Ljava/lang/Object;)Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 197
    :cond_0
    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/billing/Purchases;->find(Ljava/lang/Object;)Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/billing/InAppPurchase;->getDetails()Lcom/android/billingclient/api/SkuDetails;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_1

    .line 205
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "(Infinite Painter)"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getDescription()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    move-object v1, p1

    :goto_0
    const v2, 0x7f0a02c2

    .line 210
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f080490

    .line 211
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    invoke-static {v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    if-eqz p2, :cond_2

    .line 215
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "You have unlocked the "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " Pack."

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 217
    new-instance v3, Landroid/animation/FloatEvaluator;

    invoke-direct {v3}, Landroid/animation/FloatEvaluator;-><init>()V

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0xfa0

    .line 218
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 219
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 220
    new-instance v4, Lcom/brakefield/painter/PurchaseManager$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2}, Lcom/brakefield/painter/PurchaseManager$$ExternalSyntheticLambda2;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 228
    new-instance v2, Lcom/brakefield/painter/PurchaseManager$3;

    invoke-direct {v2, p2}, Lcom/brakefield/painter/PurchaseManager$3;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 237
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    const p2, 0x7f0a062f

    .line 240
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 241
    invoke-virtual {p2, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a045e

    .line 243
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 244
    invoke-virtual {p2, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a045f

    .line 246
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const/16 v1, 0x8

    .line 247
    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    const v0, 0x7f0a019a

    .line 249
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 250
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setTextColor(I)V

    .line 251
    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f1209cb

    .line 253
    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a04aa

    .line 255
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x4

    .line 256
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static removeVersionScope(Lcom/brakefield/painter/billing/PainterVersion;)V
    .locals 1

    .line 281
    sget-object v0, Lcom/brakefield/painter/PurchaseManager;->versionScopes:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 282
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->hasMaster()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lcom/brakefield/painter/PainterLib;->setIsFreeVersion(Z)V

    return-void
.end method

.method public static showPurchaseSplash(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 296
    new-instance v0, Lcom/brakefield/painter/billing/PurchaseDialog;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;

    invoke-direct {v1, p1}, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/brakefield/painter/billing/PurchaseDialog;-><init>(Landroid/app/Activity;Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;)V

    .line 297
    invoke-virtual {v0}, Lcom/brakefield/painter/billing/PurchaseDialog;->show()V

    return-void
.end method

.method public static varargs testVersionScopes([Lcom/brakefield/painter/billing/PainterVersion;)V
    .locals 1

    .line 286
    sget-object v0, Lcom/brakefield/painter/PurchaseManager;->testVersionScopes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 287
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 288
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->hasMaster()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lcom/brakefield/painter/PainterLib;->setIsFreeVersion(Z)V

    return-void
.end method

.method public static unlock(Landroid/content/Context;Lcom/brakefield/painter/billing/PainterSku;Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 178
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d013a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 180
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v1, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 181
    invoke-virtual {v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 183
    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 184
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 186
    invoke-static {v0, p1, p0}, Lcom/brakefield/painter/PurchaseManager;->refreshView(Landroid/view/View;Lcom/brakefield/painter/billing/PainterSku;Landroid/app/Dialog;)V

    if-eqz p2, :cond_0

    .line 189
    new-instance p1, Lcom/brakefield/painter/PurchaseManager$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2}, Lcom/brakefield/painter/PurchaseManager$$ExternalSyntheticLambda1;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method public static updatePurchasesFromUserAccount(Landroid/app/Activity;Landroid/view/View$OnClickListener;Z)V
    .locals 3

    .line 261
    new-instance v0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getUserSession()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;-><init>(J)V

    .line 262
    sget-object v1, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;->PAINTER:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->hasFullVersion(Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;)Z

    move-result v0

    .line 264
    sget-object v1, Lcom/brakefield/painter/PurchaseManager;->purchases:Lcom/brakefield/infinitestudio/billing/Purchases;

    sget-object v2, Lcom/brakefield/painter/billing/PainterSku;->GRADFATHERED_USER:Lcom/brakefield/painter/billing/PainterSku;

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/billing/Purchases;->find(Ljava/lang/Object;)Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/billing/InAppPurchase;->update(Z)V

    xor-int/lit8 v1, v0, 0x1

    .line 265
    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->setIsFreeVersion(Z)V

    if-eqz v0, :cond_0

    .line 268
    sget-object v0, Lcom/brakefield/painter/PurchaseManager;->versionScopes:Ljava/util/Set;

    sget-object v1, Lcom/brakefield/painter/billing/PainterVersion;->TRIAL:Lcom/brakefield/painter/billing/PainterVersion;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 270
    new-instance p2, Lcom/brakefield/painter/PurchaseManager$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/brakefield/painter/PurchaseManager$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
