.class public final synthetic Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController$OnFilterEffectSelectedListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;

    iput-object p2, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onFilterEffectSelected(II)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;->lambda$setup$0$com-brakefield-painter-brushes-settings-SpecialSettings$FilterEffectsSection(Landroid/app/Activity;II)V

    return-void
.end method
