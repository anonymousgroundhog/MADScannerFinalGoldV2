.class Lcom/brakefield/painter/activities/ActivitySettings$GlobalBrushSettingsSection;
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
    name = "GlobalBrushSettingsSection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/activities/ActivitySettings;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings;)V
    .locals 0

    .line 735
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$GlobalBrushSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings;Lcom/brakefield/painter/activities/ActivitySettings$1;)V
    .locals 0

    .line 735
    invoke-direct {p0, p1}, Lcom/brakefield/painter/activities/ActivitySettings$GlobalBrushSettingsSection;-><init>(Lcom/brakefield/painter/activities/ActivitySettings;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$setup$0$com-brakefield-painter-activities-ActivitySettings$GlobalBrushSettingsSection(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 742
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setBrushDrawCursor(Z)V

    .line 743
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$GlobalBrushSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {p1}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1900(Lcom/brakefield/painter/activities/ActivitySettings;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "PREF_BRUSH_DRAW_CURSOR"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method synthetic lambda$setup$1$com-brakefield-painter-activities-ActivitySettings$GlobalBrushSettingsSection(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 749
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setBrushShapeDetection(Z)V

    .line 750
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$GlobalBrushSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {p1}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1900(Lcom/brakefield/painter/activities/ActivitySettings;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "PREF_BRUSH_SHAPE_DETECTION"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public refresh()V
    .locals 2

    .line 813
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$GlobalBrushSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->globalBrushSettings:Lcom/brakefield/painter/databinding/GlobalBrushSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/GlobalBrushSettingsBinding;->card:Landroidx/cardview/widget/CardView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    return-void
.end method

.method public setup()V
    .locals 12

    .line 740
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$GlobalBrushSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->globalBrushSettings:Lcom/brakefield/painter/databinding/GlobalBrushSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/GlobalBrushSettingsBinding;->drawCursorToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$GlobalBrushSettingsSection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivitySettings$GlobalBrushSettingsSection$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$GlobalBrushSettingsSection;)V

    .line 745
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushDrawCursor()Z

    move-result v2

    .line 740
    invoke-static {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    .line 747
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$GlobalBrushSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->globalBrushSettings:Lcom/brakefield/painter/databinding/GlobalBrushSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/GlobalBrushSettingsBinding;->shapeDetectionToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$GlobalBrushSettingsSection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivitySettings$GlobalBrushSettingsSection$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$GlobalBrushSettingsSection;)V

    .line 752
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushShapeDetection()Z

    move-result v2

    .line 747
    invoke-static {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    .line 754
    iget-object v3, p0, Lcom/brakefield/painter/activities/ActivitySettings$GlobalBrushSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    const/4 v4, 0x0

    invoke-static {v3}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->globalBrushSettings:Lcom/brakefield/painter/databinding/GlobalBrushSettingsBinding;

    iget-object v5, v0, Lcom/brakefield/painter/databinding/GlobalBrushSettingsBinding;->globalDynamics:Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;

    const v6, 0x7f1201d6

    const v7, 0x7f12058f

    new-instance v8, Lcom/brakefield/painter/activities/ActivitySettings$GlobalBrushSettingsSection$1;

    invoke-direct {v8, p0}, Lcom/brakefield/painter/activities/ActivitySettings$GlobalBrushSettingsSection$1;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$GlobalBrushSettingsSection;)V

    new-instance v9, Lcom/brakefield/painter/activities/ActivitySettings$GlobalBrushSettingsSection$2;

    invoke-direct {v9, p0}, Lcom/brakefield/painter/activities/ActivitySettings$GlobalBrushSettingsSection$2;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$GlobalBrushSettingsSection;)V

    new-instance v10, Lcom/brakefield/painter/activities/ActivitySettings$GlobalBrushSettingsSection$3;

    invoke-direct {v10, p0}, Lcom/brakefield/painter/activities/ActivitySettings$GlobalBrushSettingsSection$3;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$GlobalBrushSettingsSection;)V

    const v11, 0x7f120acd

    invoke-static/range {v3 .. v11}, Lcom/brakefield/painter/brushes/settings/BrushSettings;->setupDynamics(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;IILcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;I)V

    return-void
.end method
