.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$Listener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

.field public final synthetic f$1:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda22;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda22;->f$1:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;

    return-void
.end method


# virtual methods
.method public final onUpdate(Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;Landroid/graphics/PointF;Landroid/graphics/PointF;Z)V
    .locals 6

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda22;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda22;->f$1:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->lambda$setupBrushCollection$8$com-brakefield-painter-ui-viewcontrollers-BrushesViewController(Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;Landroid/graphics/PointF;Landroid/graphics/PointF;Z)V

    return-void
.end method
