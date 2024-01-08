.class Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;
.super Ljava/lang/Object;
.source "TransformFrame.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->transform(Landroid/graphics/Matrix;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$nbl:Lcom/brakefield/infinitestudio/geometry/Point;

.field final synthetic val$nbr:Lcom/brakefield/infinitestudio/geometry/Point;

.field final synthetic val$ntl:Lcom/brakefield/infinitestudio/geometry/Point;

.field final synthetic val$ntr:Lcom/brakefield/infinitestudio/geometry/Point;

.field final synthetic val$obl:Lcom/brakefield/infinitestudio/geometry/Point;

.field final synthetic val$obr:Lcom/brakefield/infinitestudio/geometry/Point;

.field final synthetic val$otl:Lcom/brakefield/infinitestudio/geometry/Point;

.field final synthetic val$otr:Lcom/brakefield/infinitestudio/geometry/Point;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1204
    iput-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;->val$otl:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;->val$ntl:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object p3, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;->val$otr:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object p4, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;->val$ntr:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object p5, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;->val$obr:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object p6, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;->val$nbr:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object p7, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;->val$obl:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object p8, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;->val$nbl:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    .line 1209
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1211
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;->val$otl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;->val$ntl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;->val$otl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;->val$otl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;->val$ntl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;->val$otl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 1213
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;->val$otr:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;->val$ntr:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;->val$otr:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;->val$otr:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;->val$ntr:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v5, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;->val$otr:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 1215
    new-instance v2, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;->val$obr:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;->val$nbr:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v5, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;->val$obr:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;->val$obr:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v5, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;->val$nbr:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v6, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;->val$obr:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v6, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 1217
    new-instance v3, Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;->val$obl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v5, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;->val$nbl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v6, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;->val$obl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v6, v6, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;->val$obl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v5, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v6, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;->val$nbl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v6, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v7, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$12;->val$obl:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v7, v7, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, p1

    add-float/2addr v5, v6

    invoke-direct {v3, v4, v5}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 1220
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->access$100()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object p1

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput v4, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 1221
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->access$100()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object p1

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 1222
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->access$200()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object p1

    iget v0, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 1223
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->access$200()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object p1

    iget v0, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 1224
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->access$300()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object p1

    iget v0, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 1225
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->access$300()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object p1

    iget v0, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 1226
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->access$400()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object p1

    iget v0, v3, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 1227
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->access$400()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object p1

    iget v0, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 1229
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->access$500()V

    .line 1231
    sget-object p1, Lcom/brakefield/infinitestudio/Main;->handler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
