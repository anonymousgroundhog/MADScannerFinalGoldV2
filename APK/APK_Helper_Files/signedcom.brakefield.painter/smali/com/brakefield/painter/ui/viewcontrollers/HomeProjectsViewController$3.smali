.class Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$3;
.super Ljava/lang/Object;
.source "HomeProjectsViewController.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DropHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->setup(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/gestures/GestureLayout;Lcom/brakefield/infinitestudio/ImportIntentLaunchers;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

.field final synthetic val$adapter:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;

.field final synthetic val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$3;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$3;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$3;->val$adapter:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemDropped(Ljava/lang/Object;I)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$3;->val$adapter:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->onItemDropped(Ljava/lang/Object;I)V

    return-void
.end method

.method public shouldDrop(Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;Landroid/view/View;)Z
    .locals 3

    .line 156
    instance-of v0, p1, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectDragView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 157
    :cond_0
    instance-of p1, p1, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectFolderDragView;

    if-eqz p1, :cond_1

    return v1

    :cond_1
    if-nez p2, :cond_2

    return v1

    .line 159
    :cond_2
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$3;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    return v1

    .line 161
    :cond_3
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$3;->val$adapter:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->getSectionForPosition(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    move-result-object p2

    check-cast p2, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;

    .line 162
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$3;->val$adapter:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->getSectionItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    goto :goto_0

    .line 164
    :cond_4
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$3;->val$adapter:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->getPositionInSection(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/ProjectStore$Project;

    .line 165
    instance-of p1, p1, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    return p1

    :cond_5
    :goto_0
    return v1
.end method
