.class public final synthetic Lcom/brakefield/painter/ui/QuickHelp$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/QuickHelp$OverlayView;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/QuickHelp$OverlayView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/QuickHelp$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/ui/QuickHelp$OverlayView;

    return-void
.end method


# virtual methods
.method public final onDraw()V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/ui/QuickHelp$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/ui/QuickHelp$OverlayView;

    invoke-static {v0}, Lcom/brakefield/painter/ui/QuickHelp;->lambda$addOverlayView$1(Lcom/brakefield/painter/ui/QuickHelp$OverlayView;)V

    return-void
.end method
