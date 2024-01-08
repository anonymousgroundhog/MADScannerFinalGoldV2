.class public Lcom/brakefield/painter/fragments/BrushFilterEffectsBrushFragment;
.super Lcom/brakefield/painter/fragments/BrushFilterEffectsFragment;
.source "BrushFilterEffectsBrushFragment.java"


# instance fields
.field private viewController:Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsBrushViewController;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController$OnFilterEffectSelectedListener;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/fragments/BrushFilterEffectsFragment;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController$OnFilterEffectSelectedListener;)V

    .line 15
    new-instance p1, Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsBrushViewController;

    invoke-direct {p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsBrushViewController;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/fragments/BrushFilterEffectsBrushFragment;->viewController:Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsBrushViewController;

    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;)V
    .locals 4

    .line 30
    iget-object v0, p0, Lcom/brakefield/painter/fragments/BrushFilterEffectsBrushFragment;->viewController:Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsBrushViewController;

    invoke-virtual {p0}, Lcom/brakefield/painter/fragments/BrushFilterEffectsBrushFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/brakefield/painter/fragments/BrushFilterEffectsBrushFragment;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v3, p0, Lcom/brakefield/painter/fragments/BrushFilterEffectsBrushFragment;->listener:Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController$OnFilterEffectSelectedListener;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsBrushViewController;->bind(Landroid/app/Activity;Landroid/view/View;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController$OnFilterEffectSelectedListener;)V

    return-void
.end method

.method public getContentId()I
    .locals 1

    const v0, 0x7f0d00ac

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f12007a

    .line 22
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/brakefield/painter/fragments/BrushFilterEffectsBrushFragment;->viewController:Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsBrushViewController;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsBrushViewController;->update()V

    return-void
.end method
