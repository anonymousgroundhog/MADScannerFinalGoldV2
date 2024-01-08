.class Lcom/brakefield/painter/ui/toolbars/MainToolbar$5;
.super Ljava/lang/Object;
.source "MainToolbar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/toolbars/MainToolbar;->setupToolbar(Landroid/app/Activity;Lcom/brakefield/infinitestudio/gestures/GestureLayout;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field effectsSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;

.field effectsSettingsPointer:J

.field final synthetic this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)V
    .locals 2

    .line 604
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$5;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 607
    iput-wide v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$5;->effectsSettingsPointer:J

    return-void
.end method

.method static synthetic lambda$onStartTrackingTouch$0()V
    .locals 1

    const/4 v0, 0x1

    .line 627
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setAdjustingFilterValue(Z)V

    return-void
.end method

.method static synthetic lambda$onStopTrackingTouch$1()V
    .locals 1

    const/4 v0, 0x0

    .line 631
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setAdjustingFilterValue(Z)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .line 611
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushSpecialEffectsSettings()J

    move-result-wide v0

    .line 612
    iget-wide v2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$5;->effectsSettingsPointer:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    iput-wide v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$5;->effectsSettingsPointer:J

    .line 613
    :cond_0
    new-instance v0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;

    iget-wide v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$5;->effectsSettingsPointer:J

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;-><init>(J)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$5;->effectsSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;

    int-to-float v1, p2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    .line 614
    invoke-virtual {v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;->setValue(F)V

    .line 615
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$5;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$200(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 616
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$5;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->filterEffectButton:Lcom/brakefield/infinitestudio/ui/PullButton;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$5;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/MainToolbarBinding;->filterEffectButton:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/PullButton;->setProgress(I)V

    :cond_1
    if-eqz p3, :cond_3

    .line 618
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$5;->effectsSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;

    invoke-virtual {p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;->getValue()F

    move-result p1

    .line 619
    iget-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$5;->effectsSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;

    invoke-virtual {p2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;->isMiddlePivot()Z

    move-result p2

    if-eqz p2, :cond_2

    const/high16 p2, 0x3f000000    # 0.5f

    sub-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    :cond_2
    mul-float/2addr p1, v2

    float-to-int p1, p1

    .line 621
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "%d"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 622
    iget-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$5;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p2}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$200(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f120acd

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "%"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->showMessage(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 627
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$5;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$200(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->getSharedMessageHandler()Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object p1

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$5$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$5$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p1, v0}, Lcom/brakefield/painter/SharedMessageHandler;->postRenderEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 631
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$5;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$200(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->getSharedMessageHandler()Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object p1

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$5$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$5$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v0}, Lcom/brakefield/painter/SharedMessageHandler;->postRenderEvent(Ljava/lang/Runnable;)V

    return-void
.end method
