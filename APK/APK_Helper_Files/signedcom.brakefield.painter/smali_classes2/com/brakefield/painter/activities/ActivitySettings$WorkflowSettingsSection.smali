.class Lcom/brakefield/painter/activities/ActivitySettings$WorkflowSettingsSection;
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
    name = "WorkflowSettingsSection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/activities/ActivitySettings;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$WorkflowSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings;Lcom/brakefield/painter/activities/ActivitySettings$1;)V
    .locals 0

    .line 434
    invoke-direct {p0, p1}, Lcom/brakefield/painter/activities/ActivitySettings$WorkflowSettingsSection;-><init>(Lcom/brakefield/painter/activities/ActivitySettings;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$setup$0$com-brakefield-painter-activities-ActivitySettings$WorkflowSettingsSection(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 440
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$WorkflowSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {p1}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1900(Lcom/brakefield/painter/activities/ActivitySettings;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "PREF_ROTATE_CANVAS"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method synthetic lambda$setup$1$com-brakefield-painter-activities-ActivitySettings$WorkflowSettingsSection(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 445
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setShowLayerChanges(Z)V

    .line 446
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$WorkflowSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {p1}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1900(Lcom/brakefield/painter/activities/ActivitySettings;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "PREF_SHOW_LAYER_CHANGES"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public refresh()V
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$WorkflowSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->workflowSettings:Lcom/brakefield/painter/databinding/WorkflowSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/WorkflowSettingsBinding;->card:Landroidx/cardview/widget/CardView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    return-void
.end method

.method public setup()V
    .locals 5

    .line 439
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$WorkflowSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->workflowSettings:Lcom/brakefield/painter/databinding/WorkflowSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/WorkflowSettingsBinding;->rotateCanvasToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$WorkflowSettingsSection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivitySettings$WorkflowSettingsSection$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$WorkflowSettingsSection;)V

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivitySettings$WorkflowSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    .line 441
    invoke-static {v2}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1900(Lcom/brakefield/painter/activities/ActivitySettings;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "PREF_ROTATE_CANVAS"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 439
    invoke-static {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    .line 443
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$WorkflowSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->workflowSettings:Lcom/brakefield/painter/databinding/WorkflowSettingsBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/WorkflowSettingsBinding;->showLayerChangesToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v1, Lcom/brakefield/painter/activities/ActivitySettings$WorkflowSettingsSection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivitySettings$WorkflowSettingsSection$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/activities/ActivitySettings$WorkflowSettingsSection;)V

    .line 448
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getShowLayerChanges()Z

    move-result v2

    .line 443
    invoke-static {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    return-void
.end method
