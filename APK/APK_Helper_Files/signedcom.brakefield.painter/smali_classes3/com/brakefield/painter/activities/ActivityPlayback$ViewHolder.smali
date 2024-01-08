.class Lcom/brakefield/painter/activities/ActivityPlayback$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ActivityPlayback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/activities/ActivityPlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/activities/ActivityPlayback;Landroid/view/View;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ViewHolder;->this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

    .line 211
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 212
    iput-object p2, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ViewHolder;->view:Landroid/view/View;

    const p1, 0x7f0a0459

    .line 213
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ViewHolder;->imageView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ViewHolder;->view:Landroid/view/View;

    return-object v0
.end method
