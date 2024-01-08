.class public abstract Lcom/brakefield/painter/fragments/BrushFilterEffectsFragment;
.super Lcom/brakefield/infinitestudio/ui/TabFragment;
.source "BrushFilterEffectsFragment.java"


# instance fields
.field final listener:Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController$OnFilterEffectSelectedListener;

.field final ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController$OnFilterEffectSelectedListener;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/TabFragment;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/brakefield/painter/fragments/BrushFilterEffectsFragment;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    .line 21
    iput-object p2, p0, Lcom/brakefield/painter/fragments/BrushFilterEffectsFragment;->listener:Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController$OnFilterEffectSelectedListener;

    return-void
.end method


# virtual methods
.method public abstract bind(Landroid/view/View;)V
.end method

.method public abstract getContentId()I
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/brakefield/painter/fragments/BrushFilterEffectsFragment;->getContentId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 32
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/fragments/BrushFilterEffectsFragment;->bind(Landroid/view/View;)V

    return-object p1
.end method

.method public abstract update()V
.end method
