.class public final synthetic Lcom/brakefield/painter/brushes/settings/PaintSettings$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/brushes/settings/PaintSettings;

.field public final synthetic f$1:Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/brushes/settings/PaintSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings$$ExternalSyntheticLambda8;->f$0:Lcom/brakefield/painter/brushes/settings/PaintSettings;

    iput-object p2, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings$$ExternalSyntheticLambda8;->f$1:Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings$$ExternalSyntheticLambda8;->f$0:Lcom/brakefield/painter/brushes/settings/PaintSettings;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/settings/PaintSettings$$ExternalSyntheticLambda8;->f$1:Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/brakefield/painter/brushes/settings/PaintSettings;->lambda$bindSettings$2$com-brakefield-painter-brushes-settings-PaintSettings(Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;Landroid/widget/SeekBar;IZ)V

    return-void
.end method
