.class Lcom/brakefield/infinitestudio/activities/ActivityWeb$CustomWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "ActivityWeb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/ActivityWeb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomWebChromeClient"
.end annotation


# instance fields
.field private customView:Landroid/view/View;

.field private customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private originalOrientation:I

.field private originalSystemUiVisibility:I

.field final synthetic this$0:Lcom/brakefield/infinitestudio/activities/ActivityWeb;


# direct methods
.method private constructor <init>(Lcom/brakefield/infinitestudio/activities/ActivityWeb;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/ActivityWeb$CustomWebChromeClient;->this$0:Lcom/brakefield/infinitestudio/activities/ActivityWeb;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/infinitestudio/activities/ActivityWeb;Lcom/brakefield/infinitestudio/activities/ActivityWeb$1;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/activities/ActivityWeb$CustomWebChromeClient;-><init>(Lcom/brakefield/infinitestudio/activities/ActivityWeb;)V

    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityWeb$CustomWebChromeClient;->this$0:Lcom/brakefield/infinitestudio/activities/ActivityWeb;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/activities/ActivityWeb;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ActivityWeb$CustomWebChromeClient;->customView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityWeb$CustomWebChromeClient;->customView:Landroid/view/View;

    .line 93
    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ActivityWeb$CustomWebChromeClient;->this$0:Lcom/brakefield/infinitestudio/activities/ActivityWeb;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/activities/ActivityWeb;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/brakefield/infinitestudio/activities/ActivityWeb$CustomWebChromeClient;->originalSystemUiVisibility:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 94
    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ActivityWeb$CustomWebChromeClient;->this$0:Lcom/brakefield/infinitestudio/activities/ActivityWeb;

    iget v2, p0, Lcom/brakefield/infinitestudio/activities/ActivityWeb$CustomWebChromeClient;->originalOrientation:I

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/activities/ActivityWeb;->setRequestedOrientation(I)V

    .line 95
    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ActivityWeb$CustomWebChromeClient;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v1}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 96
    iput-object v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityWeb$CustomWebChromeClient;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityWeb$CustomWebChromeClient;->customView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ActivityWeb$CustomWebChromeClient;->onHideCustomView()V

    return-void

    .line 104
    :cond_0
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/ActivityWeb$CustomWebChromeClient;->customView:Landroid/view/View;

    .line 105
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ActivityWeb$CustomWebChromeClient;->this$0:Lcom/brakefield/infinitestudio/activities/ActivityWeb;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/ActivityWeb;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/activities/ActivityWeb$CustomWebChromeClient;->originalSystemUiVisibility:I

    .line 106
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ActivityWeb$CustomWebChromeClient;->this$0:Lcom/brakefield/infinitestudio/activities/ActivityWeb;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/ActivityWeb;->getRequestedOrientation()I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/activities/ActivityWeb$CustomWebChromeClient;->originalOrientation:I

    .line 107
    iput-object p2, p0, Lcom/brakefield/infinitestudio/activities/ActivityWeb$CustomWebChromeClient;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 108
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ActivityWeb$CustomWebChromeClient;->this$0:Lcom/brakefield/infinitestudio/activities/ActivityWeb;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/ActivityWeb;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/brakefield/infinitestudio/activities/ActivityWeb$CustomWebChromeClient;->customView:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ActivityWeb$CustomWebChromeClient;->this$0:Lcom/brakefield/infinitestudio/activities/ActivityWeb;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/ActivityWeb;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x104

    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
