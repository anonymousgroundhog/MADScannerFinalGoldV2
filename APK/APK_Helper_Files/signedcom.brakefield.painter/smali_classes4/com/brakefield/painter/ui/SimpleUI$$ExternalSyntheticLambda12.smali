.class public final synthetic Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/SimpleUI;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/SimpleUI;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda12;->f$0:Lcom/brakefield/painter/ui/SimpleUI;

    iput-boolean p2, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda12;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda12;->f$0:Lcom/brakefield/painter/ui/SimpleUI;

    iget-boolean v1, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda12;->f$1:Z

    invoke-virtual {v0, v1, p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->lambda$fullscreen$22$com-brakefield-painter-ui-SimpleUI(ZLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
