.class Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$RenderingSection;
.super Ljava/lang/Object;
.source "CreateProjectViewController.java"

# interfaces
.implements Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$Section;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderingSection"
.end annotation


# instance fields
.field private spinnerAdapter:Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)V
    .locals 0

    .line 1022
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$RenderingSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$1;)V
    .locals 0

    .line 1022
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$RenderingSection;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$setup$0$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$RenderingSection(Landroid/app/Activity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1054
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$RenderingSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$1400(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/nativeobjs/ProjectNative;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setUsesGammaCorrection(Z)V

    .line 1055
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1056
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "PREF_GAMMA_CORRECTION"

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setup(Landroid/app/Activity;)V
    .locals 4

    .line 1029
    new-instance v0, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    invoke-static {}, Lcom/brakefield/painter/ColorProfiles;->getSpinnerItems()[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;-><init>(Landroid/content/Context;[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$RenderingSection;->spinnerAdapter:Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    .line 1031
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$RenderingSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->renderingSection:Lcom/brakefield/painter/databinding/CreateProjectRenderingSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectRenderingSectionBinding;->colorModesDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$RenderingSection$1;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$RenderingSection$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$RenderingSection;Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$RenderingSection;->spinnerAdapter:Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$RenderingSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    .line 1050
    invoke-static {v3}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$1400(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/nativeobjs/ProjectNative;

    move-result-object v3

    invoke-virtual {v3}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getColorProfile()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1031
    invoke-static {v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupDropdown(Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;Landroid/widget/AdapterView$OnItemSelectedListener;Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;Ljava/lang/Object;)V

    .line 1052
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$RenderingSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->renderingSection:Lcom/brakefield/painter/databinding/CreateProjectRenderingSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectRenderingSectionBinding;->gammaCorrectionToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$RenderingSection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$RenderingSection$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$RenderingSection;Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$RenderingSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    .line 1058
    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$1400(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/nativeobjs/ProjectNative;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->usesGammaCorrection()Z

    move-result p1

    .line 1052
    invoke-static {v0, v1, p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    return-void
.end method

.method public updateSection()V
    .locals 0

    return-void
.end method
