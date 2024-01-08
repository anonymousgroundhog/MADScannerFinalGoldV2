.class public abstract Lcom/brakefield/infinitestudio/Main;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Main.java"


# static fields
.field public static final PREF_PROJECT_NAME:Ljava/lang/String; = "PREF_PROJECT_NAME"

.field public static final REQUEST_CODE_SETTINGS:I = 0x8

.field public static handler:Landroid/os/Handler;

.field public static prefs:Landroid/content/SharedPreferences;

.field public static projectName:Ljava/lang/String;

.field public static res:Landroid/content/res/Resources;


# instance fields
.field public controls:Lcom/brakefield/infinitestudio/MainControls;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract back()Z
.end method

.method public abstract getContentView()Landroid/view/View;
.end method

.method public abstract getMainControls()Lcom/brakefield/infinitestudio/MainControls;
.end method

.method public handleMessageCall(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public abstract launchExitOptions()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 35
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-static {p0}, Lcom/brakefield/infinitestudio/ChromebookUtils;->isChromebook(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/Main;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/Main;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sput-object p1, Lcom/brakefield/infinitestudio/Main;->res:Landroid/content/res/Resources;

    .line 43
    invoke-static {p0}, Lcom/brakefield/infinitestudio/Strings;->init(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    sput-object p1, Lcom/brakefield/infinitestudio/Main;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "PREF_PROJECT_NAME"

    const/4 v1, 0x0

    .line 47
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/brakefield/infinitestudio/Main;->projectName:Ljava/lang/String;

    .line 49
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 50
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/Main;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 51
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 52
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 54
    sput v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    .line 55
    sput p1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    .line 57
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/Main;->getMainControls()Lcom/brakefield/infinitestudio/MainControls;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/Main;->controls:Lcom/brakefield/infinitestudio/MainControls;

    .line 59
    invoke-static {p0}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->init(Landroid/app/Activity;)V

    .line 61
    invoke-static {}, Lcom/brakefield/infinitestudio/utils/Debugger;->startTracking()V

    .line 62
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/Main;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/Main;->setContentView(Landroid/view/View;)V

    const-string p1, "LOAD MAIN"

    .line 63
    invoke-static {p1}, Lcom/brakefield/infinitestudio/utils/Debugger;->stopTracking(Ljava/lang/String;)J

    .line 65
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/Main;->setup()V

    .line 66
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/Main;->setupHandler()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    .line 142
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    .line 155
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 152
    :cond_0
    sget-object p1, Lcom/brakefield/infinitestudio/Main;->handler:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v1

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/Main;->back()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/Main;->launchExitOptions()V

    :cond_2
    return v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 161
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 162
    invoke-static {p0}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->handleFullscreen(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public abstract setup()V
.end method

.method public setupHandler()V
    .locals 1

    .line 73
    new-instance v0, Lcom/brakefield/infinitestudio/Main$1;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/Main$1;-><init>(Lcom/brakefield/infinitestudio/Main;)V

    sput-object v0, Lcom/brakefield/infinitestudio/Main;->handler:Landroid/os/Handler;

    return-void
.end method
