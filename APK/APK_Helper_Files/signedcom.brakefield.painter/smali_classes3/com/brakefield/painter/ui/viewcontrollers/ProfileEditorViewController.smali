.class public Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "ProfileEditorViewController.java"


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    return-void
.end method

.method static synthetic lambda$getView$0(Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    if-eqz p1, :cond_0

    .line 32
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/view/View;
    .locals 2

    .line 22
    move-object v0, p2

    check-cast v0, Lcom/brakefield/painter/ui/ProfileView;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/ProfileView;->getProfile()Lcom/brakefield/painter/nativeobjs/ProfileNative;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/ProfileNative;->getPointer()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/brakefield/painter/PainterLib;->editProfile(J)V

    .line 25
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;->binding:Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;

    .line 27
    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->inputLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {p1, p3}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;->binding:Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->outputLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {p1, p4}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;->binding:Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->profileEditor:Lcom/brakefield/painter/ui/ProfileEditorView;

    new-instance p3, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2, p5}, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p3}, Lcom/brakefield/painter/ui/ProfileEditorView;->setUpdateListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;->binding:Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->curvesLinear:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 36
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;->binding:Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->curvesLinear:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 37
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;->binding:Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->curvesLinear:Landroid/widget/ImageView;

    new-instance p3, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p2, p5}, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;->binding:Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->curvesAccel:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 45
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;->binding:Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->curvesAccel:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 46
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;->binding:Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->curvesAccel:Landroid/widget/ImageView;

    new-instance p3, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p2, p5}, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;->binding:Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->curvesDecel:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 54
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;->binding:Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->curvesDecel:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 55
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;->binding:Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->curvesDecel:Landroid/widget/ImageView;

    new-instance p3, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0, p2, p5}, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;->binding:Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->curvesHighContrast:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 63
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;->binding:Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->curvesHighContrast:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 64
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;->binding:Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->curvesHighContrast:Landroid/widget/ImageView;

    new-instance p3, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0, p2, p5}, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;->binding:Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->curvesLowContrast:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 72
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;->binding:Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->curvesLowContrast:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 73
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;->binding:Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->curvesLowContrast:Landroid/widget/ImageView;

    new-instance p3, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0, p2, p5}, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;->binding:Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->profileInvert:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 81
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;->binding:Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->profileInvert:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 82
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;->binding:Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->profileInvert:Landroid/widget/ImageView;

    new-instance p3, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0, p2, p5}, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;->binding:Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getView$1$com-brakefield-painter-ui-viewcontrollers-ProfileEditorViewController(Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p3, 0x0

    .line 38
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->setProfileTemplate(I)V

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 40
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;->binding:Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->profileEditor:Lcom/brakefield/painter/ui/ProfileEditorView;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/ProfileEditorView;->postInvalidate()V

    if-eqz p2, :cond_0

    .line 41
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method synthetic lambda$getView$2$com-brakefield-painter-ui-viewcontrollers-ProfileEditorViewController(Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p3, 0x1

    .line 47
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->setProfileTemplate(I)V

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 49
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;->binding:Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->profileEditor:Lcom/brakefield/painter/ui/ProfileEditorView;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/ProfileEditorView;->postInvalidate()V

    if-eqz p2, :cond_0

    .line 50
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method synthetic lambda$getView$3$com-brakefield-painter-ui-viewcontrollers-ProfileEditorViewController(Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p3, 0x2

    .line 56
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->setProfileTemplate(I)V

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 58
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;->binding:Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->profileEditor:Lcom/brakefield/painter/ui/ProfileEditorView;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/ProfileEditorView;->postInvalidate()V

    if-eqz p2, :cond_0

    .line 59
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method synthetic lambda$getView$4$com-brakefield-painter-ui-viewcontrollers-ProfileEditorViewController(Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p3, 0x3

    .line 65
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->setProfileTemplate(I)V

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 67
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;->binding:Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->profileEditor:Lcom/brakefield/painter/ui/ProfileEditorView;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/ProfileEditorView;->postInvalidate()V

    if-eqz p2, :cond_0

    .line 68
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method synthetic lambda$getView$5$com-brakefield-painter-ui-viewcontrollers-ProfileEditorViewController(Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p3, 0x4

    .line 74
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->setProfileTemplate(I)V

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 76
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;->binding:Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->profileEditor:Lcom/brakefield/painter/ui/ProfileEditorView;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/ProfileEditorView;->postInvalidate()V

    if-eqz p2, :cond_0

    .line 77
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method synthetic lambda$getView$6$com-brakefield-painter-ui-viewcontrollers-ProfileEditorViewController(Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 83
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->profileInvert()V

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 85
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;->binding:Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->profileEditor:Lcom/brakefield/painter/ui/ProfileEditorView;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/ProfileEditorView;->postInvalidate()V

    if-eqz p2, :cond_0

    .line 86
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
