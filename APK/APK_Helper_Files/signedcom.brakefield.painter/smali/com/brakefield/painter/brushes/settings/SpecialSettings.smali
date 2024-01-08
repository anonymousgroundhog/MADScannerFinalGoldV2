.class public Lcom/brakefield/painter/brushes/settings/SpecialSettings;
.super Lcom/brakefield/painter/brushes/settings/BrushSettings;
.source "SpecialSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/brushes/settings/SpecialSettings$Section;,
        Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;,
        Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;,
        Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;,
        Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;
    }
.end annotation


# instance fields
.field binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

.field sections:[Lcom/brakefield/painter/brushes/settings/SpecialSettings$Section;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 25
    invoke-direct {p0}, Lcom/brakefield/painter/brushes/settings/BrushSettings;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/brakefield/painter/brushes/settings/SpecialSettings$Section;

    .line 29
    new-instance v1, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/brakefield/painter/brushes/settings/SpecialSettings$WatercolorSection;-><init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings;Lcom/brakefield/painter/brushes/settings/SpecialSettings$1;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;

    invoke-direct {v1, p0, v2}, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ScreentoneSection;-><init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings;Lcom/brakefield/painter/brushes/settings/SpecialSettings$1;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;

    invoke-direct {v1, p0, v2}, Lcom/brakefield/painter/brushes/settings/SpecialSettings$ParticlesSection;-><init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings;Lcom/brakefield/painter/brushes/settings/SpecialSettings$1;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;

    invoke-direct {v1, p0, v2}, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;-><init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings;Lcom/brakefield/painter/brushes/settings/SpecialSettings$1;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->sections:[Lcom/brakefield/painter/brushes/settings/SpecialSettings$Section;

    return-void
.end method


# virtual methods
.method public bindSettings(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->sections:[Lcom/brakefield/painter/brushes/settings/SpecialSettings$Section;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 46
    invoke-interface {v3, p1, p2}, Lcom/brakefield/painter/brushes/settings/SpecialSettings$Section;->setup(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 47
    invoke-interface {v3, p1}, Lcom/brakefield/painter/brushes/settings/SpecialSettings$Section;->update(Landroid/content/Context;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 1

    .line 38
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->bindSettings(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 40
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/BrushSettingsSpecialSectionViewControllerBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method
