.class Lcom/brakefield/infinitestudio/activities/ClassroomActivity$1;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
.source "ClassroomActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/activities/ClassroomActivity;->getCollectionViewControllerDelegate()Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
        "Lcom/brakefield/infinitestudio/activities/ClassroomActivity$Lesson;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/activities/ClassroomActivity;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/activities/ClassroomActivity;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$1;->this$0:Lcom/brakefield/infinitestudio/activities/ClassroomActivity;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public addSections(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$1;->this$0:Lcom/brakefield/infinitestudio/activities/ClassroomActivity;

    invoke-virtual {v0, p1, p0}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity;->addClassroomSections(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    return-void
.end method

.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/activities/ClassroomActivity$Lesson;)V
    .locals 0

    .line 50
    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$Lesson;->open()V

    return-void
.end method

.method public bridge synthetic onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p3, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$Lesson;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$1;->onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/activities/ClassroomActivity$Lesson;)V

    return-void
.end method

.method public onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/activities/ClassroomActivity$Lesson;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p3, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$Lesson;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$1;->onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/activities/ClassroomActivity$Lesson;)Z

    move-result p1

    return p1
.end method
