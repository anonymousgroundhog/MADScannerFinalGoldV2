.class public final synthetic Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$$ExternalSyntheticLambda5;->f$0:Lcom/brakefield/painter/ui/SimpleUI;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar$$ExternalSyntheticLambda5;->f$0:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-static {v0, p1, p2}, Lcom/brakefield/painter/ui/toolbars/ColorCurvesToolbar;->lambda$getView$5(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
