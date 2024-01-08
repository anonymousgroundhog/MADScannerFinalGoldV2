.class public final synthetic Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/brushes/settings/StrokeSettings;

.field public final synthetic f$1:Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/brushes/settings/StrokeSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda3;->f$0:Lcom/brakefield/painter/brushes/settings/StrokeSettings;

    iput-object p2, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda3;->f$1:Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda3;->f$0:Lcom/brakefield/painter/brushes/settings/StrokeSettings;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda3;->f$1:Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->lambda$bindSettings$9$com-brakefield-painter-brushes-settings-StrokeSettings(Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;Landroid/widget/SeekBar;IZ)V

    return-void
.end method
