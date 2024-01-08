.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/gestures/LongpressGesture$Listener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

.field public final synthetic f$1:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda32;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda32;->f$1:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;

    return-void
.end method


# virtual methods
.method public final onLongpress(Lcom/brakefield/infinitestudio/gestures/LongpressGesture;Landroid/graphics/PointF;)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda32;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda32;->f$1:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;

    invoke-virtual {v0, v1, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->lambda$setupView$3$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;Lcom/brakefield/infinitestudio/gestures/LongpressGesture;Landroid/graphics/PointF;)V

    return-void
.end method
