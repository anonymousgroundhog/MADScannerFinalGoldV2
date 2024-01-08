.class Lcom/brakefield/infinitestudio/ProjectGallery$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ProjectGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ProjectGallery;->show(Landroid/app/Activity;Lcom/brakefield/infinitestudio/geometry/Point;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/ProjectGallery;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ProjectGallery;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$2;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 501
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 502
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$2;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$500(Lcom/brakefield/infinitestudio/ProjectGallery;)F

    move-result p2

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$502(Lcom/brakefield/infinitestudio/ProjectGallery;F)F

    return-void
.end method
