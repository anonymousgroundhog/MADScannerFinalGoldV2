.class Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$1;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->notifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$1;->this$0:Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$1;->this$0:Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 190
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$1;->this$0:Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->access$200(Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->access$102(Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;I)I

    .line 191
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$1;->this$0:Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->access$100(Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->access$300(Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;II)V

    return-void
.end method
