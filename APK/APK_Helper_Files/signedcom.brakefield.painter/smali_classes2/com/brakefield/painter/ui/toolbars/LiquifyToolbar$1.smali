.class Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$1;
.super Ljava/lang/Object;
.source "LiquifyToolbar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;

.field final synthetic val$ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 55
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;->access$000(Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;)Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;

    move-result-object p1

    int-to-float p2, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;->setIntensity(F)V

    .line 56
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 60
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;->access$000(Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;)Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;->getTemplate()I

    move-result p1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setChangingValue(Z)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 64
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;->access$000(Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;)Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;->getTemplate()I

    move-result p1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setChangingValue(Z)V

    :cond_0
    return-void
.end method
