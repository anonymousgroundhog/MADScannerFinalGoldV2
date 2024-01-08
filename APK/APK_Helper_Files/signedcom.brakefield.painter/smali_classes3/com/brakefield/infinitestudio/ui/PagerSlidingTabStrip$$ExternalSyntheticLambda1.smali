.class public final synthetic Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;

    iput p2, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$$ExternalSyntheticLambda1;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->lambda$addIconTab$0$com-brakefield-infinitestudio-ui-PagerSlidingTabStrip(ILandroid/view/View;)Z

    move-result p1

    return p1
.end method
