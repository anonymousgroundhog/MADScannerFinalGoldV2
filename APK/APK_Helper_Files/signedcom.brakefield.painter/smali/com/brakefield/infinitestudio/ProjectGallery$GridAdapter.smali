.class Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ProjectGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ProjectGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private downX:F

.field private downY:F

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;",
            ">;"
        }
    .end annotation
.end field

.field private longpressView:Landroid/view/View;

.field final synthetic this$0:Lcom/brakefield/infinitestudio/ProjectGallery;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/ProjectGallery;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;",
            ">;)V"
        }
    .end annotation

    .line 876
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 877
    iput-object p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->list:Ljava/util/List;

    return-void
.end method

.method static synthetic access$1900(Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;)Ljava/util/List;
    .locals 0

    .line 869
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->list:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 966
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 970
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$onBindViewHolder$0$com-brakefield-infinitestudio-ProjectGallery$GridAdapter(Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;Landroid/view/View;)V
    .locals 2

    .line 903
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$600(Lcom/brakefield/infinitestudio/ProjectGallery;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ProjectGallery;->selectOrUnselectProject(Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;)V

    goto :goto_1

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$800(Lcom/brakefield/infinitestudio/ProjectGallery;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$900(Lcom/brakefield/infinitestudio/ProjectGallery;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 912
    :cond_1
    instance-of v0, p1, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;->open()V

    goto :goto_1

    .line 913
    :cond_2
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    check-cast p1, Lcom/brakefield/infinitestudio/ProjectGallery$Project;

    invoke-virtual {v0, p2, p1, v1}, Lcom/brakefield/infinitestudio/ProjectGallery;->show(Landroid/view/View;Lcom/brakefield/infinitestudio/ProjectGallery$Project;Z)V

    goto :goto_1

    .line 906
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {p2}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$600(Lcom/brakefield/infinitestudio/ProjectGallery;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 907
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$702(Lcom/brakefield/infinitestudio/ProjectGallery;Z)Z

    .line 908
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-virtual {p2, v1}, Lcom/brakefield/infinitestudio/ProjectGallery;->edit(Z)V

    .line 909
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ProjectGallery;->selectProject(Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;)V

    :cond_4
    :goto_1
    return-void
.end method

.method synthetic lambda$onBindViewHolder$1$com-brakefield-infinitestudio-ProjectGallery$GridAdapter(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 921
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 924
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {p1, v2}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$702(Lcom/brakefield/infinitestudio/ProjectGallery;Z)Z

    .line 925
    iput-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->longpressView:Landroid/view/View;

    .line 926
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->downX:F

    .line 927
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->downY:F

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 929
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->longpressView:Landroid/view/View;

    if-ne v0, p1, :cond_2

    .line 930
    iget v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->downX:F

    iget v3, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->downY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {v0, v3, v4, p2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result p2

    const/high16 v0, 0x42480000    # 50.0f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_2

    .line 931
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$702(Lcom/brakefield/infinitestudio/ProjectGallery;Z)Z

    const-string p2, "name"

    const/4 v0, 0x0

    sget-object v0, Lcom/brakefield/painter/ui/cZ/JtBOMbAc;->QlDiQTGbWBVLJPZ:Ljava/lang/String;

    .line 932
    invoke-static {p2, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p2

    new-instance v0, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p2, v0, p1, v2}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 933
    iput-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->longpressView:Landroid/view/View;

    goto :goto_0

    .line 937
    :cond_1
    iput-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->longpressView:Landroid/view/View;

    :cond_2
    :goto_0
    return v2
.end method

.method synthetic lambda$onBindViewHolder$2$com-brakefield-infinitestudio-ProjectGallery$GridAdapter(Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;Landroid/view/View;)Z
    .locals 2

    .line 944
    iput-object p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->longpressView:Landroid/view/View;

    .line 945
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {p2}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$600(Lcom/brakefield/infinitestudio/ProjectGallery;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 946
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$702(Lcom/brakefield/infinitestudio/ProjectGallery;Z)Z

    .line 947
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-virtual {p2, v0}, Lcom/brakefield/infinitestudio/ProjectGallery;->edit(Z)V

    .line 948
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ProjectGallery;->selectProject(Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;)V

    :cond_0
    return v0
.end method

.method synthetic lambda$onBindViewHolder$3$com-brakefield-infinitestudio-ProjectGallery$GridAdapter(Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;Landroid/view/View;)Z
    .locals 2

    .line 954
    iput-object p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->longpressView:Landroid/view/View;

    .line 955
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {p2}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$600(Lcom/brakefield/infinitestudio/ProjectGallery;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 956
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$702(Lcom/brakefield/infinitestudio/ProjectGallery;Z)Z

    .line 957
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-virtual {p2, v0}, Lcom/brakefield/infinitestudio/ProjectGallery;->edit(Z)V

    .line 958
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ProjectGallery;->selectProject(Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;)V

    :cond_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 869
    check-cast p1, Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->onBindViewHolder(Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;I)V
    .locals 2

    .line 889
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    .line 891
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    .line 892
    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;->bindViewHolder(Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;)V

    .line 894
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/ProjectGallery;->previewProject:Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    if-ne p1, p2, :cond_0

    .line 895
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    iput-object v0, p1, Lcom/brakefield/infinitestudio/ProjectGallery;->oldPreviewThumb:Landroid/view/View;

    const/4 p1, 0x4

    .line 896
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 899
    :cond_0
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 901
    new-instance p1, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 919
    new-instance p1, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 943
    new-instance p1, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p2}, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 953
    new-instance p1, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, p2}, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 869
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;
    .locals 2

    .line 882
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/ProjectGallery;->activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/brakefield/infinitestudio/R$layout;->project_card:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 883
    new-instance p2, Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-direct {p2, v0, p1}, Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery;Landroid/view/View;)V

    return-object p2
.end method
