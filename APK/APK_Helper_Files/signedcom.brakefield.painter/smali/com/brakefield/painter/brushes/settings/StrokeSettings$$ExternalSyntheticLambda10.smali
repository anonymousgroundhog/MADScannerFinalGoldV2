.class public final synthetic Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/brushes/settings/StrokeSettings;

.field public final synthetic f$1:F

.field public final synthetic f$2:Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/brushes/settings/StrokeSettings;FLcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;ILcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda10;->f$0:Lcom/brakefield/painter/brushes/settings/StrokeSettings;

    iput p2, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda10;->f$1:F

    iput-object p3, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda10;->f$2:Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;

    iput p4, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda10;->f$3:I

    iput-object p5, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda10;->f$4:Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8

    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda10;->f$0:Lcom/brakefield/painter/brushes/settings/StrokeSettings;

    iget v1, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda10;->f$1:F

    iget-object v2, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda10;->f$2:Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;

    iget v3, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda10;->f$3:I

    iget-object v4, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda10;->f$4:Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->lambda$bindSettings$4$com-brakefield-painter-brushes-settings-StrokeSettings(FLcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;ILcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar;IZ)V

    return-void
.end method
