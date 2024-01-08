.class public Lcom/brakefield/painter/ui/viewcontrollers/AboutViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "AboutViewController.java"


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/AboutViewControllerBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    return-void
.end method

.method static synthetic lambda$getView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 3

    const-string p2, ""

    .line 20
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/AboutViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/AboutViewControllerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/AboutViewController;->binding:Lcom/brakefield/painter/databinding/AboutViewControllerBinding;

    .line 22
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/AboutViewController;->binding:Lcom/brakefield/painter/databinding/AboutViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/AboutViewControllerBinding;->blurView:Lcom/brakefield/infinitestudio/ui/blurview/BlurView;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ui/BlurViewHelper;->setupBlurView(Landroid/view/Window;Lcom/brakefield/infinitestudio/ui/blurview/BlurView;)V

    .line 26
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 27
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isBetaVersion()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " Beta"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 32
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/AboutViewController;->binding:Lcom/brakefield/painter/databinding/AboutViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/AboutViewControllerBinding;->versionLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/AboutViewController;->binding:Lcom/brakefield/painter/databinding/AboutViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/AboutViewControllerBinding;->content:Landroid/view/View;

    new-instance p2, Lcom/brakefield/painter/ui/viewcontrollers/AboutViewController$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/brakefield/painter/ui/viewcontrollers/AboutViewController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 36
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/AboutViewController;->binding:Lcom/brakefield/painter/databinding/AboutViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/AboutViewControllerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    return-object p1
.end method
