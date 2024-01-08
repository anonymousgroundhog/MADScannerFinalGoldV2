.class Lcom/brakefield/painter/activities/ActivityHelp$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "ActivityHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/activities/ActivityHelp;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/activities/ActivityHelp;

.field final synthetic val$fragments:Ljava/util/List;

.field final synthetic val$root:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/activities/ActivityHelp;Ljava/util/List;Landroid/view/View;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityHelp$1;->this$0:Lcom/brakefield/painter/activities/ActivityHelp;

    iput-object p2, p0, Lcom/brakefield/painter/activities/ActivityHelp$1;->val$fragments:Ljava/util/List;

    iput-object p3, p0, Lcom/brakefield/painter/activities/ActivityHelp$1;->val$root:Landroid/view/View;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrolled(IFI)V
    .locals 2

    .line 73
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    .line 74
    iget-object p3, p0, Lcom/brakefield/painter/activities/ActivityHelp$1;->val$fragments:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x2

    if-ne p1, p3, :cond_0

    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityHelp$1;->val$root:Landroid/view/View;

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p3, p2

    float-to-double p2, p3

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    double-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 79
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityHelp$1;->val$fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityHelp$1;->this$0:Lcom/brakefield/painter/activities/ActivityHelp;

    invoke-virtual {p1}, Lcom/brakefield/painter/activities/ActivityHelp;->finish()V

    :cond_0
    return-void
.end method
