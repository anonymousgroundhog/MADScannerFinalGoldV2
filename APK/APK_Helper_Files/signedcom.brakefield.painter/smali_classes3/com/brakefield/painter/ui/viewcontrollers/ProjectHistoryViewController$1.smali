.class Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$1;
.super Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnScrollListener;
.source "ProjectHistoryViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->getView(Landroid/app/Activity;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;IIF)V
    .locals 0

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnScrollListener;->onScrolled(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;IIF)V

    .line 86
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)Lcom/brakefield/infinitestudio/ui/components/Observe;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    return-void
.end method
