.class public final synthetic Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/SimpleUI;

.field public final synthetic f$1:Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$$ExternalSyntheticLambda0;->f$1:Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$$ExternalSyntheticLambda0;->f$1:Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar;->lambda$getView$0(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;Landroid/widget/SeekBar;IZ)V

    return-void
.end method
