.class Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$2;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->addTextTab(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$2;->this$0:Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;

    iput p2, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$2;->this$0:Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->access$400(Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;)Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$OnTabLongClickListener;

    move-result-object v0

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$2;->val$position:I

    invoke-interface {v0, p1, v1}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$OnTabLongClickListener;->onLongClick(Landroid/view/View;I)V

    const/4 p1, 0x1

    return p1
.end method
