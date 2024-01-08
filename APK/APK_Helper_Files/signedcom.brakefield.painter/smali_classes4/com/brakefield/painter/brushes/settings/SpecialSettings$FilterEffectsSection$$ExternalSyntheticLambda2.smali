.class public final synthetic Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;

.field public final synthetic f$1:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection$$ExternalSyntheticLambda2;->f$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;

    iput-object p2, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection$$ExternalSyntheticLambda2;->f$1:Lcom/brakefield/painter/ui/SimpleUI;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection$$ExternalSyntheticLambda2;->f$0:Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection$$ExternalSyntheticLambda2;->f$1:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/brakefield/painter/brushes/settings/SpecialSettings$FilterEffectsSection;->lambda$setup$2$com-brakefield-painter-brushes-settings-SpecialSettings$FilterEffectsSection(Lcom/brakefield/painter/ui/SimpleUI;Landroid/widget/SeekBar;IZ)V

    return-void
.end method
