.class public abstract Lcom/brakefield/painter/brushes/settings/BrushSettings;
.super Ljava/lang/Object;
.source "BrushSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static editProfile(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 73
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;-><init>()V

    .line 74
    new-instance v5, Lcom/brakefield/painter/brushes/settings/BrushSettings$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/brakefield/painter/brushes/settings/BrushSettings$$ExternalSyntheticLambda0;-><init>()V

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/brakefield/painter/ui/viewcontrollers/ProfileEditorViewController;->getView(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object p3

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1, p0, p3, p2}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 79
    :cond_0
    new-instance p1, Lcom/brakefield/infinitestudio/CustomDialog;

    invoke-direct {p1, p0}, Lcom/brakefield/infinitestudio/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 80
    invoke-virtual {p1, p0, p3, p2}, Lcom/brakefield/infinitestudio/CustomDialog;->popup(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)Landroid/widget/PopupWindow;

    :goto_0
    return-void
.end method

.method static synthetic lambda$setupProfileCurve$0(Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;Lcom/brakefield/painter/databinding/ProfileCurveBinding;Landroid/view/View;)V
    .locals 0

    .line 52
    invoke-interface {p0}, Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;->isActive()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 53
    invoke-interface {p0, p2}, Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;->setActive(Z)V

    .line 54
    iget-object p0, p1, Lcom/brakefield/painter/databinding/ProfileCurveBinding;->activeToggle:Landroid/widget/Button;

    check-cast p0, Lcom/google/android/material/button/MaterialButton;

    invoke-static {p0, p2}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->themeToggleButton(Lcom/google/android/material/button/MaterialButton;Z)V

    .line 55
    iget-object p0, p1, Lcom/brakefield/painter/databinding/ProfileCurveBinding;->curveView:Lcom/brakefield/painter/ui/ProfileView;

    if-eqz p2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3e4ccccd    # 0.2f

    :goto_0
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/ProfileView;->setAlpha(F)V

    .line 56
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method static synthetic lambda$setupProfileCurve$1(Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;ILandroid/view/View;)V
    .locals 1

    .line 65
    invoke-interface {p0}, Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {p0}, Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;->getModifierName()I

    move-result p0

    invoke-static {p0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p4, p0, p3}, Lcom/brakefield/painter/brushes/settings/BrushSettings;->editProfile(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setupDynamics(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;IILcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move v8, p3

    .line 35
    invoke-static/range {v0 .. v8}, Lcom/brakefield/painter/brushes/settings/BrushSettings;->setupDynamics(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;IILcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;I)V

    return-void
.end method

.method public static setupDynamics(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;IILcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;I)V
    .locals 10

    move-object v0, p2

    .line 39
    invoke-virtual {p2}, Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    const v2, 0x7f0a0663

    move-object v9, p0

    move v3, p4

    invoke-virtual {p0, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    .line 40
    iget-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;->titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    move v2, p3

    invoke-virtual {v1, p3}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(I)V

    .line 42
    invoke-interface {p5}, Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;->getModifierName()I

    move-result v5

    iget-object v7, v0, Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;->pressureCurve:Lcom/brakefield/painter/databinding/ProfileCurveBinding;

    move-object v3, p0

    move-object v4, p1

    move/from16 v6, p8

    move-object v8, p5

    invoke-static/range {v3 .. v8}, Lcom/brakefield/painter/brushes/settings/BrushSettings;->setupProfileCurve(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;IILcom/brakefield/painter/databinding/ProfileCurveBinding;Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;)V

    .line 43
    invoke-interface/range {p6 .. p6}, Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;->getModifierName()I

    move-result v5

    iget-object v7, v0, Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;->velocityCurve:Lcom/brakefield/painter/databinding/ProfileCurveBinding;

    move-object/from16 v8, p6

    invoke-static/range {v3 .. v8}, Lcom/brakefield/painter/brushes/settings/BrushSettings;->setupProfileCurve(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;IILcom/brakefield/painter/databinding/ProfileCurveBinding;Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;)V

    .line 44
    invoke-interface/range {p7 .. p7}, Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;->getModifierName()I

    move-result v5

    iget-object v7, v0, Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;->tiltCurve:Lcom/brakefield/painter/databinding/ProfileCurveBinding;

    move-object/from16 v8, p7

    invoke-static/range {v3 .. v8}, Lcom/brakefield/painter/brushes/settings/BrushSettings;->setupProfileCurve(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;IILcom/brakefield/painter/databinding/ProfileCurveBinding;Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;)V

    return-void
.end method

.method protected static setupProfileCurve(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;IILcom/brakefield/painter/databinding/ProfileCurveBinding;Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;)V
    .locals 1

    .line 49
    iget-object v0, p4, Lcom/brakefield/painter/databinding/ProfileCurveBinding;->activeToggle:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(I)V

    .line 51
    iget-object p2, p4, Lcom/brakefield/painter/databinding/ProfileCurveBinding;->activeToggle:Landroid/widget/Button;

    new-instance v0, Lcom/brakefield/painter/brushes/settings/BrushSettings$$ExternalSyntheticLambda1;

    invoke-direct {v0, p5, p4}, Lcom/brakefield/painter/brushes/settings/BrushSettings$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;Lcom/brakefield/painter/databinding/ProfileCurveBinding;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-interface {p5}, Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;->isActive()Z

    move-result p2

    .line 60
    iget-object v0, p4, Lcom/brakefield/painter/databinding/ProfileCurveBinding;->activeToggle:Landroid/widget/Button;

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0, p2}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->themeToggleButton(Lcom/google/android/material/button/MaterialButton;Z)V

    .line 61
    iget-object v0, p4, Lcom/brakefield/painter/databinding/ProfileCurveBinding;->curveView:Lcom/brakefield/painter/ui/ProfileView;

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p2, 0x3e4ccccd    # 0.2f

    :goto_0
    invoke-virtual {v0, p2}, Lcom/brakefield/painter/ui/ProfileView;->setAlpha(F)V

    .line 63
    iget-object p2, p4, Lcom/brakefield/painter/databinding/ProfileCurveBinding;->curveView:Lcom/brakefield/painter/ui/ProfileView;

    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 64
    iget-object p2, p4, Lcom/brakefield/painter/databinding/ProfileCurveBinding;->curveView:Lcom/brakefield/painter/ui/ProfileView;

    new-instance v0, Lcom/brakefield/painter/brushes/settings/BrushSettings$$ExternalSyntheticLambda2;

    invoke-direct {v0, p5, p0, p1, p3}, Lcom/brakefield/painter/brushes/settings/BrushSettings$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;I)V

    invoke-virtual {p2, v0}, Lcom/brakefield/painter/ui/ProfileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object p0, p4, Lcom/brakefield/painter/databinding/ProfileCurveBinding;->curveView:Lcom/brakefield/painter/ui/ProfileView;

    new-instance p1, Lcom/brakefield/painter/nativeobjs/ProfileNative;

    invoke-interface {p5}, Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;->getProfileCurve()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Lcom/brakefield/painter/nativeobjs/ProfileNative;-><init>(J)V

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/ProfileView;->setProfile(Lcom/brakefield/painter/nativeobjs/ProfileNative;)V

    return-void
.end method


# virtual methods
.method public abstract bindSettings(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
.end method

.method public abstract getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
.end method
