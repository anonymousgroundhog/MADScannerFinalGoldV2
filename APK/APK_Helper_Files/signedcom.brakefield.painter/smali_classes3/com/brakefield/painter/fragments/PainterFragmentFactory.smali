.class public Lcom/brakefield/painter/fragments/PainterFragmentFactory;
.super Landroidx/fragment/app/FragmentFactory;
.source "PainterFragmentFactory.java"


# instance fields
.field private final listener:Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController$OnFilterEffectSelectedListener;

.field private final ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController$OnFilterEffectSelectedListener;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroidx/fragment/app/FragmentFactory;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/brakefield/painter/fragments/PainterFragmentFactory;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    .line 17
    iput-object p2, p0, Lcom/brakefield/painter/fragments/PainterFragmentFactory;->listener:Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController$OnFilterEffectSelectedListener;

    return-void
.end method


# virtual methods
.method public instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 23
    invoke-static {p1, p2}, Lcom/brakefield/painter/fragments/PainterFragmentFactory;->loadFragmentClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 24
    const-class v1, Lcom/brakefield/painter/fragments/CreativeToolsFragment;

    if-ne v0, v1, :cond_0

    new-instance p1, Lcom/brakefield/painter/fragments/CreativeToolsFragment;

    iget-object p2, p0, Lcom/brakefield/painter/fragments/PainterFragmentFactory;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-direct {p1, p2}, Lcom/brakefield/painter/fragments/CreativeToolsFragment;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    return-object p1

    .line 25
    :cond_0
    const-class v1, Lcom/brakefield/painter/fragments/EditingToolsFragment;

    if-ne v0, v1, :cond_1

    new-instance p1, Lcom/brakefield/painter/fragments/EditingToolsFragment;

    iget-object p2, p0, Lcom/brakefield/painter/fragments/PainterFragmentFactory;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-direct {p1, p2}, Lcom/brakefield/painter/fragments/EditingToolsFragment;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    return-object p1

    .line 26
    :cond_1
    const-class v1, Lcom/brakefield/painter/fragments/HomeDiscoverFragment;

    if-ne v0, v1, :cond_2

    new-instance p1, Lcom/brakefield/painter/fragments/HomeDiscoverFragment;

    iget-object p2, p0, Lcom/brakefield/painter/fragments/PainterFragmentFactory;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-direct {p1, p2}, Lcom/brakefield/painter/fragments/HomeDiscoverFragment;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    return-object p1

    .line 27
    :cond_2
    const-class v1, Lcom/brakefield/painter/fragments/HomeMainFragment;

    if-ne v0, v1, :cond_3

    new-instance p1, Lcom/brakefield/painter/fragments/HomeMainFragment;

    iget-object p2, p0, Lcom/brakefield/painter/fragments/PainterFragmentFactory;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-direct {p1, p2}, Lcom/brakefield/painter/fragments/HomeMainFragment;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    return-object p1

    .line 28
    :cond_3
    const-class v1, Lcom/brakefield/painter/fragments/HomeProjectsFragment;

    if-ne v0, v1, :cond_4

    new-instance p1, Lcom/brakefield/painter/fragments/HomeProjectsFragment;

    iget-object p2, p0, Lcom/brakefield/painter/fragments/PainterFragmentFactory;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-direct {p1, p2}, Lcom/brakefield/painter/fragments/HomeProjectsFragment;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    return-object p1

    .line 29
    :cond_4
    const-class v1, Lcom/brakefield/painter/fragments/BrushStrokeSettingsFragment;

    if-ne v0, v1, :cond_5

    new-instance p1, Lcom/brakefield/painter/fragments/BrushStrokeSettingsFragment;

    iget-object p2, p0, Lcom/brakefield/painter/fragments/PainterFragmentFactory;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-direct {p1, p2}, Lcom/brakefield/painter/fragments/BrushStrokeSettingsFragment;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    return-object p1

    .line 30
    :cond_5
    const-class v1, Lcom/brakefield/painter/fragments/BrushHeadSettingsFragment;

    if-ne v0, v1, :cond_6

    new-instance p1, Lcom/brakefield/painter/fragments/BrushHeadSettingsFragment;

    iget-object p2, p0, Lcom/brakefield/painter/fragments/PainterFragmentFactory;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-direct {p1, p2}, Lcom/brakefield/painter/fragments/BrushHeadSettingsFragment;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    return-object p1

    .line 31
    :cond_6
    const-class v1, Lcom/brakefield/painter/fragments/BrushTextureSettingsFragment;

    if-ne v0, v1, :cond_7

    new-instance p1, Lcom/brakefield/painter/fragments/BrushTextureSettingsFragment;

    iget-object p2, p0, Lcom/brakefield/painter/fragments/PainterFragmentFactory;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-direct {p1, p2}, Lcom/brakefield/painter/fragments/BrushTextureSettingsFragment;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    return-object p1

    .line 32
    :cond_7
    const-class v1, Lcom/brakefield/painter/fragments/BrushPaintSettingsFragment;

    if-ne v0, v1, :cond_8

    new-instance p1, Lcom/brakefield/painter/fragments/BrushPaintSettingsFragment;

    iget-object p2, p0, Lcom/brakefield/painter/fragments/PainterFragmentFactory;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-direct {p1, p2}, Lcom/brakefield/painter/fragments/BrushPaintSettingsFragment;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    return-object p1

    .line 33
    :cond_8
    const-class v1, Lcom/brakefield/painter/fragments/BrushSpecialSettingsFragment;

    if-ne v0, v1, :cond_9

    new-instance p1, Lcom/brakefield/painter/fragments/BrushSpecialSettingsFragment;

    iget-object p2, p0, Lcom/brakefield/painter/fragments/PainterFragmentFactory;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-direct {p1, p2}, Lcom/brakefield/painter/fragments/BrushSpecialSettingsFragment;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    return-object p1

    .line 34
    :cond_9
    const-class v1, Lcom/brakefield/painter/fragments/BrushFilterEffectsLayerFragment;

    if-ne v0, v1, :cond_a

    new-instance p1, Lcom/brakefield/painter/fragments/BrushFilterEffectsLayerFragment;

    iget-object p2, p0, Lcom/brakefield/painter/fragments/PainterFragmentFactory;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v0, p0, Lcom/brakefield/painter/fragments/PainterFragmentFactory;->listener:Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController$OnFilterEffectSelectedListener;

    invoke-direct {p1, p2, v0}, Lcom/brakefield/painter/fragments/BrushFilterEffectsLayerFragment;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController$OnFilterEffectSelectedListener;)V

    return-object p1

    .line 35
    :cond_a
    const-class v1, Lcom/brakefield/painter/fragments/BrushFilterEffectsBrushFragment;

    if-ne v0, v1, :cond_b

    new-instance p1, Lcom/brakefield/painter/fragments/BrushFilterEffectsBrushFragment;

    iget-object p2, p0, Lcom/brakefield/painter/fragments/PainterFragmentFactory;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v0, p0, Lcom/brakefield/painter/fragments/PainterFragmentFactory;->listener:Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController$OnFilterEffectSelectedListener;

    invoke-direct {p1, p2, v0}, Lcom/brakefield/painter/fragments/BrushFilterEffectsBrushFragment;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController$OnFilterEffectSelectedListener;)V

    return-object p1

    .line 36
    :cond_b
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method
