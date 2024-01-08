.class public Lcom/brakefield/painter/billing/ByteBot;
.super Ljava/lang/Object;
.source "ByteBot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/billing/ByteBot$ByteBotAsyncTask;,
        Lcom/brakefield/painter/billing/ByteBot$ByteBotCallback;
    }
.end annotation


# static fields
.field private static final APP_NAME:Ljava/lang/String; = "applications/infinitepainter"

.field private static final OAUTH_SCOPE:Ljava/lang/String; = "https://www.googleapis.com/auth/applicense.bytebot"

.field public static final PREF_IAP_MASTER_EDUCATION:Ljava/lang/String; = "PREF_IAP_MASTER_EDUCATION"

.field public static final PREF_PAINTER_FOR_EDUCATION:Ljava/lang/String; = "PREF_PAINTER_FOR_EDUCATION"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private signInCurrentUserAsync(Landroid/app/Activity;Lcom/brakefield/infinitestudio/billing/Purchases;)V
    .locals 5

    .line 109
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_PAINTER_FOR_EDUCATION"

    const/4 v2, 0x0

    .line 110
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    sget-object v1, Lcom/brakefield/painter/billing/PainterVersion;->EDUCATION:Lcom/brakefield/painter/billing/PainterVersion;

    invoke-static {v1}, Lcom/brakefield/painter/PurchaseManager;->addVersionScope(Lcom/brakefield/painter/billing/PainterVersion;)V

    .line 113
    :cond_0
    new-instance v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>()V

    .line 114
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/common/api/Scope;

    const-string v4, "https://www.googleapis.com/auth/applicense.bytebot"

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    .line 115
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestScopes(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v1

    .line 117
    invoke-static {p1, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->silentSignIn()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/billing/ByteBot$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/brakefield/painter/billing/ByteBot$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/billing/ByteBot;Landroid/content/SharedPreferences;Landroid/app/Activity;Lcom/brakefield/infinitestudio/billing/Purchases;)V

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public checkLicenses(Landroid/app/Activity;Lcom/brakefield/infinitestudio/billing/Purchases;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/billing/ByteBot;->signInCurrentUserAsync(Landroid/app/Activity;Lcom/brakefield/infinitestudio/billing/Purchases;)V

    return-void
.end method

.method synthetic lambda$signInCurrentUserAsync$0$com-brakefield-painter-billing-ByteBot(Lcom/brakefield/infinitestudio/billing/Purchases;Landroid/content/SharedPreferences;ZLjava/lang/String;)V
    .locals 0

    .line 128
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/brakefield/painter/billing/ByteBot;->updateEducationLicense(Lcom/brakefield/infinitestudio/billing/Purchases;Landroid/content/SharedPreferences;ZLjava/lang/String;)V

    return-void
.end method

.method synthetic lambda$signInCurrentUserAsync$1$com-brakefield-painter-billing-ByteBot(Landroid/content/SharedPreferences;Landroid/app/Activity;Lcom/brakefield/infinitestudio/billing/Purchases;Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    .line 120
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lcom/brakefield/painter/billing/PainterVersion;->EDUCATION:Lcom/brakefield/painter/billing/PainterVersion;

    invoke-static {v0}, Lcom/brakefield/painter/PurchaseManager;->addVersionScope(Lcom/brakefield/painter/billing/PainterVersion;)V

    .line 122
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREF_PAINTER_FOR_EDUCATION"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 128
    new-instance v0, Lcom/brakefield/painter/billing/ByteBot$ByteBotAsyncTask;

    new-instance v1, Lcom/brakefield/painter/billing/ByteBot$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p3, p1}, Lcom/brakefield/painter/billing/ByteBot$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/billing/ByteBot;Lcom/brakefield/infinitestudio/billing/Purchases;Landroid/content/SharedPreferences;)V

    invoke-direct {v0, p4, p2, v1}, Lcom/brakefield/painter/billing/ByteBot$ByteBotAsyncTask;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Landroid/content/Context;Lcom/brakefield/painter/billing/ByteBot$ByteBotCallback;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/billing/ByteBot$ByteBotAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public updateEducationLicense(Lcom/brakefield/infinitestudio/billing/Purchases;Landroid/content/SharedPreferences;ZLjava/lang/String;)V
    .locals 0

    .line 134
    sget-object p4, Lcom/brakefield/painter/billing/PainterSku;->MASTER_EDUCATION:Lcom/brakefield/painter/billing/PainterSku;

    invoke-virtual {p1, p4}, Lcom/brakefield/infinitestudio/billing/Purchases;->find(Ljava/lang/Object;)Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/brakefield/infinitestudio/billing/InAppPurchase;->update(Z)V

    .line 135
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "PREF_IAP_MASTER_EDUCATION"

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->hasMaster()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setIsFreeVersion(Z)V

    return-void
.end method
