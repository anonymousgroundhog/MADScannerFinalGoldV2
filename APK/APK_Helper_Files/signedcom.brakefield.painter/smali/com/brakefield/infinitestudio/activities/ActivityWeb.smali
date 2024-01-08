.class public Lcom/brakefield/infinitestudio/activities/ActivityWeb;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ActivityWeb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/activities/ActivityWeb$CustomWebChromeClient;
    }
.end annotation


# static fields
.field public static final EXTRA_SHOW_BACK_NAVIGATION:Ljava/lang/String; = "EXTRA_SHOW_BACK_NAVIGATION"

.field public static final EXTRA_WEBSITE_URL:Ljava/lang/String; = "EXTRA_WEBSITE_URL"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private checkNetworkOrNotifyUser()V
    .locals 3

    .line 70
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/activities/ActivityWeb;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ActivityWeb;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/brakefield/infinitestudio/R$string;->no_internet_connection:I

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private isNetworkAvailable()Z
    .locals 1

    const-string v0, "connectivity"

    .line 74
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/activities/ActivityWeb;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 75
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-brakefield-infinitestudio-activities-ActivityWeb(Landroid/view/View;)V
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ActivityWeb;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 32
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {p0}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->init(Landroid/app/Activity;)V

    .line 36
    sget p1, Lcom/brakefield/infinitestudio/R$layout;->activity_web_view:I

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/ActivityWeb;->setContentView(I)V

    .line 38
    sget p1, Lcom/brakefield/infinitestudio/R$id;->back:I

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/ActivityWeb;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    const/4 v0, 0x1

    .line 39
    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setShadow(Z)V

    .line 40
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 41
    new-instance v1, Lcom/brakefield/infinitestudio/activities/ActivityWeb$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/activities/ActivityWeb$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/activities/ActivityWeb;)V

    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    sget v1, Lcom/brakefield/infinitestudio/R$id;->background:I

    invoke-virtual {p0, v1}, Lcom/brakefield/infinitestudio/activities/ActivityWeb;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 44
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getBackgroundColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 46
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ActivityWeb;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_WEBSITE_URL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ActivityWeb;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_SHOW_BACK_NAVIGATION"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    invoke-virtual {p1, v4}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setVisibility(I)V

    .line 51
    :cond_0
    sget p1, Lcom/brakefield/infinitestudio/R$id;->web_view:I

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/ActivityWeb;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    .line 52
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->clearCache(Z)V

    const/high16 v2, -0x1000000

    .line 53
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 54
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 55
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 56
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 57
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 58
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 59
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 60
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 61
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 62
    new-instance v0, Landroid/webkit/WebViewClient;

    invoke-direct {v0}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 63
    new-instance v0, Lcom/brakefield/infinitestudio/activities/ActivityWeb$CustomWebChromeClient;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/brakefield/infinitestudio/activities/ActivityWeb$CustomWebChromeClient;-><init>(Lcom/brakefield/infinitestudio/activities/ActivityWeb;Lcom/brakefield/infinitestudio/activities/ActivityWeb$1;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 64
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/activities/ActivityWeb;->checkNetworkOrNotifyUser()V

    return-void
.end method
