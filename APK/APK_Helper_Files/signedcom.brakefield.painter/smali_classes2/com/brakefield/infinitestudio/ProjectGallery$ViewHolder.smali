.class public Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ProjectGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ProjectGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public container:Landroid/view/ViewGroup;

.field public imageView:Landroid/widget/ImageView;

.field public textView:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field final synthetic this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/ProjectGallery;Landroid/view/View;)V
    .locals 0

    .line 856
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    .line 857
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 858
    iput-object p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;->view:Landroid/view/View;

    .line 859
    sget p1, Lcom/brakefield/infinitestudio/R$id;->container:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;->container:Landroid/view/ViewGroup;

    .line 860
    sget p1, Lcom/brakefield/infinitestudio/R$id;->preview:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 861
    sget p1, Lcom/brakefield/infinitestudio/R$id;->name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;->textView:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .line 865
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;->view:Landroid/view/View;

    return-object v0
.end method
