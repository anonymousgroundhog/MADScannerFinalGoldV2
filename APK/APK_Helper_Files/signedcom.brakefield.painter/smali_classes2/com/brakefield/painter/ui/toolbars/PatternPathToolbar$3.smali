.class Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$3;
.super Ljava/lang/Object;
.source "PatternPathToolbar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar;

.field final synthetic val$binding:Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;

.field final synthetic val$ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$3;->this$0:Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar;

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$3;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p3, p0, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$3;->val$binding:Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 81
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$3;->this$0:Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar;

    invoke-static {p3}, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar;->access$000(Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar;)Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;

    move-result-object p3

    int-to-float v0, p2

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;->setJitterAngle(F)V

    .line 82
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$3;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p3}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 83
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$3;->val$binding:Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;

    iget-object p3, p3, Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;->jitterAngleSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    if-eq p1, p3, :cond_0

    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$3;->val$binding:Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;->jitterAngleSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/PullButton;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 87
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$3;->val$binding:Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;->jitterAngleSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/PullButton;->setScaleValue(F)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 91
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$3;->val$binding:Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;->jitterAngleSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/PullButton;->setScaleValue(F)V

    .line 92
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$3;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method
