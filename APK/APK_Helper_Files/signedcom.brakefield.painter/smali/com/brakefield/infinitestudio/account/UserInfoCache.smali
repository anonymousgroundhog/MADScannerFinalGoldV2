.class public Lcom/brakefield/infinitestudio/account/UserInfoCache;
.super Ljava/lang/Object;
.source "UserInfoCache.java"


# static fields
.field private static final PREF_CREATED_AT:Ljava/lang/String; = "PREF_ACCOUNT_CREATED_AT"

.field private static final PREF_DESIGN_PURCHASED:Ljava/lang/String; = "PREF_ACCOUNT_DESIGN_PURCHASED"

.field private static final PREF_DIRECTORY:Ljava/lang/String; = "PREF_ACCOUNT_DIRECTORY"

.field private static final PREF_EMAIL:Ljava/lang/String; = "PREF_ACCOUNT_EMAIL"

.field private static final PREF_NAME:Ljava/lang/String; = "PREF_ACCOUNT_NAME"

.field private static final PREF_PAINTER_BETA_TESTER:Ljava/lang/String; = "PREF_ACCOUNT_PAINTER_BETA_TESTER"

.field private static final PREF_PAINTER_PURCHASED:Ljava/lang/String; = "PREF_ACCOUNT_PAINTER_PURCHASED"

.field private static final PREF_PASSWORD:Ljava/lang/String; = "PREF_ACCOUNT_PASSWORD"

.field private static final PREF_USER_ID:Ljava/lang/String; = "PREF_ACCOUNT_UID"

.field private static final PREF_USER_INFO:Ljava/lang/String; = "PREF_ACCOUNT_USER_INFO"


# instance fields
.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/UserInfoCache;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "PREF_ACCOUNT_PASSWORD"

    .line 27
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/account/UserInfoCache;->clearInfo()V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearInfo()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/brakefield/infinitestudio/account/UserInfoCache;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREF_ACCOUNT_USER_INFO"

    .line 34
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "PREF_ACCOUNT_NAME"

    .line 35
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "PREF_ACCOUNT_EMAIL"

    .line 36
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "PREF_ACCOUNT_PASSWORD"

    .line 37
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "PREF_ACCOUNT_UID"

    .line 38
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "PREF_ACCOUNT_CREATED_AT"

    .line 39
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "PREF_ACCOUNT_DIRECTORY"

    .line 40
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    sget-object v1, Lcom/google/android/exoplayer2/upstream/cache/lCg/RbrVQrmMpaaGj;->IaqH:Ljava/lang/String;

    .line 41
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "PREF_ACCOUNT_PAINTER_BETA_TESTER"

    .line 42
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "PREF_ACCOUNT_DESIGN_PURCHASED"

    .line 43
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 44
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public fetchInfo()Ljava/lang/String;
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/brakefield/infinitestudio/account/UserInfoCache;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "PREF_ACCOUNT_USER_INFO"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public storeInfo(Ljava/lang/String;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/brakefield/infinitestudio/account/UserInfoCache;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREF_ACCOUNT_USER_INFO"

    .line 49
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
