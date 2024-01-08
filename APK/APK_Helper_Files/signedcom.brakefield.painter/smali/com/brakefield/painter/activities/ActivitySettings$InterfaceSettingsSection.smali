.class Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;
.super Ljava/lang/Object;
.source "ActivitySettings.java"

# interfaces
.implements Lcom/brakefield/painter/activities/ActivitySettings$SettingsSection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/activities/ActivitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterfaceSettingsSection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/activities/ActivitySettings;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings;Lcom/brakefield/painter/activities/ActivitySettings$1;)V
    .locals 0

    .line 317
    invoke-direct {p0, p1}, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;-><init>(Lcom/brakefield/painter/activities/ActivitySettings;)V

    return-void
.end method

.method static synthetic lambda$setup$1(F)Ljava/lang/String;
    .locals 2

    const/high16 v0, 0x41a00000    # 20.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float/2addr p0, v0

    const v0, 0x3f59999a    # 0.85f

    add-float/2addr p0, v0

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%.2f"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private refreshColorWheel()V
    .locals 3

    .line 406
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1900(Lcom/brakefield/painter/activities/ActivitySettings;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v1, Landroidx/constraintlayout/motion/widget/Opu/AFxbOaHHHN;->vQOazI:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->interfaceSettings:Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->colorWheel:Landroid/widget/ImageView;

    const v1, 0x7f080110

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->interfaceSettings:Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->colorWheel:Landroid/widget/ImageView;

    const v1, 0x7f080113

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 416
    :cond_2
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->interfaceSettings:Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->colorWheel:Landroid/widget/ImageView;

    const v1, 0x7f080111

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 419
    :cond_3
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->interfaceSettings:Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->colorWheel:Landroid/widget/ImageView;

    const v1, 0x7f080112

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 413
    :cond_4
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->interfaceSettings:Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->colorWheel:Landroid/widget/ImageView;

    const v1, 0x7f080115

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 410
    :cond_5
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->interfaceSettings:Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->colorWheel:Landroid/widget/ImageView;

    const v1, 0x7f080114

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private setupThemes()V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->interfaceSettings:Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->theme1:Lcom/brakefield/infinitestudio/ui/ThemeButton;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getLightNeutralTheme()Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ThemeButton;->setTheme(Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;)V

    .line 383
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->interfaceSettings:Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->theme1:Lcom/brakefield/infinitestudio/ui/ThemeButton;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ThemeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->interfaceSettings:Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->theme2:Lcom/brakefield/infinitestudio/ui/ThemeButton;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getDarkNeutralTheme()Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ThemeButton;->setTheme(Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;)V

    .line 390
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->interfaceSettings:Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->theme2:Lcom/brakefield/infinitestudio/ui/ThemeButton;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ThemeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->interfaceSettings:Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->theme3:Lcom/brakefield/infinitestudio/ui/ThemeButton;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getAccentTheme()Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ThemeButton;->setTheme(Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;)V

    .line 397
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->interfaceSettings:Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->theme3:Lcom/brakefield/infinitestudio/ui/ThemeButton;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ThemeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$setup$0$com-brakefield-painter-activities-ActivitySettings$InterfaceSettingsSection(Landroid/view/View;)V
    .locals 3

    .line 322
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    const-class v2, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/activities/ActivitySettings;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$setup$2$com-brakefield-painter-activities-ActivitySettings$InterfaceSettingsSection(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 357
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->setFullscreenMode(Landroid/app/Activity;Z)V

    return-void
.end method

.method synthetic lambda$setup$3$com-brakefield-painter-activities-ActivitySettings$InterfaceSettingsSection(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 363
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {p1}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1900(Lcom/brakefield/painter/activities/ActivitySettings;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->setSplitTools(Landroid/content/SharedPreferences;Z)V

    return-void
.end method

.method synthetic lambda$setup$4$com-brakefield-painter-activities-ActivitySettings$InterfaceSettingsSection(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 369
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {p1}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1900(Lcom/brakefield/painter/activities/ActivitySettings;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "PREF_USE_COLOR_HISTORY_STRIP"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method synthetic lambda$setupThemes$5$com-brakefield-painter-activities-ActivitySettings$InterfaceSettingsSection(Landroid/view/View;)V
    .locals 1

    .line 384
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {p1}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->interfaceSettings:Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->theme1:Lcom/brakefield/infinitestudio/ui/ThemeButton;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/ThemeButton;->getTheme()Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->setTheme(Landroid/app/Activity;Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;)V

    .line 385
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-virtual {p1}, Lcom/brakefield/painter/activities/ActivitySettings;->recreate()V

    const/4 p1, 0x1

    .line 386
    sput-boolean p1, Lcom/brakefield/infinitestudio/ui/ThemeManager;->refresh:Z

    return-void
.end method

.method synthetic lambda$setupThemes$6$com-brakefield-painter-activities-ActivitySettings$InterfaceSettingsSection(Landroid/view/View;)V
    .locals 1

    .line 391
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {p1}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->interfaceSettings:Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->theme2:Lcom/brakefield/infinitestudio/ui/ThemeButton;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/ThemeButton;->getTheme()Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->setTheme(Landroid/app/Activity;Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;)V

    .line 392
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-virtual {p1}, Lcom/brakefield/painter/activities/ActivitySettings;->recreate()V

    const/4 p1, 0x1

    .line 393
    sput-boolean p1, Lcom/brakefield/infinitestudio/ui/ThemeManager;->refresh:Z

    return-void
.end method

.method synthetic lambda$setupThemes$7$com-brakefield-painter-activities-ActivitySettings$InterfaceSettingsSection(Landroid/view/View;)V
    .locals 1

    .line 398
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {p1}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->interfaceSettings:Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->theme3:Lcom/brakefield/infinitestudio/ui/ThemeButton;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/ThemeButton;->getTheme()Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->setTheme(Landroid/app/Activity;Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;)V

    .line 399
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-virtual {p1}, Lcom/brakefield/painter/activities/ActivitySettings;->recreate()V

    const/4 p1, 0x1

    .line 400
    sput-boolean p1, Lcom/brakefield/infinitestudio/ui/ThemeManager;->refresh:Z

    return-void
.end method

.method public refresh()V
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->interfaceSettings:Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->card:Landroidx/cardview/widget/CardView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 377
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->interfaceSettings:Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->colorWheel:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 378
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->refreshColorWheel()V

    return-void
.end method

.method public setup()V
    .locals 5

    .line 322
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->interfaceSettings:Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->colorWheel:Landroid/widget/ImageView;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->interfaceSettings:Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->colorWheel:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 325
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->setupThemes()V

    .line 327
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->interfaceSettings:Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->uiScaleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setMax(I)V

    .line 328
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->interfaceSettings:Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->uiScaleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance v2, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection$$ExternalSyntheticLambda4;-><init>()V

    new-instance v3, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection$1;

    invoke-direct {v3, p0}, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection$1;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;)V

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 353
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->interfaceSettings:Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->uiScaleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    sget v1, Lcom/brakefield/infinitestudio/ui/ThemeManager;->uiScale:F

    float-to-double v1, v1

    const-wide v3, 0x3feb333333333333L    # 0.85

    sub-double/2addr v1, v3

    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 355
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->interfaceSettings:Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->hideNavigationBarToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;)V

    sget-boolean v2, Lcom/brakefield/infinitestudio/ui/ThemeManager;->fullscreenMode:Z

    invoke-static {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    .line 361
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->interfaceSettings:Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->splitToolsMenuToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;)V

    sget-boolean v2, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->splitTools:Z

    invoke-static {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    .line 367
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->interfaceSettings:Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->colorHistoryStripToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;)V

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    .line 371
    invoke-static {v2}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1900(Lcom/brakefield/painter/activities/ActivitySettings;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "PREF_USE_COLOR_HISTORY_STRIP"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 367
    invoke-static {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    return-void
.end method
