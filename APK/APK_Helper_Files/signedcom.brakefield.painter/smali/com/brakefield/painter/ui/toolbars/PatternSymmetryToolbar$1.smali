.class Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$1;
.super Ljava/lang/Object;
.source "PatternSymmetryToolbar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar;

.field final synthetic val$binding:Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;

.field final synthetic val$ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar;

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p3, p0, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$1;->val$binding:Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 35
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar;

    invoke-static {p3}, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar;->access$000(Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar;)Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;->setPlanes(I)V

    .line 36
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p3}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 37
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$1;->val$binding:Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;

    iget-object p3, p3, Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;->planesSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    if-eq p1, p3, :cond_0

    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$1;->val$binding:Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;->planesSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/PullButton;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 41
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$1;->val$binding:Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;->planesSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/PullButton;->setScaleValue(F)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 45
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$1;->val$binding:Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/PatternSymmetryToolbarBinding;->planesSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/PullButton;->setScaleValue(F)V

    .line 46
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PatternSymmetryToolbar$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method
