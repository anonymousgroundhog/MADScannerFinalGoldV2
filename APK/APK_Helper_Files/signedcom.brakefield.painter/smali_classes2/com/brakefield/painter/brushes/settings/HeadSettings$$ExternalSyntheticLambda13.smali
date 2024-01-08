.class public final synthetic Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/brushes/settings/HeadSettings;

.field public final synthetic f$1:Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/brushes/settings/HeadSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda13;->f$0:Lcom/brakefield/painter/brushes/settings/HeadSettings;

    iput-object p2, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda13;->f$1:Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda13;->f$0:Lcom/brakefield/painter/brushes/settings/HeadSettings;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda13;->f$1:Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/brakefield/painter/brushes/settings/HeadSettings;->lambda$bindSettings$8$com-brakefield-painter-brushes-settings-HeadSettings(Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;Landroid/widget/SeekBar;IZ)V

    return-void
.end method
