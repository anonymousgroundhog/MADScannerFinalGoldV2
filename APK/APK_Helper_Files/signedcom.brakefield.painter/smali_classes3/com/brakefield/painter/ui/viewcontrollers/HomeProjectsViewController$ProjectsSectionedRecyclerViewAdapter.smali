.class Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;
.super Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;
.source "HomeProjectsViewController.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;
.implements Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterDropContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProjectsSectionedRecyclerViewAdapter"
.end annotation


# instance fields
.field private saveChanges:Z

.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;-><init>()V

    const/4 p1, 0x0

    .line 253
    iput-boolean p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->saveChanges:Z

    return-void
.end method

.method static synthetic access$500(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;I)Z
    .locals 0

    .line 251
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->safeToMove(I)Z

    move-result p0

    return p0
.end method

.method private safeToMove(I)Z
    .locals 1

    .line 324
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->getSectionItemViewType(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onItemDragEnded(Ljava/lang/Object;Landroid/graphics/Rect;II)V
    .locals 0

    .line 262
    iget-boolean p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->saveChanges:Z

    if-eqz p1, :cond_0

    .line 263
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/painter/PainterProjectStore;->save()V

    :cond_0
    return-void
.end method

.method public onItemDragStarted()V
    .locals 1

    const/4 v0, 0x0

    .line 257
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->saveChanges:Z

    return-void
.end method

.method public onItemDropped(Ljava/lang/Object;I)V
    .locals 3

    .line 310
    instance-of v0, p1, Lcom/brakefield/infinitestudio/ProjectStore$Project;

    if-nez v0, :cond_0

    return-void

    .line 311
    :cond_0
    invoke-direct {p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->safeToMove(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 312
    :cond_1
    check-cast p1, Lcom/brakefield/infinitestudio/ProjectStore$Project;

    .line 313
    invoke-virtual {p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->getPositionInSection(I)I

    move-result p2

    .line 314
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/brakefield/painter/PainterProjectStore;->folderAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    const/4 v1, 0x0

    .line 315
    invoke-virtual {v0, p1, v1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->insertProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;I)V

    .line 316
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/PainterProjectStore;->removeProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;)I

    move-result p1

    .line 317
    invoke-virtual {p0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->getSection(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    move-result-object v0

    const/4 v1, 0x1

    .line 318
    invoke-virtual {p0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->getSection(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    move-result-object v2

    .line 319
    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyItemChanged(I)V

    .line 320
    invoke-virtual {p0, v2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyItemRemoved(I)V

    .line 321
    iput-boolean v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->saveChanges:Z

    return-void
.end method

.method public onItemInserted(Ljava/lang/Object;I)Z
    .locals 3

    .line 296
    instance-of v0, p1, Lcom/brakefield/infinitestudio/ProjectStore$Project;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 297
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/PainterProjectStore;->getFolders()Ljava/util/List;

    move-result-object v0

    .line 298
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 299
    :cond_1
    invoke-virtual {p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->getPositionInSection(I)I

    move-result p2

    if-gez p2, :cond_2

    goto :goto_0

    :cond_2
    move v1, p2

    .line 301
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-le v1, p2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 302
    :cond_3
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 303
    invoke-virtual {p0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->getSectionForPosition(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    move-result-object p1

    .line 304
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyItemInserted(I)V

    const/4 p1, 0x1

    .line 305
    iput-boolean p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->saveChanges:Z

    return p1
.end method

.method public onItemMoved(II)V
    .locals 3

    .line 269
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->safeToMove(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->safeToMove(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->getSectionForPosition(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    move-result-object v0

    .line 271
    invoke-virtual {p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->getSectionForPosition(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    move-result-object v1

    .line 272
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->getPositionInSection(I)I

    move-result p1

    .line 273
    invoke-virtual {p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->getPositionInSection(I)I

    move-result p2

    .line 274
    move-object v2, v0

    check-cast v2, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;

    invoke-virtual {v2, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/ProjectStore$Project;

    if-ne v0, v1, :cond_1

    .line 276
    new-instance v1, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapterListUpdateCallback;

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapterListUpdateCallback;-><init>(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;)V

    .line 277
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v0

    invoke-virtual {v0, v2, p1, p2}, Lcom/brakefield/painter/PainterProjectStore;->reorder(Lcom/brakefield/infinitestudio/ProjectStore$Project;II)V

    .line 278
    invoke-virtual {v1, p1, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapterListUpdateCallback;->onMoved(II)V

    const/4 p1, 0x1

    .line 279
    iput-boolean p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->saveChanges:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onItemRemoved(Ljava/lang/Object;)V
    .locals 1

    .line 284
    instance-of v0, p1, Lcom/brakefield/infinitestudio/ProjectStore$Project;

    if-nez v0, :cond_0

    return-void

    .line 286
    :cond_0
    instance-of v0, p1, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v0

    check-cast p1, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/PainterProjectStore;->removeFolder(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)I

    move-result p1

    goto :goto_0

    .line 287
    :cond_1
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v0

    check-cast p1, Lcom/brakefield/infinitestudio/ProjectStore$Project;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/PainterProjectStore;->removeProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;)I

    move-result p1

    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 289
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->getSectionForPosition(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    move-result-object v0

    .line 290
    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyItemRemoved(I)V

    const/4 p1, 0x1

    .line 291
    iput-boolean p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->saveChanges:Z

    :cond_2
    return-void
.end method
