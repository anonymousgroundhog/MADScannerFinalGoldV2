.class Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$5;
.super Ljava/lang/Object;
.source "PanelsToolbar.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/PullButton$OnOutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$binding:Lcom/brakefield/painter/databinding/PanelsToolbarBinding;

.field final synthetic val$ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;Lcom/brakefield/painter/databinding/PanelsToolbarBinding;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$5;->this$0:Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$5;->val$binding:Lcom/brakefield/painter/databinding/PanelsToolbarBinding;

    iput-object p3, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$5;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p4, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOutEnded()V
    .locals 10

    .line 179
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$5;->val$binding:Lcom/brakefield/painter/databinding/PanelsToolbarBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->panelsColor:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setScaleValue(F)V

    .line 180
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getEyedropperX()F

    move-result v2

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getEyedropperY()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    invoke-static/range {v2 .. v9}, Lcom/brakefield/painter/PainterLib;->up(FFFFFJZ)V

    .line 181
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$5;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    .line 182
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$5;->val$binding:Lcom/brakefield/painter/databinding/PanelsToolbarBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->panelsColor:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setPreviousColor(Z)V

    .line 183
    invoke-static {}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateFloatingWheel()V

    return-void
.end method

.method public onOutMove(FF)V
    .locals 9

    .line 172
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 173
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 174
    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    invoke-static/range {v1 .. v8}, Lcom/brakefield/painter/PainterLib;->move(FFFFFJZ)V

    .line 175
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$5;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method public onOutStarted(FF)V
    .locals 9

    .line 162
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$5;->val$binding:Lcom/brakefield/painter/databinding/PanelsToolbarBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->panelsColor:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setScaleValue(F)V

    .line 163
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$5;->val$binding:Lcom/brakefield/painter/databinding/PanelsToolbarBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->panelsColor:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setPreviousColor(Z)V

    const/4 v0, 0x1

    .line 164
    invoke-static {v0, v1}, Lcom/brakefield/painter/PainterLib;->setEyedropper(ZI)V

    .line 165
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 166
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 167
    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    invoke-static/range {v1 .. v8}, Lcom/brakefield/painter/PainterLib;->down(FFFFFJZ)V

    .line 168
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$5;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method
