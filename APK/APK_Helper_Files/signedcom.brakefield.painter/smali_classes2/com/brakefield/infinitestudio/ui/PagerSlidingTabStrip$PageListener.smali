.class Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$PageListener;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;


# direct methods
.method private constructor <init>(Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$PageListener;->this$0:Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$1;)V
    .locals 0

    .line 345
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$PageListener;-><init>(Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 368
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$PageListener;->this$0:Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->access$200(Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->access$300(Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;II)V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$PageListener;->this$0:Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->delegatePageListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$PageListener;->this$0:Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->delegatePageListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$PageListener;->this$0:Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;

    invoke-static {v0, p1}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->access$102(Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;I)I

    .line 352
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$PageListener;->this$0:Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;

    invoke-static {v0, p2}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->access$502(Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;F)F

    .line 354
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$PageListener;->this$0:Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->access$600(Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 355
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    .line 354
    invoke-static {v0, p1, v1}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->access$300(Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;II)V

    .line 357
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$PageListener;->this$0:Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->invalidate()V

    .line 359
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$PageListener;->this$0:Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->delegatePageListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$PageListener;->this$0:Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->delegatePageListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$PageListener;->this$0:Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->delegatePageListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$PageListener;->this$0:Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->delegatePageListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_0
    return-void
.end method
