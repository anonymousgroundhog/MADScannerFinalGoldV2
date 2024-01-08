.class public final synthetic Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;

.field public final synthetic f$1:Lcom/brakefield/painter/nativeobjs/color/GradientNative;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;Lcom/brakefield/painter/nativeobjs/color/GradientNative;ILcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$1$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$1$$ExternalSyntheticLambda0;->f$1:Lcom/brakefield/painter/nativeobjs/color/GradientNative;

    iput p3, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$1$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$1$$ExternalSyntheticLambda0;->f$3:Lcom/brakefield/painter/ui/SimpleUI;

    return-void
.end method


# virtual methods
.method public final colorChanged(IZ)V
    .locals 6

    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$1$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$1$$ExternalSyntheticLambda0;->f$1:Lcom/brakefield/painter/nativeobjs/color/GradientNative;

    iget v2, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$1$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$1$$ExternalSyntheticLambda0;->f$3:Lcom/brakefield/painter/ui/SimpleUI;

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$1;->lambda$onColorStopTapped$0(Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;Lcom/brakefield/painter/nativeobjs/color/GradientNative;ILcom/brakefield/painter/ui/SimpleUI;IZ)V

    return-void
.end method
