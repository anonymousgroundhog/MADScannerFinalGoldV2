.class Lcom/brakefield/painter/ui/toolbars/FillToolbar$2;
.super Ljava/lang/Object;
.source "FillToolbar.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/PullButton$OnOutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/toolbars/FillToolbar;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/toolbars/FillToolbar;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$binding:Lcom/brakefield/painter/databinding/FillToolbarBinding;

.field final synthetic val$ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/toolbars/FillToolbar;Lcom/brakefield/painter/databinding/FillToolbarBinding;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/FillToolbar;

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$2;->val$binding:Lcom/brakefield/painter/databinding/FillToolbarBinding;

    iput-object p3, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$2;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p4, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOutEnded()V
    .locals 10

    .line 144
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$2;->val$binding:Lcom/brakefield/painter/databinding/FillToolbarBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->color:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setScaleValue(F)V

    .line 145
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

    .line 146
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$2;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    .line 147
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$2;->val$binding:Lcom/brakefield/painter/databinding/FillToolbarBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->color:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setPreviousColor(Z)V

    .line 148
    invoke-static {}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateFloatingWheel()V

    return-void
.end method

.method public onOutMove(FF)V
    .locals 9

    .line 137
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 138
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 139
    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    invoke-static/range {v1 .. v8}, Lcom/brakefield/painter/PainterLib;->move(FFFFFJZ)V

    .line 140
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$2;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method public onOutStarted(FF)V
    .locals 9

    .line 127
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$2;->val$binding:Lcom/brakefield/painter/databinding/FillToolbarBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->color:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setScaleValue(F)V

    .line 128
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, p1, p2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 129
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 130
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$2;->val$binding:Lcom/brakefield/painter/databinding/FillToolbarBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->color:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setPreviousColor(Z)V

    const/4 p1, 0x1

    .line 131
    invoke-static {p1, p2}, Lcom/brakefield/painter/PainterLib;->setEyedropper(ZI)V

    .line 132
    iget v1, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    invoke-static/range {v1 .. v8}, Lcom/brakefield/painter/PainterLib;->down(FFFFFJZ)V

    .line 133
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$2;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method
