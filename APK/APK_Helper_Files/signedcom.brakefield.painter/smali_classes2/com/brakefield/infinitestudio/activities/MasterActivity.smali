.class public abstract Lcom/brakefield/infinitestudio/activities/MasterActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MasterActivity.java"


# instance fields
.field private binding:Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private getMasterContentView()Landroid/view/View;
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/MasterActivity;->binding:Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->back:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 61
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/MasterActivity;->binding:Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->back:Landroid/widget/ImageView;

    new-instance v1, Lcom/brakefield/infinitestudio/activities/MasterActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/activities/MasterActivity$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/activities/MasterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/MasterActivity;->binding:Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->back:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getTopBarIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 64
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/MasterActivity;->binding:Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->background:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    .line 66
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/MasterActivity;->binding:Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getTopBarIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setTextColor(I)V

    .line 67
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/MasterActivity;->binding:Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/MasterActivity;->getTitleText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/MasterActivity;->hasTabs()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/MasterActivity;->binding:Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->titleTabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setVisibility(I)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/MasterActivity;->binding:Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->mainContent:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/activities/MasterActivity;->bindMainContent(Landroid/view/ViewGroup;)V

    .line 73
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/MasterActivity;->binding:Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->titleTabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getTopBarColor()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->setBackgroundColor(I)V

    .line 75
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/MasterActivity;->hasTabs()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/MasterActivity;->binding:Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->titleTabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setVisibility(I)V

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/MasterActivity;->binding:Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected addTitleBarContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/MasterActivity;->binding:Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->titleBarContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected abstract bindMainContent(Landroid/view/ViewGroup;)V
.end method

.method protected getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/MasterActivity;->binding:Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->background:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method protected getTabs()Lcom/google/android/material/tabs/TabLayout;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/MasterActivity;->binding:Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->titleTabs:Lcom/google/android/material/tabs/TabLayout;

    return-object v0
.end method

.method protected abstract getTitleText()Ljava/lang/String;
.end method

.method protected hasTabs()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$getMasterContentView$0$com-brakefield-infinitestudio-activities-MasterActivity(Landroid/view/View;)V
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/MasterActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 36
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-static {p0}, Lcom/brakefield/infinitestudio/Strings;->init(Landroid/content/Context;)V

    .line 39
    invoke-static {p0}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->init(Landroid/app/Activity;)V

    .line 41
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/MasterActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/MasterActivity;->binding:Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;

    .line 43
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/MasterActivity;->hasTabs()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/MasterActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/MasterActivity;->binding:Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->blurView:Lcom/brakefield/infinitestudio/ui/blurview/BlurView;

    invoke-static {p1, v1}, Lcom/brakefield/infinitestudio/ui/BlurViewHelper;->setupBlurView(Landroid/view/Window;Lcom/brakefield/infinitestudio/ui/blurview/BlurView;)V

    .line 45
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/MasterActivity;->binding:Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->titleBarSeparator:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 46
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/MasterActivity;->binding:Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->titleBar:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/MasterActivity;->binding:Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->titleBar:Landroid/view/View;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getBackgroundColor()I

    move-result v1

    const v2, 0x3f666666    # 0.9f

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getTopFadeGradient(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 49
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/MasterActivity;->binding:Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->blurView:Lcom/brakefield/infinitestudio/ui/blurview/BlurView;

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/blurview/BlurView;->setBlurEnabled(Z)Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;

    .line 50
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/MasterActivity;->binding:Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->titleBarSeparator:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 53
    :goto_0
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/activities/MasterActivity;->getMasterContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/MasterActivity;->setContentView(Landroid/view/View;)V

    .line 55
    invoke-static {p0}, Lcom/brakefield/infinitestudio/ChromebookUtils;->isChromebook(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/MasterActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 83
    invoke-static {p0}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->handleFullscreen(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
