.class Lcom/brakefield/infinitestudio/ui/HorizontalPager$1;
.super Ljava/lang/Object;
.source "HorizontalPager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ui/HorizontalPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/ui/HorizontalPager;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ui/HorizontalPager;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/HorizontalPager$1;->this$0:Lcom/brakefield/infinitestudio/ui/HorizontalPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 31
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 32
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 34
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/HorizontalPager$1;->this$0:Lcom/brakefield/infinitestudio/ui/HorizontalPager;

    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/ui/HorizontalPager;->getScrollX()I

    move-result p2

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 36
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/HorizontalPager$1;->this$0:Lcom/brakefield/infinitestudio/ui/HorizontalPager;

    div-int/lit8 v3, p1, 0x2

    add-int/2addr v3, p2

    div-int/2addr v3, p1

    invoke-static {v0, v3}, Lcom/brakefield/infinitestudio/ui/HorizontalPager;->access$002(Lcom/brakefield/infinitestudio/ui/HorizontalPager;I)I

    .line 37
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/HorizontalPager$1;->this$0:Lcom/brakefield/infinitestudio/ui/HorizontalPager;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/HorizontalPager;->access$000(Lcom/brakefield/infinitestudio/ui/HorizontalPager;)I

    move-result v0

    mul-int/2addr v0, p1

    .line 39
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/HorizontalPager$1;->this$0:Lcom/brakefield/infinitestudio/ui/HorizontalPager;

    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/ui/HorizontalPager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v4, v1

    move v5, v4

    :goto_1
    if-ge v4, v3, :cond_3

    .line 43
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 44
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 45
    div-int/lit8 v7, v6, 0x2

    add-int/2addr v7, v5

    if-ge p2, v7, :cond_2

    move v0, v5

    goto :goto_2

    :cond_2
    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-ge p2, v0, :cond_4

    .line 53
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/HorizontalPager$1;->this$0:Lcom/brakefield/infinitestudio/ui/HorizontalPager;

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/infinitestudio/ui/HorizontalPager;->smoothScrollTo(II)V

    return v2

    :cond_4
    return v1
.end method
