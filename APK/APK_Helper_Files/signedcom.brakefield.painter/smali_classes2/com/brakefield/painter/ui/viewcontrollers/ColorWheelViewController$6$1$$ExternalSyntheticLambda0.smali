.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    return-void
.end method


# virtual methods
.method public final colorChanged(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    invoke-static {v0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;->lambda$dragStarted$0(Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;IZ)V

    return-void
.end method
