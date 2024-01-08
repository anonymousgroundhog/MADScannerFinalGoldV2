.class public final synthetic Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/brushes/settings/StrokeSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/brushes/settings/StrokeSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda4;->f$0:Lcom/brakefield/painter/brushes/settings/StrokeSettings;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings$$ExternalSyntheticLambda4;->f$0:Lcom/brakefield/painter/brushes/settings/StrokeSettings;

    invoke-virtual {v0, p1, p2, p3}, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->lambda$bindSettings$10$com-brakefield-painter-brushes-settings-StrokeSettings(Landroid/widget/SeekBar;IZ)V

    return-void
.end method
